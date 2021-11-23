//
//  RVSimpleButton.swift
//  button-control
//
//  Created by Антон Тимонин on 18.07.2021.
//

import UIKit

public final class RVButton: RVControl {
    
    private var storedConstraints = [NSLayoutConstraint]()
    private var containerView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.isUserInteractionEnabled = false
        
        view.layer.masksToBounds = false
        view.layer.shadowColor = #colorLiteral(red: 0.4999483824, green: 0.50003618, blue: 0.4999368191, alpha: 0.25).cgColor
        view.layer.shadowOpacity = 0.25
        view.layer.shadowOffset = CGSize(width: -1, height: 1)
        view.layer.shadowRadius = 2
        
        return view
    }()
    
    private var mainTitle: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont(name:"HelveticaNeue-Bold", size: 20.0)
        label.textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        label.textAlignment = .center
        return label
    }()
    
    private var descriptionTitle: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont(name:"HelveticaNeue-Bold", size: 14.0)
        label.textColor = #colorLiteral(red: 0.8286433816, green: 0.8227248788, blue: 0.8331763148, alpha: 1)
        label.textAlignment = .center
        return label
    }()
    
    private var hasDetail: Bool {
        get { return self.descriptionTitle.text == nil || self.descriptionTitle.text == "" ? false: true }
    }
    
    public var configuration: Configuration {
        didSet {
            configrationChanged(old: oldValue)
        }
    }
    
    public init(configuration: Configuration = .init()) {
        self.configuration = configuration
        super.init()
        self.configureUI()
        
    }
    
    required public init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    public override func layoutSubviews() {
        super.layoutSubviews()
        updateRounding()
    }
    
    private func updateRounding() {
        layer.cornerRadius = configuration.cornerRadius
        containerView.layer.cornerRadius = configuration.cornerRadius
    }
    
    private func configureUI() {
        addView()
        addTitle()
        addDescriptionTitle()
        setupLabels()
        updateRounding()
        setupConstraints()
    }
    
    private func configrationChanged(old: Configuration) {
        setupLabels()
        updateRounding()
        setupConstraints()
    }
    
    private func setupLabels() {
        mainTitle.text = configuration.title
        mainTitle.textColor = configuration.titleColor
        mainTitle.font = UIFont(
            name: mainTitle.font.fontName,
            size: configuration.titleFontSize
        )
        descriptionTitle.text = configuration.subtitle
        descriptionTitle.textColor = configuration.subtitleColor
        descriptionTitle.font = UIFont(
            name: descriptionTitle.font.fontName,
            size: configuration.subtitleFontSize
        )
    }
    
    func setupConstraints() {
        
        NSLayoutConstraint.deactivate(self.storedConstraints)
        storedConstraints.removeAll()
        
        // Container View constraints
        storedConstraints.append(contentsOf: [
            containerView.topAnchor.constraint(equalTo: self.topAnchor),
            containerView.rightAnchor.constraint(equalTo: self.rightAnchor),
            containerView.bottomAnchor.constraint(equalTo: self.bottomAnchor),
            containerView.leftAnchor.constraint(equalTo: self.leftAnchor),
        ])
        
        // Main Title constraints
        if self.hasDetail {
            storedConstraints.append(contentsOf: [
                mainTitle.centerYAnchor.constraint(equalTo: self.containerView.centerYAnchor, constant: -10),
            ])
        } else {
            storedConstraints.append(contentsOf: [
                mainTitle.centerYAnchor.constraint(equalTo: self.containerView.centerYAnchor, constant: 0),
            ])
        }
        
        storedConstraints.append(contentsOf: [
            mainTitle.rightAnchor.constraint(equalTo: self.containerView.rightAnchor, constant: -4),
            mainTitle.leftAnchor.constraint(equalTo: self.containerView.leftAnchor, constant: 4)
        ])
        
        // Description Title constraints
        storedConstraints.append(contentsOf: [
            descriptionTitle.topAnchor.constraint(equalTo: self.mainTitle.bottomAnchor, constant: 4),
            descriptionTitle.rightAnchor.constraint(equalTo: self.containerView.rightAnchor, constant: -8.0),
            descriptionTitle.leftAnchor.constraint(equalTo: self.containerView.leftAnchor, constant: 8.0)
        ])
        
        storedConstraints.append(contentsOf: [
            heightAnchor.constraint(equalToConstant: self.configuration.height)
        ])
        
        NSLayoutConstraint.activate(self.storedConstraints)
    }
    
    private func addView() {
        self.addSubview(containerView)
        self.containerView.backgroundColor = self.configuration.backgroundColor
    }
    
    private func addTitle() {
        self.addSubview(mainTitle)
    }

    private func addDescriptionTitle() {
        self.addSubview(descriptionTitle)
    }
    
    override public func handleTap() {
        self.configuration.onTap?(self)
        self.setHighlighted(isHighlighted: false, animated: true)
    }
    
    public override func setHighlighted(isHighlighted: Bool, animated: Bool) {
        super.setHighlighted(isHighlighted: isHighlighted, animated: animated)
        updateColorState(isHighlighted)
    }
    
    private func updateColorState(_ isHighlighted: Bool) {
        UIView.animate(withDuration: 0.1) {
            self.containerView.backgroundColor = isHighlighted ? self.configuration.highlitedColor: self.configuration.backgroundColor
        }
    }
}

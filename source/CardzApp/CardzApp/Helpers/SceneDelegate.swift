//
//  SceneDelegate.swift
//  CardzApp
//
//  Created by Антон Тимонин on 10.10.2021.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?

    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard let windowScene = (scene as? UIWindowScene) else { return }
        self.window = UIWindow(frame: windowScene.coordinateSpace.bounds)
        
        let todayViewController = LearnCardBuilder.build()
        if let todayIconData = UIImage.todayIcon?.pngData() {
            let image = UIImage(data: todayIconData, scale: 13.0)
            let item = UITabBarItem(title: "Daily", image: image, selectedImage: nil)
            todayViewController.tabBarItem = item
        }
        
        let learnViewController = DailyWordsBuilder.build()
        if let graduateIconData = UIImage.graduateIcon?.pngData() {
            let image = UIImage(data: graduateIconData, scale: 13.0)
            let item = UITabBarItem(title: "Learn", image: image, selectedImage: nil)
            learnViewController.tabBarItem = item
        }
        
        let favouriteViewController = AlertCardBuilder.build(data: .init(title: "Вы точно хотите сбросить прогресс?", secondTitle: "Сброс прогресса приведет к полной очистке статистики выученных слов"))
        if let favouriteIconData = UIImage.starIcon?.pngData() {
            let image = UIImage(data: favouriteIconData, scale: 13.5)
            let item = UITabBarItem(title: "Favourite", image: image, selectedImage: nil)
            favouriteViewController.tabBarItem = item
        }
        
        let tabBar = UITabBarController()
        tabBar.setViewControllers([todayViewController, learnViewController, favouriteViewController], animated: true)
        tabBar.selectedViewController = todayViewController
        tabBar.selectedIndex = 2
        tabBar.tabBar.isHidden = false
        tabBar.tabBar.isTranslucent = true
        
        UITabBar.appearance().tintColor = .mysteryShack
        UITabBar.appearance().unselectedItemTintColor = .gendalfGray
        
        let bounds = tabBar.tabBar.bounds as CGRect
        let visualEffectView = UIVisualEffectView(effect: UIBlurEffect(style: .light))
        visualEffectView.frame = bounds
        visualEffectView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        tabBar.tabBar.insertSubview(visualEffectView, at: 0)
        
        self.window?.windowScene = windowScene
        self.window?.rootViewController = tabBar
        self.window?.makeKeyAndVisible()
    }

    func sceneDidDisconnect(_ scene: UIScene) {}

    func sceneDidBecomeActive(_ scene: UIScene) {}

    func sceneWillResignActive(_ scene: UIScene) {}

    func sceneWillEnterForeground(_ scene: UIScene) {}

    func sceneDidEnterBackground(_ scene: UIScene) {
        (UIApplication.shared.delegate as? AppDelegate)?.saveContext()
    }

}

//
//        **  ~~~~~~~~~~~~~~~  **
//        **  ---------------  **
//        **  ---------------  **
//        **  ---------------  **
//         **  -------------  **
//          **  -----------  **
//           **  ---------  **
//            ***************
//             *************
//                  ***
//                  ***
//              ***********
//             *************
//
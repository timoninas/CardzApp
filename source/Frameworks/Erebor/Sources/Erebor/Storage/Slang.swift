//
//  Slang.swift
//  
//
//  Created by Антон Тимонин on 23.12.2021.
//

import Foundation

func getGoldSlang() -> BagOfGoldWords {
    var ereborGoldWords: [EreborGoldWord] = []
    
    ereborGoldWords.append(contentsOf: [
        .init(
            word: "Airhead",
            transcription: "",
            examples: [],
            translations: ["Stupid person"]
        ),
        .init(
            word: "Ace",
            transcription: "",
            examples: [],
            translations: ["Excellent", "Great"]
        ),
        .init(
            word: "Adam and Eve",
            transcription: "",
            examples: [],
            translations: ["Rhyming Slang for 'believe'"]
        ),
        .init(
            word: "Aggro",
            transcription: "",
            examples: [],
            translations: ["Short for aggravation or violence"]
        ),
        .init(
            word: "Amber fluid",
            transcription: "",
            examples: [],
            translations: ["Beer"]
        ),
        .init(
            word: "Anorak",
            transcription: "",
            examples: [],
            translations: ["Geek", "Nerd"]
        ),
        .init(
            word: "Apples and pears",
            transcription: "",
            examples: [],
            translations: ["Rhyming Slang for 'stairs'"]
        ),
        .init(
            word: "Armpit",
            transcription: "",
            examples: [],
            translations: ["Dirty", "Unappealing place"]
        ),
        .init(
            word: "Arse / Ass",
            transcription: "",
            examples: [],
            translations: ["Backside"]
        ),
        .init(
            word: "Arseholed",
            transcription: "",
            examples: [],
            translations: ["Very drunk"]
        ),
        .init(
            word: "Arvo",
            transcription: "",
            examples: [],
            translations: ["Afternoon"]
        ),
        .init(
            word: "Aussie",
            transcription: "",
            examples: [],
            translations: ["Australian"]
        ),
        .init(
            word: "Awesome",
            transcription: "",
            examples: [],
            translations: ["Great and impressive"]
        ),
        .init(
            word: "Banged up",
            transcription: "",
            examples: [],
            translations: ["To be put in prison"]
        ),
        .init(
            word: "Barbie",
            transcription: "",
            examples: [],
            translations: ["Barbecue", "Grill"]
        ),
    ])
    
    let bagOfGold = BagOfGoldWords(words: ereborGoldWords, typeWord: .architecture, typeTranslation: .enToRu)
    return bagOfGold
}

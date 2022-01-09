//
//  Job.swift
//  
//
//  Created by Антон Тимонин on 23.12.2021.
//

import Foundation

func getGoldJob() -> BagOfGoldWords {
    var ereborGoldWords: [EreborGoldWord] = []
    
    ereborGoldWords.append(contentsOf: [
        .init(
            word: "Case",
            transcription: "[keɪs]",
            examples: [],
            translations: ["Дело"]
        ),
        .init(
            word: "Company",
            transcription: "[ˈkʌmpəni]",
            examples: [
                "Many covert glances came our way and only Edwina, who sat with us, seemed at ease in our company",
                "Six months ago Romano got in touch with your mother and said he wanted to buy the company",
                "Between you and me there's going to be a big new gas company in the field"
            ],
            translations: ["Компания"]
        ),
        .init(
            word: "Work",
            transcription: "[wɜːk]",
            examples: [],
            translations: ["Работа"]
        ),
        .init(
            word: "Money",
            transcription: "[ˈmʌni]",
            examples: [
                "Mrs. Elsing hated to take his money--\"speculator money\"--but the Association needed money badly",
                "I've got no ambition at all. The only thing I want to do after the war is marry some girl who's got more money than I have and shack up with lots more pretty girls",
                "We want you badly and we think that this amount of money expresses that desire"
            ],
            translations: ["Деньги"]
        ),
        .init(
            word: "Job",
            transcription: "[ʤɒb]",
            examples: [],
            translations: ["Работа"]
        ),
        .init(
            word: "Service",
            transcription: "[ˈsɜːvɪs]",
            examples: [
                "A service truck, Inspector",
                "- At least long enough for me to get it to the nearest service station",
                "She never could understand why I could not steal phone service as easily as we liberated power",
            ],
            translations: ["Услуга", "Обслуживание"]
        ),
        .init(
            word: "Office",
            transcription: "[ˈɒfɪs]",
            examples: [
                "The entire area was dark except for an office on the far side of the lab, where a light shone under the door",
                "In the outer office, the three girls were preparing to leave",
                "I understand that the United States Patent Office has granted a patent on this?"
            ],
            translations: ["Офис"]
        ),
        .init(
            word: "Policy",
            transcription: "[ˈpɒlɪsi]",
            examples: [
                "That doesn't mean we have to abandon good policy",
                "\"Only an insurance policy will make your life completely worry-free,\" replied Ostap without slowing down",
                "China has received more United Nations Awards for it's policies - and form of governance than any other nation"
            ],
            translations: ["Политика"]
        ),
        .init(
            word: "Plan",
            transcription: "[plæn]",
            examples: [
                "The Delta Force's plan to stage an accident by arranging four dead bodies on the ice shelf was no longer a viable option",
                "We're all staying on your plan",
                "Who were they to interfere with God's master plan?"
            ],
            translations: ["План"]
        ),
        .init(
            word: "Control",
            transcription: "[kənˈtrəʊl]",
            examples: [
                "He was almost to the control panel",
                "- They wanna kick her out to get out of rent control, and now that we've missed the deadline, there's nothing we can do about it",
                "She must have escaped from under control, Nikon Semyonitch went on, dropping his voice, and glancing significantly at Varvara Petrovna"
            ],
            translations: ["Контроль"]
        ),
        .init(
            word: "Report",
            transcription: "[rɪˈpɔːt]",
            examples: [
                "We just issued our annual report for the meat-packing company, fellas. Our profits are up forty percent",
                "Mr. Garrett, you must turn in a full report, mustn't you?",
                "Glick groaned. He could hear the news anchor already. \"Thanks Gunther, great report\""
            ],
            translations: ["Отчет", "Доклад"]
        ),
        .init(
            word: "Site",
            transcription: "[saɪt]",
            examples: [
                "The site for your book",
                "Hodgins found bronze particulates at the site",
                "Probably why the device was stored off- site for safe-keeping"
            ],
            translations: ["Объект"]
        ),
        .init(
            word: "Performance",
            transcription: "[pəˈfɔːməns]",
            examples: [
                "I told him I thought it had been a very nicely managed and gentlemanly performance",
                "I'm saying their performance is identical",
                "And I prefer my boyfriend at peak performance"
            ],
            translations: ["Производительность"]
        ),
        .init(
            word: "Effort",
            transcription: "[ˈefət]",
            examples: [
                "Cleon looked up and, with an obvious effort, managed to smile",
                "Now if you strive and make a great effort, some day you'll rise to the level of that play!",
                "Then, the body would make a final effort to conserve its remaining heat by shutting down all operations except the heart and respiration"
            ],
            translations: ["Усилие", "Труд"]
        ),
        .init(
            word: "Action",
            transcription: "[ækʃn]",
            examples: [
                "He watched as she left. The minute she was gone, George went into action",
                "And \"force\" is action of one body on another applied by means of energy",
                "He did not see the time was not ripe for vigorous action"
            ],
            translations: ["Действие"]
        ),
        .init(
            word: "Activity",
            transcription: "[ækˈtɪvɪtɪ]",
            examples: [
                "The fifth monster was taking no part in this activity",
                "Yeah, a bunch of strange activity from the company's server caught the attention of the S.E.C.",
                "It's a laborious activity because I have to imagine what you need, whereas you know what you need"
            ],
            translations: ["Деятельность"]
        ),
        .init(
            word: "Practice",
            transcription: "[ˈpræktɪs]",
            examples: [
                "- And practice, practice, practice",
                "I was doing well enough but was young and had had practice in how to visit Terra and stay alive",
                "Not some farming practice that's hidden away in the sonnets?"
            ],
            translations: ["Практика", "Деятельность"]
        ),
        .init(
            word: "Skill",
            transcription: "[skɪl]",
            examples: [
                "This was the least difficult job of all and the one classically requiring no skill",
                "Your feeble skills are no match for the power of the dark side",
                "Philip felt a little inclined to pat himself on the back for his skill in managing the business"
            ],
            translations: ["Умение", "Навык"]
        ),
        .init(
            word: "Order",
            transcription: "[ˈɔːdə]",
            examples: [
                "BY ORDER OF THE MINISTRY OF MAGIC",
                "You don't have to use the Ionic order, use the Doric",
                "I believe I already gave you that order"
            ],
            translations: ["Порядок", "Приказ", "Заказ"]
        ),
        .init(
            word: "Meeting",
            transcription: "[ˈmiːtɪŋ]",
            examples: [
                "I imagine the press will be meeting you both at Southampton. Are you Miss Whitney's manager?",
                "That afternoon she canceled a board meeting and went home early",
                "This is a closed meeting"
            ],
            translations: ["Встреча"]
        ),
        .init(
            word: "Operation",
            transcription: "[ɒpəˈreɪʃn]",
            examples: [
                "The operation had taken nine hours",
                "We walked in on their operation",
                "I understood, but in its 200 years of operation, no one has successfully escaped from...",
            ],
            translations: ["Операция"]
        ),
        .init(
            word: "Interview",
            transcription: "[ˈɪntəvjuː]",
            examples: [
                "I got the interview!",
                "And you want to know whether I had a satisfactory interview with him!",
                "I've decided that I will help interview Geoff Hastings"
            ],
            translations: ["Интервью", "Собеседование"]
        ),
        .init(
            word: "Quality",
            transcription: "[ˈkwɒlɪtɪ]",
            examples: ["The food is of high (low) quality", "These wayside places have a reputation for low quality", "Like, they got a great quality of life, good restaurants"],
            translations: ["Качество"]
        ),
        .init(
            word: "Success",
            transcription: "[səkˈses]",
            examples: ["Success stories motivate people", "What a splendid notion! he said. Are you celebrating a success?", "I must match my mother's hard work, dedication, and success"],
            translations: ["Успех"]
        ),
        .init(
            word: "Task",
            transcription: " [tɑːsk]",
            examples: ["Here is your task for today", "Slowing Remy down had become Sophie's task", "I can work it out, it's like a task, I'm your apprentice, just watch me..."],
            translations: ["Задача"]
        ),
        .init(
            word: "Break",
            transcription: "[breɪk]",
            examples: ["Shall we take a break?",
                       "The important thing is to be careful not to break that spirit",
                       "Who knows when the hammer might slip and break a nose?"],
            translations: ["Перерыв"]
        ),
        .init(
            word: "Mission",
            transcription: "[mɪʃn]",
            examples: ["His mission is top secret and extremely dangerous", "The Delta team jokingly referred to that mission as \"insertion behind enemy lines\""],
            translations: ["Миссия"]
        ),
        .init(
            word: "Labor",
            transcription: "",
            examples: [
                "manual labor",
                "The company used child labor"
            ],
            translations: ["Труд"]
        ),
        .init(
            word: "Weekend",
            transcription: "[ˈwiːkˈɛnd]",
            examples: [
                "You'd still be covering the weekend arts bulletin if I hadn't given you your break",
                "To everyone’s delight except Harry’s, there was to be another Hogsmeade trip on the very last weekend of the term",
                "How dare the servants take the weekend off, Tracy thought indignantly. They should all be discharged"
            ],
            translations: ["Уикэнд", "Выходные"]
        ),
        .init(
            word: "Attempt",
            transcription: "[əˈtɛmpt]",
            examples: [
                "He wondered if her current slumber was just a deception, a pathetic attempt to avoid further service to him",
                "Can't you just be a normal boyfriend and support me as I attempt to have a normal college experience?",
                "\"If it was an attempt at free publicity - well, what atrocious taste!\""
            ],
            translations: ["Попытка"]
        ),
        .init(
            word: "Day off",
            transcription: "[deɪ ɒf]",
            examples: [
                "- where he just... when he was taking the day off?",
                "half day off",
                "As a matter of fact, I thought I was entitled to a day off after the good news!"
            ],
            translations: ["Выходной день"]
        ),
        .init(
            word: "Lack (of something)",
            transcription: "[læk]",
            examples: [
                "Most unsettling, however, was the apparent lack of a floor",
                "Again, they would swim upward, this time reaching the surface inside the habisphere, where they would eventually die for lack of saltwater",
                "This was the one area where Faraday's childhood poverty and lack of formal education actually held him back"
            ],
            translations: ["Нехватка"]
        ),
    ])
    
    let bagOfGold = BagOfGoldWords(words: ereborGoldWords, typeWord: .job, typeTranslation: .enToRu)
    return bagOfGold
}

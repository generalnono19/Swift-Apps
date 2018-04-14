//
//  QuestionsBank.swift
//  Quiz-Game
//
//  Created by Nourallah on 09.04.18.
//  Copyright © 2018 Nourallah. All rights reserved.
//

import Foundation

class QuestionOfBank {
    
    var list = [Question]()
    
    init() {
        list.append(Question(text: "Github is usefull", correctAnswer: true))
        
        list.append(Question(text: "Each year World Red Cross and Red Crescent Day is celebrated in May 8.", correctAnswer: true))
        
        list.append(Question(text: "The total surface area of two human lungs is approximately 70 square metres.", correctAnswer: true))
        
        list.append(Question(text: "Germany signed the Armisitice Treaty on November 11, 1918 and World War I ended.", correctAnswer: true))
        
        list.append(Question(text: "During World War II, Germany attack France in 1940.", correctAnswer: true))
        
        list.append(Question(text: "It is illegal to pee in the Ocean in Portugal.", correctAnswer: true))
        
        list.append(Question(text: "Austria flag has four Colors.", correctAnswer: false))
        
        list.append(Question(text: "Google was originally called Backrub", correctAnswer: true))
        
        list.append(Question(text: "Buzz Aldrin's mother's maiden name was Moon", correctAnswer: true))
        
        list.append(Question(text: "The loudest sound produced by any animal is 188 decibels. That animal is the African Elephant", correctAnswer: false))
        
        list.append(Question(text: "Miroslav Klose scored 16 goals and he is top goalscorer in the history FIFA World Cup", correctAnswer: true))
        
        list.append(Question(text: "Chocolate affects a dog's heart and nervous system; a few ounces are enough to kill a small dog.", correctAnswer: true))
        
        list.append(Question(text: "Brazil won World Cup 2002", correctAnswer: true))
        
        list.append(Question(text: "USA have 77 States", correctAnswer: false))
        
        list.append(Question(text: "Bigest Desert in the world is Arabian Desert", correctAnswer: true))

        
    }
}

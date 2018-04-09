//
//  Question.swift
//  Quiz-Game
//
//  Created by Nourallah on 09.04.18.
//  Copyright © 2018 Nourallah. All rights reserved.
//

import Foundation


class Question {
    
    let questionText: String
    let answer: Bool
    
    init(text: String, correctAnswer: Bool) {
        questionText = text
        answer = correctAnswer
    }
}

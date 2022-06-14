//
//  Question.swift
//  Quizzler-iOS13
//
//  Created by 米谷裕輝 on 2022/06/14.
//  Copyright © 2022 The App Brewery. All rights reserved.
//

struct Question{
    var text: String
    var answers: [String]
    var correctAnswer:String
    
    init(q: String, a: [String], correctAnswer: String){
        text = q
        answers = a
        self.correctAnswer = correctAnswer
    }
}

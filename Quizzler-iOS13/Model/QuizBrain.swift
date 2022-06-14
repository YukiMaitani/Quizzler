//
//  QuizBrain.swift
//  Quizzler-iOS13
//
//  Created by 米谷裕輝 on 2022/06/14.
//  Copyright © 2022 The App Brewery. All rights reserved.
//

struct QuizBrain{
    let quiz = [ Question(q: "Which is the largest organ in the human body?", a: ["Heart", "Skin", "Large Intestine"], correctAnswer: "Skin"),
                 Question(q: "Five dollars is worth how many nickels?", a: ["25", "50", "100"], correctAnswer: "100"),
                 Question(q: "What do the letters in the GMT time zone stand for?", a: ["Global Meridian Time", "Greenwich Mean Time", "General Median Time"], correctAnswer: "Greenwich Mean Time"),
                 Question(q: "What is the French word for 'hat'?", a: ["Chapeau", "Écharpe", "Bonnet"], correctAnswer: "Chapeau"),
                 Question(q: "In past times, what would a gentleman keep in his fob pocket?", a: ["Notebook", "Handkerchief", "Watch"], correctAnswer: "Watch"),
                 Question(q: "How would one say goodbye in Spanish?", a: ["Au Revoir", "Adiós", "Salir"], correctAnswer: "Adiós"),
                 Question(q: "Which of these colours is NOT featured in the logo for Google?", a: ["Green", "Orange", "Blue"], correctAnswer: "Orange"),
                 Question(q: "What alcoholic drink is made from molasses?", a: ["Rum", "Whisky", "Gin"], correctAnswer: "Rum"),
                 Question(q: "What type of animal was Harambe?", a: ["Panda", "Gorilla", "Crocodile"], correctAnswer: "Gorilla"),
                 Question(q: "Where is Tasmania located?", a: ["Indonesia", "Australia", "Scotland"], correctAnswer: "Australia")

    ]
    
    var quizNumber = 0
    var userScore = 0
    
    mutating func checkAnswer(_ userAnswer: String) -> Bool {
        if userAnswer == quiz[quizNumber].correctAnswer{
            userScore += 1
            return true
        }else{
            return false
        }
    }
    
    func getQuestionText() -> String {
        return quiz[quizNumber].text
    }
    
    func getAnsewrsText() -> [String]{
        return quiz[quizNumber].answers
    }
    
    func getProgress() -> Float {
        let progress = Float(quizNumber) / Float(quiz.count)
        return progress
    }
    
    mutating func nextQuestion(){
        if quizNumber + 1 < quiz.count{
            quizNumber += 1
        }else{
            quizNumber = 0
            userScore = 0
        }
    }
    
    mutating func getScore() -> Int{
        return userScore
    }
}

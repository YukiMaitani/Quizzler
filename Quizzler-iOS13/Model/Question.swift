//
//  Question.swift
//  Quizzler-iOS13
//
//  Created by 米谷裕輝 on 2022/06/14.
//  Copyright © 2022 The App Brewery. All rights reserved.
//

struct Question{
    var text: String
    var answer: String
    
    init(q: String, a: String){
        text = q
        answer = a
    }
}

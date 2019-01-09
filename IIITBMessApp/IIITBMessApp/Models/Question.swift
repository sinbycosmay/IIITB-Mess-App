//
//  Question.swift
//  IIITBMessApp
//
//  Created by Tanmay Arora on 03/01/19.
//  Copyright © 2019 Tanmay Arora. All rights reserved.
//

import Foundation
import UIKit
import CoreData

class Question{
    let question: String
    let OptionA: String
    let OptionB: String
    let OptionC: String
    let OptionD: String
    let OptionE: String
    let OptionF: String
    let correctanswerA: Int //correct==chosen here
    let correctanswerB: Int //correct==chosen here
    let correctanswerC: Int //correct==chosen here
    let correctanswerD: Int //correct==chosen here
    let correctanswerE: Int //correct==chosen here
    let correctanswerF: Int //correct==chosen here

    
    init(questionText: String,choiceA: String,choiceB: String,choiceC: String,choiceD: String,choiceE: String,choiceF: String,answer_0: Int,answer_1: Int,answer_2: Int,answer_3: Int,answer_4: Int,answer_5: Int){
    question = questionText
    OptionA = choiceA
    OptionB = choiceB
    OptionC = choiceC
    OptionD = choiceD
    OptionE = choiceE
    OptionF = choiceF
    correctanswerA = answer_0
    correctanswerB = answer_1
    correctanswerC = answer_2
    correctanswerD = answer_3
    correctanswerE = answer_4
    correctanswerF = answer_5
    }

}

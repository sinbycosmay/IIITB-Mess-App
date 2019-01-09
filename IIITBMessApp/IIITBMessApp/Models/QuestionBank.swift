//
//  QuestionBank.swift
//  IIITBMessApp
//
//  Created by Tanmay Arora on 03/01/19.
//  Copyright © 2019 Tanmay Arora. All rights reserved.
//

import Foundation
import UIKit
import CoreData

class QuestionBank{
    var list = [Question]()
    
    init(){
        list.append(Question(questionText: "Breakfast", choiceA: "0", choiceB: "1", choiceC: "2", choiceD: "3", choiceE: "4", choiceF: "5", answer_0: 1, answer_1: 2, answer_2: 3, answer_3: 4, answer_4: 5, answer_5: 6))

        list.append(Question(questionText: "Lunch", choiceA: "0", choiceB: "1", choiceC: "2", choiceD: "3", choiceE: "4", choiceF: "5", answer_0: 1, answer_1: 2, answer_2: 3, answer_3: 4, answer_4: 5, answer_5: 6))
        
        list.append(Question(questionText: "Dinner", choiceA: "0", choiceB: "1", choiceC: "2", choiceD: "3", choiceE: "4", choiceF: "5", answer_0: 1, answer_1: 2, answer_2: 3, answer_3: 4, answer_4: 5, answer_5: 6))
        

        
    }
}

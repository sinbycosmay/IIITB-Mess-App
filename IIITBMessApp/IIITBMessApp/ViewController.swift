//
//  ViewController.swift
//  IIITBMessApp
//
//  Created by Tanmay Arora on 01/01/19.
//  Copyright © 2019 Tanmay Arora. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var zero: UIButton!
    @IBOutlet weak var one: UIButton!
    @IBOutlet weak var two: UIButton!
    @IBOutlet weak var three: UIButton!
    @IBOutlet weak var four: UIButton!
    @IBOutlet weak var five: UIButton!
    
    let allQuestions = QuestionBank()
    var questionNumber: Int = 0
    var selectedanswer0: Int = 0
    var selectedanswer1: Int = 1
    var selectedanswer2: Int = 2
    var selectedanswer3: Int = 3
    var selectedanswer4: Int = 4
    var selectedanswer5: Int = 5
    var BreakfastRating: Int = 0
    var LunchRating: Int = 0
    var DinnerRating: Int = 0
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    



    @IBAction func answerPressed(_ sender: UIButton) {
        var blist = [BreakfastRating]
        
        if questionLabel.text=="Breakfast"{
            print("Breakfast Rating is")
    
            if zero.isTouchInside{
                BreakfastRating+=0
                print(BreakfastRating)
                blist.append(BreakfastRating)
                print(blist)
            }
            else if one.isTouchInside{
                BreakfastRating+=1
                print(BreakfastRating)
                blist.append(BreakfastRating)
                print(blist)
            }
            else if two.isTouchInside{
                BreakfastRating+=2
                print(BreakfastRating)
                blist.append(BreakfastRating)
                print(blist)
            }
            else if three.isTouchInside{
                BreakfastRating+=3
                print(BreakfastRating)
                blist.append(BreakfastRating)
                print(blist)
            }
            else if four.isTouchInside{
                BreakfastRating+=4
                print(BreakfastRating)
                blist.append(BreakfastRating)
                print(blist)
            }
            else if five.isTouchInside{
                BreakfastRating+=5
                print(BreakfastRating)
                blist.append(BreakfastRating)
                print(blist)
            }
            
        }
        else if questionLabel.text=="Lunch"{
            print("lunch Rating is")
            
            if zero.isTouchInside{
                LunchRating+=0
                print(LunchRating)
            }
            else if one.isTouchInside{
                LunchRating+=1
                print(LunchRating)
            }
            else if two.isTouchInside{
                LunchRating+=2
                print(LunchRating)
            }
            else if three.isTouchInside{
                LunchRating+=3
                print(LunchRating)
            }
            else if four.isTouchInside{
                LunchRating+=4
                print(LunchRating)
            }
            else if five.isTouchInside{
                LunchRating+=5
                print(LunchRating)
            }
            else{
                print("Rating failed")
                print(sender.tag)
            }
            
        }
        else if questionLabel.text=="Dinner"{
            print("Dinner Rating is")
            
            if zero.isTouchInside{
                DinnerRating+=0
                print(DinnerRating)
            }
            else if one.isSelected{
                DinnerRating+=1
                print(DinnerRating)
            }
            else if two.isTouchInside{
                DinnerRating+=2
                print(DinnerRating)
            }
            else if three.isTouchInside{
                DinnerRating+=3
                print(DinnerRating)
            }
            else if four.isTouchInside{
                DinnerRating+=4
                print(DinnerRating)
            }
            else if five.isTouchInside{
                DinnerRating+=5
                print(DinnerRating)
            }
            else{
                print("Rating failed")
                print(sender.tag)
            }
            
        }
        questionNumber+=1
        updateQuestion()
        
    }
    
    

func updateQuestion(){
    
    if questionNumber < allQuestions.list.count{
        questionLabel.text=allQuestions.list[questionNumber].question
        zero.setTitle(allQuestions.list[questionNumber].OptionA,for: UIControl.State.normal)
        one.setTitle(allQuestions.list[questionNumber].OptionB,for: UIControl.State.normal)
        two.setTitle(allQuestions.list[questionNumber].OptionC,for: UIControl.State.normal)
        three.setTitle(allQuestions.list[questionNumber].OptionD,for: UIControl.State.normal)
        four.setTitle(allQuestions.list[questionNumber].OptionE,for: UIControl.State.normal)
        five.setTitle(allQuestions.list[questionNumber].OptionF,for: UIControl.State.normal)
        selectedanswer0 = allQuestions.list[questionNumber].correctanswerA
        selectedanswer1 = allQuestions.list[questionNumber].correctanswerB
        selectedanswer2 = allQuestions.list[questionNumber].correctanswerC
        selectedanswer3 = allQuestions.list[questionNumber].correctanswerD
        selectedanswer4 = allQuestions.list[questionNumber].correctanswerE
        selectedanswer5 = allQuestions.list[questionNumber].correctanswerF
        
        
    }
    else{
        let alert = UIAlertController(title: "Thank you", message: "End of feedback", preferredStyle: .alert)
        let restartAction = UIAlertAction(title: "Rate Again", style: .default, handler: {action in self.restartQuiz()})
        alert.addAction(restartAction)
        present(alert,animated: true, completion: nil)
    }
}

func updateUI(){
    
}

func restartQuiz(){
    BreakfastRating=0
    LunchRating=0
    DinnerRating=0
    questionNumber=0
    updateQuestion()
}


    
}

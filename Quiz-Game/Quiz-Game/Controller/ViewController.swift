//
//  ViewController.swift
//  Quiz-Game
//
//  Created by Nourallah on 09.04.18.
//  Copyright © 2018 Nourallah. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let allQuestions = QuestionOfBank()
    var pickedAnswer: Bool = false
    var questionNumber: Int = 0
    var score: Int = 0
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var progressLabel: UILabel!
    @IBOutlet weak var progressBar: UIView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        nextQuestion()
        
       
    }
    
    @IBAction func answerPressed(_ sender: UIButton) {
        if sender.tag == 1 {
            pickedAnswer = true
        } else if sender.tag == 2 {
            pickedAnswer = false
        }
        checkAnswer()
        
        questionNumber = questionNumber + 1
        nextQuestion()
    }
    
    func updateUI() {
        scoreLabel.text = "Score: \(score)"
        progressLabel.text = "\(questionNumber + 1) / 15"
        progressBar.frame.size.width = (view.frame.size.width / 15) * CGFloat(questionNumber + 1)
    }
    
    func nextQuestion () {
        if questionNumber <= 14 {
            questionLabel.text = allQuestions.list[questionNumber].questionText
            
            updateUI()
            
        }else {
            let alert = UIAlertController(title: "Perfect", message: "You finished all Questions, Do you want play again ?", preferredStyle: .alert)
            
            let restartAction = UIAlertAction(title: "Restart", style: .default, handler: { (UIAlertAction)in self.startOver() })
            
            alert.addAction(restartAction)
            present(alert, animated: true, completion: nil)
        }
    }
    
    func checkAnswer() {
        
        let correctAnwser = allQuestions.list[questionNumber].answer
        
        if correctAnwser == pickedAnswer {
            ProgressHUD.showSuccess("Correct")
            score = score + 1
            
        } else {
            ProgressHUD.showError("Wrong")
        }
    }
    
    func startOver() {
        score = 0
        questionNumber = 0
        nextQuestion()
    }

}


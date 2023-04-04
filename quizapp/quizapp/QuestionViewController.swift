//
//  QuestionViewController.swift
//  quizapp
//
//  Created by Canadore Student on 2023-03-29.
//

import UIKit

class QuestionViewController: UIViewController {
    

    @IBOutlet var multipleStackView: UIStackView!
    
    
    @IBOutlet var singleStackView: UIStackView!
    
    @IBOutlet var rangedStackView: UIStackView!
    var question: [Question] = [
        Question(text: "Which food do you like the most?", type: .single, answers: [
            Answer(text: "Steak", type: .dog),
            Answer(text: "Grains", type: .fish),
            Answer(text: "Carrots", type: .rabbit),
            Answer(text: "Corn", type: .turtle)
        ]),
        Question(text: "Which activities do you enjoy?", type: .multiple, answers: [
            Answer(text: "Swimming", type: .turtle),
            Answer(text: "Sleeping", type: .fish),
            Answer(text: "Cuddling", type: .rabbit),
            Answer(text: "Eating", type: .dog)
        ]),
        Question(text: "How much do you like car rides?", type: .ranged, answers: [
            Answer(text: "I dislike them", type: .fish),
            Answer(text: "I get a little nervous", type: .rabbit),
            Answer(text: "I barely notice them ", type: .turtle),
            Answer(text: "I love them", type: .dog)
        
        
        ])
    ]
    
    var questionIndex = 0

    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    func updateUI() {
        singleStackView.isHidden = true
        multipleStackView.isHidden = true
        rangedStackView.isHidden = true
        
        navigationItem.title = "Question #\(questionIndex + 1)"
        
        let currentQuestion = question[questionIndex]
        
        switch currentQuestion.type {
        case .single:
            singleStackView.isHidden = false
        case .multiple:
            multipleStackView.isHidden = false
        case .ranged:
            rangedStackView.isHidden = false
            
        }
        
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

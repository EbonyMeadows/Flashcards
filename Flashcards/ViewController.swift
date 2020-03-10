//
//  ViewController.swift
//  Flashcards
//
//  Created by Ebony Meadows on 2/15/20.
//  Copyright © 2020 Ebony Meadows. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let navigationController = segue.destination as! UINavigationController
        
        let creationController = navigationController.topViewController as! CreationViewController
        creationController.flashcardsViewController  = self
    }

    @IBOutlet weak var answerLable: UILabel!
    
    @IBOutlet weak var frontLabel: UILabel!
    
    @IBOutlet var card: UIView!
    
    override func viewDidLoad() {
        frontLabel.layer.cornerRadius = 20.0
        frontLabel.clipsToBounds = true
        answerLable.layer.cornerRadius = 20.0
        answerLable.clipsToBounds = true
        card.layer.cornerRadius = 20.0
        card.clipsToBounds = true
        card.layer.shadowRadius = 15.0
        card.layer.shadowOpacity = 0.2
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func didTapOnFlashcard(_ sender: Any) {
        print("Hello")
        if frontLabel.isHidden == true {
            frontLabel.isHidden = false
        } else {
            frontLabel.isHidden = true
        }
    }
    
    func updateFlashcard(question: String, answer: String) {
        frontLabel.text = question
        answerLable.text = answer
    }
    
}


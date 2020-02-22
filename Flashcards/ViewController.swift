//
//  ViewController.swift
//  Flashcards
//
//  Created by Ebony Meadows on 2/15/20.
//  Copyright © 2020 Ebony Meadows. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var answerLable: UILabel!
    
    @IBOutlet weak var frontLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func didTapOnFlashcard(_ sender: Any) {
        print("Hello")
        frontLabel.isHidden = true

        
    }
    
}


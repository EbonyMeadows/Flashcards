//
//  CreationViewController.swift
//  Flashcards
//
//  Created by Ebony Meadows on 3/8/20.
//  Copyright © 2020 Ebony Meadows. All rights reserved.
//

import UIKit

class CreationViewController: UIViewController {
    
    var flashcardsViewController: ViewController!
    
    @IBAction func didTapOnCancel(_ sender: Any) {
        dismiss(animated: true)
    }
    
    @IBAction func didTapOnDone(_ sender: Any) {
        
        let questionText = questionLabel.text
        
        let answerText = answerLabel.text
        
        flashcardsViewController.updateFlashcard(question: questionText!, answer: answerText!)
        
        dismiss(animated: true)
    }
    
    @IBOutlet weak var questionLabel: UITextField!
    
    @IBOutlet weak var answerLabel: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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

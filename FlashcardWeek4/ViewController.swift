//
//  ViewController.swift
//  FlashcardWeek4
//
//  Created by Justin Galang on 3/1/20.
//  Copyright © 2020 Justin Galang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var card: UIView!
    @IBOutlet weak var backLabel: UILabel!
    @IBOutlet weak var frontLabel: UILabel!
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //card
        card.layer.cornerRadius = 20.0
        card.layer.shadowRadius = 15
        card.layer.shadowOpacity = 0.35

        //labels
        frontLabel.layer.cornerRadius = 20.0
        backLabel.layer.cornerRadius = 20.0
        frontLabel.clipsToBounds = true
        backLabel.clipsToBounds = true
 
    }
    
    @IBAction func didTapOnFlashcard(_ sender: Any) {
        if (frontLabel.isHidden == true){
            frontLabel.isHidden = false
        } else {
            frontLabel.isHidden = true
        }
         
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let navigationController = segue.destination as! UINavigationController
        
        let creationController = navigationController.topViewController as! CreationViewController
        
        creationController.flashcardsController = self
    }
    
    func updateFlashcard(question: String, answer: String) {
        frontLabel.text = question
        backLabel.text = answer
        
    }

}


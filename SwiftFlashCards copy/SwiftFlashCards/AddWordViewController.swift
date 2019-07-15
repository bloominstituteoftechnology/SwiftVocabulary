//
//  AddWordViewController.swift
//  SwiftFlashCards
//
//  Created by brian vilchez on 7/15/19.
//  Copyright © 2019 brian vilchez. All rights reserved.
//

import UIKit

class AddWordViewController: UIViewController {
    

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    var flashCard = FlashCard()
    
    @IBOutlet weak var addWordTextField: UITextField!
    
    @IBOutlet weak var addDefinitionTextField: UITextField!
    
    @IBAction func addFLashCardButtonPressed(_ sender: Any) {
        guard let word = addWordTextField.text,
            let definition = addDefinitionTextField.text else {return}
            flashCard.addWord(word, definition: definition)
            print(flashCard.words)
            navigationController?.popViewController(animated: true)
        
       }
}

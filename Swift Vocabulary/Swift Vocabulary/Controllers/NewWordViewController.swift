//
//  NewWordViewController.swift
//  Swift Vocabulary
//
//  Created by Tobi Kuyoro on 09/12/2019.
//  Copyright © 2019 Tobi Kuyoro. All rights reserved.
//

import UIKit

class NewWordViewController: UIViewController {
    
    var vocabController: VocabularyWordController?
    
    @IBOutlet weak var newWordTextField: UITextField!
    @IBOutlet weak var newDefinitionTextField: UITextField!
    
    @IBAction func addToWords(_ sender: UIButton) {
        
        if let newWord = newWordTextField.text,
            let newDefinition = newDefinitionTextField.text,
            let vocabController = vocabController {
            
            let newVocabWord = VocabularyWord(word: newWord, definition: newDefinition)
            vocabController.vocabWords.append(newVocabWord)
        }
        
        navigationController?.popViewController(animated: true)
    }
}

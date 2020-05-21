//
//  AddNewWordViewController.swift
//  SwiftVocabulary
//
//  Created by John McCants on 5/20/20.
//  Copyright © 2020 John McCants. All rights reserved.
//

import UIKit

class AddNewWordViewController: UIViewController, UITextFieldDelegate {
    @IBOutlet weak var addWordTextField: UITextField!
    @IBOutlet weak var addDefintionTextField: UITextField!
    @IBOutlet weak var addNewWordButton: UIButton!
    
    
    var newVocabWord : VocabularyWord?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        addWordTextField.delegate = self
        addDefintionTextField.delegate = self
        
        self.addNewWordButton.isEnabled = false
        
    

        // Do any additional setup after loading the view.
    }
    
    
    func textFieldDidChangeSelection(_ textField: UITextField) {
        if addWordTextField.text != "" && addDefintionTextField.text != "" {
            self.addNewWordButton.isEnabled = true
        }
    }
    
    
    
    
    @IBAction func addButtonTapped(_ sender: Any) {
            
    }
    

    
    
    
    
    
    // MARK: - Navigation

//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//
//        if segue.identifier == "unwind" {
//
//            guard let destinationVC = segue.destination as? WordsTableViewController else {
//                return
//            }
//
//
//            guard let newWord = addWordTextField.text, let newDefinition = addDefintionTextField.text else {
//
//                print("missing something")
//
//                return
//
//            }
//
//
//
//
//    destinationVC.vocabWords.append(VocabularyWord(word: newWord, definition: newDefinition))
//
//
//        }
//    }
    

}

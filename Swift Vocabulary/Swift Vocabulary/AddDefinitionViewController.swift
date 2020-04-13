//
//  AddDefinitionViewController.swift
//  Swift Vocabulary
//
//  Created by Vincent Hoang on 4/13/20.
//  Copyright © 2020 Vincent Hoang. All rights reserved.
//

import UIKit
import os.log

class AddDefinitionViewController: UIViewController, UITextFieldDelegate, UINavigationControllerDelegate {
    @IBOutlet var mWord: UITextField!
    @IBOutlet var mDefinition: UITextField!
    @IBOutlet var mSaveButton: UIBarButtonItem!
    
    var mVocabWord: VocabularyWord?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        mWord.delegate = self
        toggleSaveButtonState()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        super.prepare(for: segue, sender: sender)
        
        guard let saveButton = sender as? UIBarButtonItem, saveButton === mSaveButton else {
            os_log("The save button was not pressed, cancelling", log: OSLog.default, type: .debug)
            return
        }
        
        let word = mWord.text ?? ""
        let definition = mDefinition.text ?? ""
        
        mVocabWord = VocabularyWord(word: word, definition: definition)
    }
    
    @IBAction func cancelButton(_ sender: UIBarButtonItem) {
        let isInAddVocabWord = presentingViewController is UINavigationController
        
        if isInAddVocabWord {
            dismiss(animated: true, completion: nil)
        } else if let owningNavigationController = navigationController {
            owningNavigationController.popViewController(animated: true)
        } else {
            fatalError("The AddDefinitionViewController is not inside a navigation controller")
        }
    }
    
    
    private func toggleSaveButtonState() {
        let currentText = mWord.text ?? ""
        mSaveButton.isEnabled = !currentText.isEmpty
    }
    
    func textFieldDidBeginEditing(_ textField: UITextField) {
        mSaveButton.isEnabled = false
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        toggleSaveButtonState()
        navigationItem.title = mWord.text
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
}

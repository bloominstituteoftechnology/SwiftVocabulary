//
//  AddWordViewController.swift
//  Swift VOCAB
//
//  Created by Alex Shillingford on 7/15/19.
//  Copyright © 2019 Alex Shillingford. All rights reserved.
//

import UIKit

class AddWordViewController: UIViewController {
    //MARK: - IBOutlets and properties
    
    @IBOutlet weak var wordTextField: UITextField!
    @IBOutlet weak var definitionTextField: UITextField!
    @IBOutlet weak var saveButton: UIButton!
    
    
    var vocabController: VocabularyController?

    override func viewDidLoad() {
        super.viewDidLoad()

        saveButton.layer.cornerRadius = 18
    }
    // MARK: - IBActions and methods
    @IBAction func saveButtonTapped(_ sender: UIButton) {
        guard let vocabController = vocabController else { return }
        if let word = wordTextField.text,
            let definition = definitionTextField.text {
            vocabController.vocabWords.append(VocabularyWord(word: word, definition: definition))
            self.navigationController?.popViewController(animated: true)
        }
    }
}

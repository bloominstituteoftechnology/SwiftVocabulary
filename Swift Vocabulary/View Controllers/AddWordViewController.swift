//
//  AddWordViewController.swift
//  Swift Vocabulary
//
//  Created by Rob Vance on 4/8/20.
//  Copyright © 2020 Robs Creations. All rights reserved.
//

import UIKit

protocol AddWordDelegate {
    func wordWasAdded(_ newWord: VocabularyWord)
}

class AddWordViewController: UIViewController {
    var vocabWords: VocabularyWord?
// Mark IBOutlets
    @IBOutlet weak var newWordTextField: UITextField!
    @IBOutlet weak var newDefinitionTextView: UITextView!
    
    var delegate: AddWordDelegate?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
      

        // Do any additional setup after loading the view.
    }
    
    
// Mark IBActions
    @IBAction func saveButtonTapped(_ sender: Any) {
        guard let word = newWordTextField.text,
            let definition = newDefinitionTextView.text,
            !word.isEmpty, !definition.isEmpty else {return}
        
        let newWord = VocabularyWord(word: word, definition: definition)
    
        delegate?.wordWasAdded(newWord)
        self.dismiss(animated: true)

        
        navigationController?.popViewController(animated: true)
        
        
    }

    


}

//
//  AddWordViewController.swift
//  Swift Vocabulary
//
//  Created by Jon Bash on 2019-10-07.
//  Copyright © 2019 Jon Bash. All rights reserved.
//

import UIKit

class AddWordViewController: UIViewController {
    
    var word: String = ""
    var definition: String = ""
    
    var wordsTableVC: WordsTableViewController?
    let emptyVocabAlert = UIAlertController(title: "Empty fields!", message: "Either or both of \"Word\" and/or \"Definition\" are empty. Both fields must contain some text!", preferredStyle: .alert)

    override func viewDidLoad() {
        super.viewDidLoad()
        emptyVocabAlert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
    }
    
    @IBAction func wordTextChanged(_ sender: UITextField) {
        word = sender.text ?? ""
    }
    
    @IBAction func definitionTextChanged(_ sender: UITextField) {
        definition = sender.text ?? ""
    }
    
    @IBAction func addButtonPressed(_ sender: UIButton) {
        if word.isEmpty || definition.isEmpty {
            self.present(emptyVocabAlert, animated: true, completion: nil)
        } else {
            guard let wordsTableVC = wordsTableVC else { return }
            wordsTableVC.addWord(VocabularyWord(word: word, definition: definition))
            self.dismiss(animated: true, completion: nil)
        }
    }
    
    @IBAction func cancelButtonPressed(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }

}

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

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func wordTextChanged(_ sender: UITextField) {
        word = sender.text ?? ""
    }
    
    @IBAction func definitionTextChanged(_ sender: UITextField) {
        definition = sender.text ?? ""
    }
    
    @IBAction func addButtonPressed(_ sender: UIButton) {
        if word.isEmpty || definition.isEmpty {
            
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

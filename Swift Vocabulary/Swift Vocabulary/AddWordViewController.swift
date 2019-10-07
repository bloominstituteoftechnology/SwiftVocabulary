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
    @IBOutlet var definitionTextView: UITextView!
    
    var wordsTableVC: WordsTableViewController?

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func wordTextChanged(_ sender: UITextField) {
        word = sender.text ?? ""
    }
    
    @IBAction func addButtonPressed(_ sender: UIButton) {
        if word.isEmpty || definitionTextView.text.isEmpty {
            displayEmptyVocabAlert()
        } else {
            addWordToTable()
            closeView()
        }
    }
    
    @IBAction func cancelButtonPressed(_ sender: Any) {
        closeView()
    }

    fileprivate func displayEmptyVocabAlert() {
        let emptyVocabAlert = UIAlertController(title: "Empty fields!", message: "Either or both of \"Word\" and/or \"Definition\" are empty. Both fields must contain some text!", preferredStyle: .alert)
        emptyVocabAlert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
        
        self.present(emptyVocabAlert, animated: true, completion: nil)
    }
    
    fileprivate func addWordToTable() {
        guard let wordsTableVC = wordsTableVC else { return }
        wordsTableVC.addWord(VocabularyWord(word: word, definition: definitionTextView.text))
    }
    
    fileprivate func closeView() {
        self.dismiss(animated: true, completion: nil)
    }
}

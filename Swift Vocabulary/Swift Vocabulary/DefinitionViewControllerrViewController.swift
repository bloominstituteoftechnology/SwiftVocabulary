//
//  DefinitionViewControllerrViewController.swift
//  Swift Vocabulary
//
//  Created by David Williams on 8/26/19.
//  Copyright © 2019 david williams. All rights reserved.
//

import UIKit

class DefinitionViewControllerrViewController: UIViewController {
    
    var vocabularyWord: VocabularyWord?
    
    @IBOutlet weak var wordLabel: UILabel!
    @IBOutlet weak var definitionTextView: UITextView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateViews()

    }
    func updateViews() {
        if let vocabWord = vocabularyWord {
            wordLabel.text = vocabWord.word
            wordLabel.font = .boldSystemFont(ofSize: 40)
            definitionTextView.text = vocabWord.definition
            definitionTextView.font = .italicSystemFont(ofSize: 20)
        }
    }
    
    @IBAction func addWord(_ sender: Any) {
 // How the hell do you make this work???
       
        let alert = UIAlertController(title: "Add word", message: "Add a word to the vocabulary view.", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: NSLocalizedString("OK", comment: "Default action"), style: .destructive, handler: { _ in
        NSLog("The \"OK\" alert occured.")
        }))
        self.present(alert, animated: true, completion: nil)
        
    }
    
}

//
//  DefinitionViewController.swift
//  Swift Volcabulary
//
//  Created by Nichole Davidson on 2/17/20.
//  Copyright © 2020 Nichole Davidson. All rights reserved.
//

import UIKit

class DefinitionViewController: UIViewController {

    @IBOutlet weak var vocabWordLabel: UILabel!
    @IBOutlet weak var vocabDefinitionTextView: UITextView!
    
    var vocabWord: VocabularyWord?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateViews()
    }
    
    func updateViews() {
        
        if let unwrappedVocabWord = vocabWord {
            vocabWordLabel.text = unwrappedVocabWord.word
            vocabDefinitionTextView.text = unwrappedVocabWord.definition
        }
    }

    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
}

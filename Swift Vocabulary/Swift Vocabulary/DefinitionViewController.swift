//
//  DefinitionViewController.swift
//  Swift Vocabulary
//
//  Created by Enrique Gongora on 1/20/20.
//  Copyright © 2020 Enrique Gongora. All rights reserved.
//

import UIKit

class DefinitionViewController: UIViewController {
    
    // MARK: - IBOutlets
    @IBOutlet weak var textLabel: UILabel!
    @IBOutlet weak var textView: UITextView!
    
    var vocabWord: VocabularyWord?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateViews()
    }
    
    func updateViews() {
        if let unwrappedVocab = vocabWord{
            textLabel.text = unwrappedVocab.word
            textView.text = unwrappedVocab.definition
        }
    }
}

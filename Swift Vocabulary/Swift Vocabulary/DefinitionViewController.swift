//
//  DefinitionViewController.swift
//  Swift Vocabulary
//
//  Created by Enzo Jimenez-Soto on 4/13/20.
//  Copyright © 2020 Enzo Jimenez-Soto. All rights reserved.
//

import UIKit

class DefinitionViewController: UIViewController {
    
    @IBOutlet weak var DefinitionLabel: UILabel!
    
    @IBOutlet weak var DefinitionTextView: UITextView!
    
    var vocabWord: VocabularyWord?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateViews()
    }
    
    func updateViews() {
        
        if let unwrappedWord = vocabWord{
            DefinitionLabel.text = unwrappedWord.word
            DefinitionTextView.text = unwrappedWord.definition
        }
    }
}

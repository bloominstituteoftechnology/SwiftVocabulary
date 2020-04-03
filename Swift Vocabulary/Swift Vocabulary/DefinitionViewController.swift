//
//  DefinitionViewController.swift
//  Swift Vocabulary
//
//  Created by Hunter Oppel on 3/16/20.
//  Copyright © 2020 LambdaSchool. All rights reserved.
//

import UIKit

class DefinitionViewController: UIViewController {

    @IBOutlet weak var DefinitionWordLabel: UILabel!
    @IBOutlet weak var DefinitionExplanationTextView: UITextView!
    
    var vocabWord: VocabularyWord?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        updateViews()
    }
    
    func updateViews() {
        guard let vocabWord = vocabWord else { return }
        
        DefinitionWordLabel.text = vocabWord.word
        DefinitionExplanationTextView.text = vocabWord.definition
    }
}

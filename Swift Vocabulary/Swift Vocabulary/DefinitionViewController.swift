//
//  DefinitionViewController.swift
//  Swift Vocabulary
//
//  Created by Dennis Rudolph on 10/7/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class DefinitionViewController: UIViewController {
    
    var vocabWord: VocabularyWord?
    
    @IBOutlet weak var definitionLabel: UILabel!
    @IBOutlet weak var definitionTextView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        updateViews()
    }
    
    func updateViews() {
        guard let word = vocabWord else { return }
        definitionLabel.text = word.word
        definitionTextView.text = word.definition
    }

}

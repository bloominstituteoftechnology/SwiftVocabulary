//
//  DefinitionViewController.swift
//  Swift Vocabulary
//
//  Created by Kennedy Samarakody on 11/17/19.
//  Copyright © 2019 Kennedy Samarakody. All rights reserved.
//

import UIKit

class DefinitionViewController: UIViewController {
    @IBOutlet weak var DefinitionTextView: UITextView!
    
    @IBOutlet weak var DefinitionLabel: UILabel!
    var vocabWord: VocabularyWord?

    override func viewDidLoad() {
        super.viewDidLoad()
        updateViews()

        // Do any additional setup after loading the view.
    }
    
    func updateViews() {
        if let words = vocabWord {
            DefinitionLabel.text = words.word
            DefinitionTextView.text = words.definition
            
            
        }
    }
    

   
}

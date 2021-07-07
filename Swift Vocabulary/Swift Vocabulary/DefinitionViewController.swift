//
//  DefinitionViewController.swift
//  Swift Vocabulary
//
//  Created by macbook on 9/9/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class DefinitionViewController: UIViewController {
    
    var vocabWord: VocabularyWord?

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        updateViews()
    }
    
    
    // IBOulets to definition Label and Text View
    @IBOutlet weak var definitionLabel: UILabel!
    @IBOutlet weak var definitionTextView: UITextView!
    
    
    // Updating the view with correct Vocabulary Word if not nil
    func updateViews() {
        if vocabWord != nil {
            definitionLabel.text = vocabWord?.word
            definitionTextView.text = vocabWord?.definition
        }
    }
}

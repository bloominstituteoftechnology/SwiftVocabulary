//
//  DefinitionViewController.swift
//  SwiftVocabulary
//
//  Created by Karim Boudlal and Chris Price on 9/18/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class DefinitionViewController: UIViewController {
    @IBOutlet var definitionLabel: UILabel!
    
    @IBOutlet var definitionTextView: UITextView!
    
    var vocabWord: VocabularyWord?
    
    func updateViews() {
        
        if let  word = vocabWord?.word, let definition = vocabWord?.definition   {
        
            definitionLabel.text = word
            definitionTextView.text = definition
           
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateViews()
        
    }
}

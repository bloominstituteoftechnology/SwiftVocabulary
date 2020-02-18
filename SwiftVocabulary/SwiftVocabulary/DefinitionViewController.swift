//
//  DefinitionViewController.swift
//  SwiftVocabulary
//
//  Created by Harmony Radley on 2/17/20.
//  Copyright © 2020 Harmony Radley. All rights reserved.
//

import UIKit

class DefinitonViewController: UIViewController {
    
    var vocabWord: VocabularyWord?
    func updatesViews() {
        if let unwrappedWord = vocabWord {
            print(unwrappedWord)
            variable.text = unwrappedWord.variable
            variableDefiniton.text = unwrappedWord.definiton
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updatesViews()
        
    }
    
    
    @IBOutlet weak var variable: UILabel!
    
    @IBOutlet weak var variableDefiniton: UITextView!
    
    
}

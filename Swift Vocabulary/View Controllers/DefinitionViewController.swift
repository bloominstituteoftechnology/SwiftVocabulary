//
//  DefinitionViewController.swift
//  Swift Vocabulary
//
//  Created by LaFleur on 11/14/19.
//  Copyright © 2019 David Schwinne. All rights reserved.
//

import UIKit

class DefinitionViewController: UIViewController {

  var cellDefinition: VocabularyWord?
    
    @IBOutlet weak var DefinitionTextView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateViews()
    
    }
    
    func updateViews() {
        if let cellDefinition = cellDefinition {
            title = cellDefinition.word
            DefinitionTextView.text = cellDefinition.definition
            
        }
    }
}

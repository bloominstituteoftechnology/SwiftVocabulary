//
//  VocabDefinitionViewController.swift
//  Swift-Vocabulary
//
//  Created by Austin Potts on 8/12/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class VocabDefinitionViewController: UIViewController {

    @IBOutlet weak var definitionTextView: UITextView!
    var vocabulary: MyVocabulary?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateViews()
        
    }
    
    func updateViews() {
        if let vocabDef = vocabulary {
            title = vocabDef.name
            definitionTextView.text = vocabDef.definition
            
        }
    }


}


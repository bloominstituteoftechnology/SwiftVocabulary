//
//  DefinitionViewController.swift
//  Swift Vocabulary
//
//  Created by Patrick Millet on 11/4/19.
//  Copyright © 2019 Patrick Millet. All rights reserved.
//

import UIKit

class DefinitionViewController: UIViewController {

    var vocabWord: VocabularyWord?


    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateViews()
        // Do any additional setup after loading the view.
    }
    @IBOutlet weak var labelOutlet: UILabel!
    
   
    @IBOutlet weak var definitionOutlet: UITextView!
    
   
    func updateViews() {
        if let unwrappedVocab = vocabWord  {
            labelOutlet.text = unwrappedVocab.title
            definitionOutlet.text = unwrappedVocab.definition
        }
    }
}



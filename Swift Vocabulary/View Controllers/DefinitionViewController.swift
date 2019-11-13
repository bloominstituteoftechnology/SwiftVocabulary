//
//  DefinitionViewController.swift
//  Swift Vocabulary
//
//  Created by John Holowesko on 11/13/19.
//  Copyright © 2019 John Holowesko. All rights reserved.
//

import UIKit

class DefinitionViewController: UIViewController {

    var vocabWord: VocabularyWord?
    
    func updateViews() {
        guard let vocabWord = vocabWord else { return }
    
        WordTitle.text = vocabWord.word
        WordDefinition.text = vocabWord.definition
    
    }
    
    // Creating Outlets from view controller
    @IBOutlet weak var WordTitle: UILabel!
    @IBOutlet weak var WordDefinition: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateViews()
    }
    

}

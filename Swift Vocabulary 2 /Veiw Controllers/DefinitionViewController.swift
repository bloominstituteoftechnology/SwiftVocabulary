//
//  DefinitionViewController.swift
//  Swift Vocabulary 2
//
//  Created by Clean Mac on 4/15/20.
//  Copyright © 2020 LambdaStudent. All rights reserved.
//

import UIKit

class DefinitionViewController: UIViewController {
    
    var definition: VocabularyWord?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateViews()

        // Do any additional setup after loading the view.
    }
    @IBOutlet weak var definitionLabel: UILabel!
    @IBOutlet weak var definitionTextView: UITextView!

    func updateViews() {
        if let unwrappedDefinitions = definition {
            definitionLabel?.text = unwrappedDefinitions.word
            definitionTextView?.text = unwrappedDefinitions.definition
        }
    }

}

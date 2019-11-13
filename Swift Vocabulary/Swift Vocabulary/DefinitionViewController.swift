//
//  DefinitionViewController.swift
//  Swift Vocabulary
//
//  Created by Rohan Taylor on 11/7/19.
//  Copyright © 2019 Rohan Taylor. All rights reserved.
//

import UIKit

class DefinitionViewController: UIViewController {
    
    
    var word : VocabularyWord?

    @IBOutlet weak var wordLabel: UILabel!
    @IBOutlet weak var definition: UITextView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateViews()
        

        // Do any additional setup after loading the view.
    }
    
    func updateViews(){
        guard let word = word else{ return }
        wordLabel.text = word.word
        definition.text = word.definition

        
    }
    
 
}

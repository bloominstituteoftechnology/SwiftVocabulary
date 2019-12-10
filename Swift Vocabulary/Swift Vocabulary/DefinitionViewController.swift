//
//  DefinitionViewController.swift
//  Swift Vocabulary
//
//  Created by Malik Barnes on 12/9/19.
//  Copyright © 2019 Malik Barnes. All rights reserved.
//

import UIKit

class DefinitionViewController: UIViewController {
    
    var cellWord: VocabularyWord?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateViews()
    }
    
        // Do any additional setup after loading the view.
        func updateViews() {
            if let unwrappedWord = cellWord {
                title = unwrappedWord.name
                
        }
    }
}


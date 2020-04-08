//
//  DefinitionViewController.swift
//  Swift Vocabulary
//
//  Created by Aaron Peterson on 4/8/20.
//  Copyright © 2020 Aaron Peterson. All rights reserved.
//

import UIKit

class DefinitionViewController: UIViewController {

    @IBOutlet weak var wordLabel: UILabel!
    @IBOutlet weak var definitionTextView: UITextView!
    
    var vocabWord: VocabularyWord?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    func updateViews() {
        
    }

}

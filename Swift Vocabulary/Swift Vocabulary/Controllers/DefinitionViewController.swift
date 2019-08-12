//
//  DefinitionViewController.swift
//  Swift Vocabulary
//
//  Created by Joshua Franklin on 8/12/19.
//  Copyright © 2019 AMSU. All rights reserved.
//

import UIKit

class DefinitionViewController: UIViewController {
    
    var cellWord: VocabularyWord?

    @IBOutlet weak var textView: UITextView!
    
    @IBOutlet weak var wordLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateViews()

    }
    
    func updateViews() {
        if let cellWord = cellWord {
            
            wordLabel.text = cellWord.word
            textView.text = cellWord.definition
        }
    }

}

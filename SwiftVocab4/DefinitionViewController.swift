//
//  DefinitionViewController.swift
//  SwiftVocab4
//
//  Created by user162867 on 12/9/19.
//  Copyright © 2019 user162867. All rights reserved.
//

import UIKit

class DefinitionViewController: UIViewController {

    @IBOutlet weak var labely: UILabel!
    @IBOutlet weak var definition: UITextView!
    
    var vocabWord: VocabularyWord?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateViews()

        // Do any additional setup after loading the view.
    }
    
    func updateViews() {
        if let usedVocabWord = vocabWord {
            labely.text = usedVocabWord.word
            definition.text = usedVocabWord.definition
        }
    }
    


}

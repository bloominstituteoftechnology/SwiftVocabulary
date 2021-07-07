//
//  DefinitionViewController.swift
//  Swift Vocabulary
//
//  Created by denis cedeno on 9/18/19.
//  Copyright © 2019 DenCedeno Co. All rights reserved.
//

import UIKit

class DefinitionViewController: UIViewController {
    var vocabWord: VocabularyWord?
    
    @IBOutlet weak var definitionViewTextLabel: UILabel!
    @IBOutlet weak var definitionViewTextView: UITextView!
    
    func updateViews(){
        guard let vocabWords = vocabWord else{return}
        definitionViewTextLabel.text = vocabWords.word
        definitionViewTextView.text = vocabWords.definition
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateViews()
    }

}

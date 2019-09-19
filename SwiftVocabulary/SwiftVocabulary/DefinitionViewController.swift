//
//  DefinitionViewController.swift
//  SwiftVocabulary
//
//  Created by Craig Swanson on 9/18/19.
//  Copyright © 2019 Craig Swanson. All rights reserved.
//

import UIKit

class DefinitionViewController: UIViewController {

    @IBOutlet weak var wordToDefine: UILabel!
    @IBOutlet weak var wordDefinition: UITextView!
    
    // The vocabWord variable is the reciever for data passed from tableview
    var vocabWord: VocabularyWord?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        updateViews()
    }
    
    // Takes the vocab word passed from the table view and sets the word and
    // definition components to the Label and TextView, respectively.
    func updateViews() {
        guard let vocabWord = vocabWord else {
            return
        }
        wordToDefine.text = vocabWord.word
        wordDefinition.text = vocabWord.definition
    }

}

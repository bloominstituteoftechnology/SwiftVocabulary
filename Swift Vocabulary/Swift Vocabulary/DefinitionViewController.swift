//
//  DefinitionViewController.swift
//  Swift Vocabulary
//
//  Created by Vincent Hoang on 4/13/20.
//  Copyright © 2020 Vincent Hoang. All rights reserved.
//

import UIKit

class DefinitionViewController: UIViewController {
    @IBOutlet var mLabel: UILabel?
    @IBOutlet var mTextView: UITextView?
    
    var mVocabWord: VocabularyWord?
    
    func updateViews() {
        guard let unwrappedWord = mVocabWord else {
            fatalError("Error unwrapping mVocabWord")
        }
        
        mLabel?.text = unwrappedWord.word
        mTextView?.text = unwrappedWord.definition
    }
    
    override func viewDidLoad() {
        updateViews()
    }
}

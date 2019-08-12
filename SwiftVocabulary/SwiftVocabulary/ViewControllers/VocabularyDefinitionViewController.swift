//
//  VocabularyDefinitionViewController.swift
//  SwiftVocabulary
//
//  Created by brian vilchez on 8/12/19.
//  Copyright © 2019 brian vilchez. All rights reserved.
//

import UIKit

class VocabularyDefinitionViewController: UIViewController {
    
    //MARK: - properties
    @IBOutlet weak var definitionTextView: UITextView!
    
    var word: Word? {
        didSet{
            updateViews()
        }
    }

    //MARK - Helper Methods
    func updateViews() {
        guard let word = word else {return}
        definitionTextView.text = word.definition
    }

}

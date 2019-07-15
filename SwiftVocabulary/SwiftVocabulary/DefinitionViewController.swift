//
//  DefinitionViewController.swift
//  SwiftVocabulary
//
//  Created by Brian Vilchez on 4/29/19.
//  Copyright © 2019 Brian Vilchez. All rights reserved.
//

import UIKit

class DefinitionViewController: UIViewController {
    
    
    func updateViews() {
        
        guard isViewLoaded  else  { return }
        if let vocabularyWord = vocabWord?.word,
            let vocabularyDefinition = vocabWord?.definition {
            
            vocabularyWordName.text = vocabularyWord
            DefinitionText.text = vocabularyDefinition
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

      updateViews()
    }
    

    // MARK: properties
    
    @IBOutlet weak var DefinitionText: UITextView!
    
    @IBOutlet weak var vocabularyWordName: UILabel!
    
    
    var vocabWord: vocabularyWord? {
        
        didSet {
            
            updateViews()
        }
    }
    
}

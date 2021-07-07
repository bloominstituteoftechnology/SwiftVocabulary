//
//  DefinitionViewController.swift
//  Swift VOCAB
//
//  Created by Alex Shillingford on 7/15/19.
//  Copyright © 2019 Alex Shillingford. All rights reserved.
//

import UIKit

class DefinitionViewController: UIViewController {
    //MARK: - IBOutlets and properties
    
    @IBOutlet weak var wordLabel: UILabel!
    @IBOutlet weak var definitionTextView: UITextView!
    
    var vocabWord: VocabularyWord? {
        didSet {
            loadViewIfNeeded()
            updateViews()
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
//        updateViews()
    }
    
    // MARK: - Methods
    func updateViews() {
        guard isViewLoaded,
            let vocabWord = vocabWord else { return }
        
        title = "Definition"
        wordLabel.text = vocabWord.word
        definitionTextView.text = vocabWord.definition
    }
}

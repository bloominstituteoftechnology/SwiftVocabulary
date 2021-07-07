//
//  DefinitionViewController.swift
//  SwiftVocabulary
//
//  Created by Chad Rutherford on 11/4/19.
//  Copyright © 2019 Chad Rutherford. All rights reserved.
//

import UIKit

class DefinitionViewController: UIViewController {
    
    // --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---
    // MARK: - Properties
    var word: VocabularyWord?
    
    // --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---
    // MARK: - Outlets
    @IBOutlet weak var wordLabel: UILabel!
    @IBOutlet weak var definitionTextView: UITextView!
    
    // --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---
    // MARK: - View Controller Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        updateViews()
    }
    
    fileprivate func updateViews() {
        guard let word = word else { return }
        title = word.word
        wordLabel.text = word.word
        definitionTextView.text = word.definition
    }
}

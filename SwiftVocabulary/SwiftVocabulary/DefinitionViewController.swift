//
//  DefinitionViewController.swift
//  SwiftVocabulary
//
//  Created by Shawn James on 3/16/20.
//  Copyright © 2020 Shawn James. All rights reserved.
//

import UIKit

class DefinitionViewController: UIViewController {

    // MARK: - Properties
    var vocabWord: VocabularyWord?
    
    // MARK: - Outlets
    @IBOutlet weak var wordLabel: UILabel!
    @IBOutlet weak var definitionTextView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        updateViews()
    }
    
    // MARK: - Methods
    func updateViews() {
        guard let vocabWordUnwrapped = vocabWord else { return }
        wordLabel.text = vocabWordUnwrapped.word
        definitionTextView.text = vocabWordUnwrapped.definition
    }

}

//
//  DefinitionViewController.swift
//  Swift Vocabulary
//
//  Created by Jeremy Taylor on 11/13/19.
//  Copyright © 2019 Bytes-Random L.L.C. All rights reserved.
//

import UIKit

class DefinitionViewController: UIViewController {
    @IBOutlet weak var wordLabel: UILabel!
    @IBOutlet weak var definitionTextView: UITextView!
    
    var vocabWord: VocabularyWord?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        updateViews()
    }
    
    func updateViews() {
        guard isViewLoaded,
        let entry = vocabWord else { return }
        wordLabel.text = entry.word
        definitionTextView.text = entry.definition
    }
}

//
//  DefinitionViewController.swift
//  Swift Vocabulary
//
//  Created by Hayden Hastings on 4/29/19.
//  Copyright © 2019 Hayden Hastings. All rights reserved.
//

import UIKit

class DefinitionViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        updateViews()
    }

    func updateViews() {
        guard isViewLoaded else { return }
        if let word = vocabWord?.word,
            let definition = vocabWord?.definition {
            wordLabel.text = word
            definitionLabel.text = definition
        }
    }
    
    var vocabWord: VocabularyWord? {
        didSet {
            updateViews()
        }
    }

    @IBOutlet weak var wordLabel: UILabel!
    @IBOutlet weak var definitionLabel: UILabel!
}

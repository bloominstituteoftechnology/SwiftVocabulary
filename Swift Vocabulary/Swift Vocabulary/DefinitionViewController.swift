//
//  DefinitionViewController.swift
//  Swift Vocabulary
//
//  Created by Matthew Brodsky on 3/17/20.
//  Copyright © 2020 Matthew Brodsky. All rights reserved.
//

import UIKit

class DefinitionViewController: UIViewController {

    var vocabWord: VocabularyWord?
    func updateViews() {
            if let unwrappedWord = vocabWord {
                print(unwrappedWord)
                label.text = unwrappedWord.word
                textView.text = unwrappedWord.definition
        }
    }


    @IBOutlet weak var label: UILabel!

    @IBOutlet weak var textView: UITextView!


    override func viewDidLoad() {
        super.viewDidLoad()
        updateViews()
    }


}

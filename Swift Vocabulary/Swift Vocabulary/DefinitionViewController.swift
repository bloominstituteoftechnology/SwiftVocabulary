//
//  DefinitionViewController.swift
//  Swift Vocabulary
//
//  Created by Samuel Esserman on 1/17/20.
//  Copyright © 2020 Samuel Esserman. All rights reserved.
//

import UIKit

class DefinitionViewController: UIViewController {
    
    var vocabWord: VocabularyWord?

    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var textView: UITextView!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        updateViews()
        // Do any additional setup after loading the view.
    }
    
    func updateViews() {
        guard let unwrappedVocabWord = vocabWord else { return }
        label.text = unwrappedVocabWord.word
        textView.text = unwrappedVocabWord.definition
    }


}

//
//  DefinitionViewController.swift
//  SwiftVocabulary
//
//  Created by beth on 1/20/20.
//  Copyright © 2020 elizabeth wingate. All rights reserved.
//

import UIKit

class DefinitionViewController: UIViewController {

    
    //MARK: Outlet
    @IBOutlet weak var textView: UITextView!
    @IBOutlet weak var wordTitle: UILabel!
    
    
    var vocabWord: VocabularyWord?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        updateViews()
    }
    
    //Give the views in this view controller any information they need
    
    func updateViews() {
        if let unwrappedWord = vocabWord {
            textView.text = unwrappedWord.definition
            wordTitle.text = unwrappedWord.word
        }
    }

}



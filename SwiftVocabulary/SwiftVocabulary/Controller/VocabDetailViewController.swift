//
//  VocabDetailViewController.swift
//  SwiftVocabulary
//
//  Created by Aaron on 7/23/19.
//  Copyright © 2019 AlphaGrade, INC. All rights reserved.
//

import UIKit

class VocabDetailViewController: UIViewController {

    @IBOutlet weak var vocabLabel: UILabel!
    @IBOutlet weak var vocabView: UITextView!
    
    var vocabWord: VocabularyWord?
    
    override func viewDidLoad() {
        super.viewDidLoad()
            updateViews()
    }
    

    func updateViews() {
        
        if let word = vocabWord {
            vocabLabel.text = word.name
            vocabView.text = word.definition
            
        }
        
        
    }

    

}

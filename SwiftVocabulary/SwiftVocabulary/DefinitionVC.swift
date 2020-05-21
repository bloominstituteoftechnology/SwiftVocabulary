//
//  DefinitionVC.swift
//  SwiftVocabulary
//
//  Created by Norlan Tibanear on 5/20/20.
//  Copyright © 2020 Norlan Tibanear. All rights reserved.
//

import UIKit

class DefinitionVC: UIViewController {
    
    var vocabWords: VocabularyWord?
    
    @IBOutlet var titleLabel: UILabel!
    @IBOutlet var definitionLabel: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        configureView()
    }
    
    func configureView() {
        titleLabel.text = vocabWords?.word
        definitionLabel.text = vocabWords?.definition
    }


} // END

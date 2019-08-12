//
//  VocabularyDefinitionViewController.swift
//  SwiftVocabulary
//
//  Created by brian vilchez on 8/12/19.
//  Copyright © 2019 brian vilchez. All rights reserved.
//

import UIKit

class VocabularyDefinitionViewController: UIViewController {
    
    //MARK: - properties
    @IBOutlet weak var definitionTextView: UITextView!
    var word: Word?
    
    //MARK - Helper Methods

    override func viewDidLoad() {
        super.viewDidLoad()
        definitionTextView.text = word?.definition
        
    }

}

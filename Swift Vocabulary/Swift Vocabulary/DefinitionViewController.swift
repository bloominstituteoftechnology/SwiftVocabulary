//
//  DefinitionViewController.swift
//  Swift Vocabulary
//
//  Created by Niranjan Kumar on 9/9/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class DefinitionViewController: UIViewController {

    var vocabWord: VocabularyWord?
    
    @IBOutlet var Word: UILabel!
    @IBOutlet var TextView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateViews()
 
        // Do any additional setup after loading the view.
    }
    func updateViews() {
        guard let unwrappedWord = vocabWord else {return}
            Word.text = unwrappedWord.word
            TextView.text = unwrappedWord.definition
            
        }
    }

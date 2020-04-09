//
//  DefinitionViewController.swift
//  Swift Vocabulary
//
//  Created by Jarren Campos on 1/26/20.
//  Copyright © 2020 Jarren Campos. All rights reserved.
//

import UIKit

class DefinitionViewController: UIViewController {

    var vocabWord: VocabularyWord?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateViews()
        // Do any additional setup after loading the view.
    }
    
    @IBOutlet var definitionTextView: UITextView!
    
    @IBOutlet var wordLabel: UILabel!
    
    func updateViews() {
                if let vocabWord = vocabWord{
                    title = vocabWord.word
                    wordLabel.text = vocabWord.word
                    definitionTextView.text = vocabWord.definition
                }
            }
        }

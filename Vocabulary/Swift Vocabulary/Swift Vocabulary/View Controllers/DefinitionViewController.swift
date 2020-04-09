//
//  DefinitionViewController.swift
//  Swift Vocabulary
//
//  Created by Ian French on 4/8/20.
//  Copyright © 2020 Ian French. All rights reserved.
//

import UIKit

class DefinitionViewController: UIViewController {
    @IBOutlet weak var DefinitionLabel: UILabel!
    @IBOutlet weak var DefinitionTextView: UITextView!
    
    var vocabWord: VocabularyWord?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        guard isViewLoaded
            else{
                return
        }
        
            updateViews()
        
      
    }
    
    
    func updateViews() {
        guard let vWord = vocabWord  else {
            return}
          
            DefinitionLabel.text = vWord.word
           DefinitionTextView.text = vWord.definition
            
        }
    }

   


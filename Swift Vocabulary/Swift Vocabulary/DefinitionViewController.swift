//
//  DefinitionViewController.swift
//  Swift Vocabulary
//
//  Created by Ray Wellman on 2/17/20.
//  Copyright © 2020 Richard Ray Wellman. All rights reserved.
//

import UIKit

class DefinitionViewController: UIViewController {
    
    var vocabWord: VocabularyWord?
    
    @IBOutlet var wordLabel: UILabel!
    @IBOutlet var definitionLabel: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        
        updateViews()
    }
    
    func updateViews() {
        if let unwrappedVocabWord = vocabWord {
            wordLabel.text = unwrappedVocabWord.word
            definitionLabel.text = unwrappedVocabWord.definition
        }
    }
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destination.
     // Pass the selected object to the new view controller.
     }
     */
}

//
//  DefinitionViewController.swift
//  Swift Vocabulary
//
//  Created by Sam Gutierrez on 5/20/20.
//  Copyright © 2020 Sam Gutierrez.inc. All rights reserved.
//

import UIKit

class DefinitionViewController: UIViewController {
    
    var vocabWord: VocabularyWord?
    
func updateViews() {
        if let unwrappedVocabWord = vocabWord {
            unwrappedVocabWord.word
            unwrappedVocabWord.definition
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateViews()
        // Do any additional setup after loading the view.
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

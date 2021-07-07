//
//  DefinitionViewController.swift
//  Swift Vocabulary
//
//  Created by Bradley Diroff on 2/17/20.
//  Copyright © 2020 Bradley Diroff. All rights reserved.
//

import UIKit

class DefinitionViewController: UIViewController {
    
    var vocabWord: VocabularyWord?
    
    @IBOutlet var vocabularyWord: UILabel!
    @IBOutlet var definitionTextView: UITextView!
    

    override func viewDidLoad() {
        super.viewDidLoad()

        updateViews()
        
    }
    
    func updateViews() {
        
        if let word = vocabWord {
            vocabularyWord.text = word.word
            definitionTextView.text = word.definition
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

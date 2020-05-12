//
//  DefinitionViewController.swift
//  Swift Vocabulary
//
//  Created by Mike Nichols on 5/11/20.
//  Copyright © 2020 Mike Nichols. All rights reserved.
//

import UIKit

class DefinitionViewController: UIViewController {
    
    var vocabWord: VocabularyWord?
    var wordLabel: String?
    var definitionTextView: String?
    
    func updateViews() {
        guard let vocabWord = vocabWord else {
            return
        }
        
        wordLabel = vocabWord.word
        definitionTextView = vocabWord.definition
        
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

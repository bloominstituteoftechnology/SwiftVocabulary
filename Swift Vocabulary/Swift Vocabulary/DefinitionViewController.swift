//
//  DefinitionViewController.swift
//  Swift Vocabulary
//
//  Created by Brandi on 10/7/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class DefinitionViewController: UIViewController {
    
   

    @IBOutlet weak var wordLabel: UILabel!

    @IBOutlet weak var wordDefinition: UITextView!
    
    var vocabWord: VocabularyWord?

    override func viewDidLoad() {
        super.viewDidLoad()
       
        updateViews()
    }
    
    
    func updateViews() {
        if let vocabWord = vocabWord {
            self.wordLabel.text = vocabWord.word
            self.wordDefinition.text = vocabWord.definition
        }

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

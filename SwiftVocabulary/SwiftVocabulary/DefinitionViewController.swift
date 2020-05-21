//
//  DefinitionViewController.swift
//  SwiftVocabulary
//
//  Created by John McCants on 5/17/20.
//  Copyright © 2020 John McCants. All rights reserved.
//

import UIKit

class DefinitionViewController: UIViewController {

    @IBOutlet weak var wordLabel: UILabel!
    @IBOutlet weak var wordDefinition: UITextView!
    
    var vocabWord : VocabularyWord?
    
    func updateViews() {
        
        if let unwrappedVocabWord = vocabWord {
            self.wordLabel.text = unwrappedVocabWord.word
            self.wordDefinition.text = unwrappedVocabWord.definition
        }
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()

       updateViews()
        self.wordLabel.font = UIFont(name: "Helvetica", size: 40)
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

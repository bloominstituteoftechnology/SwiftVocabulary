//
//  DefinitionViewController.swift
//  Swift Vocabulary
//
//  Created by David Wright on 11/13/19.
//  Copyright © 2019 David Wright. All rights reserved.
//

import UIKit

class DefinitionViewController: UIViewController {

    var vocabWord: VocabularyWord?
    
    @IBOutlet var wordLabel: UILabel!
    @IBOutlet var definitionTextView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateViews()
    }
    
    func updateViews() {
        if let vocabWord = self.vocabWord {
            wordLabel.text = vocabWord.word
            definitionTextView.text = vocabWord.definition
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

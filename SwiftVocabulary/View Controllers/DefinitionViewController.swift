//
//  DefinitionViewController.swift
//  SwiftVocabulary
//
//  Created by Jessie Ann Griffin on 7/23/19.
//  Copyright © 2019 Jessie Griffin. All rights reserved.
//

import UIKit

class DefinitionViewController: UIViewController {

    @IBOutlet weak var wordLabel: UILabel!
    @IBOutlet weak var definitionTextView: UITextView!
    
    var vocabWord: VocabularyWord?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        updateViews()
    }
    
    func updateViews() {
        
        if let vocabWord = vocabWord {
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

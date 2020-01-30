//
//  DefinitionViewController.swift
//  Swift Vocabulary
//
//  Created by Elizabeth Thomas on 1/29/20.
//  Copyright © 2020 Libby Thomas. All rights reserved.
//

import UIKit

class DefinitionViewController: UIViewController {
    
    var vocabWord: VocabularyWord?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateViews()
    }
    
    
    @IBOutlet weak var definitionTextView: UITextView!
    @IBOutlet var wordLabel: UILabel!
    
    
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

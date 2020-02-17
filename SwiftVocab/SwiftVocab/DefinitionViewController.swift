//
//  DefinitionViewController.swift
//  SwiftVocab
//
//  Created by Lydia Zhang on 2/17/20.
//  Copyright © 2020 Lydia Zhang. All rights reserved.
//

import UIKit

class DefinitionViewController: UIViewController {

    var vocab: String?
    var vocabWord: VocabularyWord?
    
    func updateViews() {
        if let actualVocabWord = vocabWord {
            DefinitionLabel.text = actualVocabWord.word
            DefinitionTextView.text = actualVocabWord.definition
            
        }
    }
    
    @IBOutlet weak var DefinitionLabel: UILabel!
    
    @IBOutlet weak var DefinitionTextView: UITextView!
    
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

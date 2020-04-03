//
//  DefinitionViewController.swift
//  Swift Vocabulary
//
//  Created by Dahna on 3/16/20.
//  Copyright © 2020 Dahna Buenrostro. All rights reserved.
//

import UIKit

class DefinitionViewController: UIViewController {

    
    var vocabWord: VocabularyWord?
    
    @IBOutlet weak var wordLabel: UILabel!
    
    @IBOutlet weak var definitionTextView: UITextView!
    
    func updateViews() {
        if let unwrappedWord = vocabWord {
            wordLabel.text = unwrappedWord.word
            definitionTextView.text = unwrappedWord.definition
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
            
        // Do any additional setup after loading the view.
        updateViews()
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

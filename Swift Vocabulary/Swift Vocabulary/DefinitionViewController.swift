//
//  DefinitionViewController.swift
//  Swift Vocabulary
//
//  Created by Rick Wolter on 10/7/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class DefinitionViewController: UIViewController {
    
    
    
    var vocabWord: VocabularyWord?
    
    @IBOutlet var wordLabel: UILabel!
    
    @IBOutlet var definitionTextView: UITextView!
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        updateViews()
        // Do any additional setup after loading the view.
    }
    
    
    
    
    
    
    
    func updateViews(){
        
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

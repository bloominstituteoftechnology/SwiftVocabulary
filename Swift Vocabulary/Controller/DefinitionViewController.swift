//
//  DefinitionViewController.swift
//  Swift Vocabulary
//
//  Created by Jason Hoover on 5/11/20.
//  Copyright © 2020 Jason Hoover. All rights reserved.
//

import UIKit

var vocabWord: VocabularyWord?

class DefinitionViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        updateViews()
        
        
        // Do any additional setup after loading the view.
    }
    

    @IBOutlet weak var definitionLabel: UILabel!
    
    
    @IBOutlet weak var definitionBox: UITextView!
    
    func updateViews() {
        if let vocabWord = vocabWord {
            definitionLabel.text = vocabWord.word
            definitionBox.text = vocabWord.definition
            
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

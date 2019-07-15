//
//  DefinitionViewController.swift
//  SwiftVocabulary
//
//  Created by Marc Jacques on 7/15/19.
//  Copyright © 2019 Marc Jacques. All rights reserved.
//

import UIKit

class DefinitionViewController: UIViewController {
    var vocabWord: VocabularyWord?
    
    
    @IBOutlet weak var vocabWordLabel: UILabel!
    
    @IBOutlet weak var definition: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        updateViews()
        // Do any additional setup after loading the view.
    }

    func updateViews(){
        if let vocabWord = vocabWord {
            vocabWordLabel.text = vocabWord.word
            definition.text = vocabWord.definition
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
}

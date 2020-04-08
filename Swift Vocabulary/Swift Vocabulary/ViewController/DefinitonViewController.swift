//
//  DefinitonViewController.swift
//  Swift Vocabulary
//
//  Created by Clayton Watkins on 4/8/20.
//  Copyright © 2020 Clayton Watkins. All rights reserved.
//

import UIKit

class DefinitonViewController: UIViewController {
    
    @IBOutlet weak var definitionTextField: UITextView!
    @IBOutlet weak var definitionLabel: UILabel!
    
    var vocabWord: VocabularyWord?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateViews()
    }
    
    func updateViews(){
        if let vocabWord = vocabWord{
            definitionLabel.text = vocabWord.word
            definitionTextField.text = vocabWord.definition
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

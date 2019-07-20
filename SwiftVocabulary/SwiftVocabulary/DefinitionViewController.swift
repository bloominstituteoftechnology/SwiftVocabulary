//
//  DefinitionViewController.swift
//  SwiftVocabulary
//
//  Created by Joseph Rogers on 7/19/19.
//  Copyright © 2019 Joe Rogers. All rights reserved.
//

import UIKit

class DefinitionViewController: UIViewController {
    @IBOutlet weak var definitionLabel: UILabel!
    @IBOutlet weak var definitionTextView: UITextView!
    
   var vocabWord: VocabularyWord?
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
       
        func updateViews() {
            guard let vocab = vocabWord else {
                return
            }
            
            definitionLabel.text = vocab.word
            definitionTextView.text = vocab.definition
            
        }// Do any additional setup after loading the view.
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

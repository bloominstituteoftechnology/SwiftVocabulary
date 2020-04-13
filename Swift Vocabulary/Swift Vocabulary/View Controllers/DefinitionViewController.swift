//
//  DefinitionViewController.swift
//  Swift Vocabulary
//
//  Created by Kelson Hartle on 4/13/20.
//  Copyright © 2020 Kelson Hartle. All rights reserved.
//

import UIKit

class DefinitionViewController: UIViewController {
    
    @IBOutlet weak var wordLabel: UILabel!
    @IBOutlet weak var definition: UITextView!
    
    var vocabWord: Vocab?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateViews()
    }
    
    func updateViews() {
        if let vocabWordUnwrapped = vocabWord {
            wordLabel.text = vocabWordUnwrapped.name
            definition.text = vocabWordUnwrapped.definition
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

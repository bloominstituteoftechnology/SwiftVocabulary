//
//  DefinitionViewController.swift
//  Swift Vocabulary
//
//  Created by alfredo on 11/13/19.
//  Copyright © 2019 alfredo. All rights reserved.
//

import UIKit



class DefinitionViewController: UIViewController {
    @IBOutlet weak var definitionLabel: UILabel!
    
    @IBOutlet weak var definitionText: UITextView!
    
    //    1. Add a `vocabWord: VocabularyWord?` property.
    var vocabWord: VocabularyWord?
    
//    2. Add a method called `updateViews()`.
    func updateViews(){
        // 3. In this method, unwrap the `vocabWord` property. If it is not nil, use its `word` and `definition` properties to populate the label and text view.
        if let word = vocabWord{
            let wordLabel = word.word
            let wordDefinition = word.definition
            definitionLabel.text = wordLabel
            definitionText.text = wordDefinition
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        // Inside `viewDidLoad`, call `updateViews()`.
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

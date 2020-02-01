//
//  DefinitionViewController.swift
//  Swift Vocabulary
//
//  Created by Robert on 1/28/20.
//  Copyright © 2020 Robs Creations. All rights reserved.
//

import UIKit

class DefinitionViewController: UIViewController {
    @IBOutlet weak var Label: UILabel!
    @IBOutlet weak var Definiton: UITextView!
    
    var vocabWord: VocabularyWord?
    override func viewDidLoad() {
        super.viewDidLoad()
        updateViews()
        
        
        // Do any additional setup after loading the view.
    }
func updateViews() {
    if let unWrapVocabWord = vocabWord {
        Label.text = unWrapVocabWord.word
        Definiton.text = unWrapVocabWord.definition
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

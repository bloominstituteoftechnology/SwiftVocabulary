//
//  DefinitionViewController.swift
//  Swift Vocabulary
//
//  Created by Rohan Taylor on 12/9/19.
//  Copyright © 2019 Rohan Taylor. All rights reserved.
//

import UIKit

class DefinitionViewController: UIViewController {

    var vocabWord: VocabularyWord?
    
    @IBOutlet weak var wordLabel: UILabel!
    @IBOutlet weak var wordDefinition: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateViews()
        // Do any additional setup after loading the view.
    }
    
    func updateViews(){
    if let unwrappedWord = vocabWord {
        wordLabel.text = unwrappedWord.word
        wordDefinition.text = unwrappedWord.definition
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

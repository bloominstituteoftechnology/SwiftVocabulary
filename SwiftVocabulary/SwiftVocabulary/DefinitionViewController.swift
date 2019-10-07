//
//  DefinitionViewController.swift
//  SwiftVocabulary
//
//  Created by Thomas Bernard Leonard II on 10/7/19.
//  Copyright © 2019 Thomas Bernard Leonard II. All rights reserved.
//

import UIKit

class DefinitionViewController: UIViewController {
    
    var vocabWord: VocabularyWord?
    @IBOutlet weak var definitionTextField: UITextView!
    @IBOutlet weak var wordLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        updateViews()
    }
    
    func updateViews() {
        if let vocabWord = vocabWord {
            self.wordLabel.text = vocabWord.word
            self.definitionTextField.text = vocabWord.definition
            
//            UITextView = vocabWord.definition
        }
    }


    // MARK: - Navigation

//    // In a storyboard-based application, you will often want to do a little preparation before navigation
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        // Get the new view controller using segue.destination.
//        // Pass the selected object to the new view controller.
//    }


}

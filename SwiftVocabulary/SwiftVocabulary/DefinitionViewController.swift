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
        updateViews()
    }
    
    func updateViews() {
        if let vocabWordChoose = vocabWord {
            self.wordLabel.text = vocabWordChoose.word
            self.definitionTextField.text = vocabWordChoose.definition
        }
    }


    // MARK: - Navigation

//    // In a storyboard-based application, you will often want to do a little preparation before navigation
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        // Get the new view controller using segue.destination.
//        // Pass the selected object to the new view controller.
//    }


}

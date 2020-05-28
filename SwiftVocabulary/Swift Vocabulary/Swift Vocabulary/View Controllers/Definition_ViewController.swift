//
//  DefinitionViewController.swift
//  Swift Vocabulary
//
//  Created by Christian Lee on 5/20/20.
//  Copyright © 2020 Christian Lee. All rights reserved.
//

import UIKit


class Definition_ViewController: UIViewController {
    @IBOutlet weak var wordLabel: UILabel!
    @IBOutlet weak var definitionsLabel: UITextView!
    
    
    var vocabWord: VocabularyWord?
    override func viewDidLoad() {
        super.viewDidLoad()
        updateViews()
        // Do any additional setup after loading the view.
    }
    
    func updateViews() {
        if let unwrappedVocabWord = vocabWord {
            self.definitionsLabel.text = unwrappedVocabWord.definition
            self.wordLabel.text =
            unwrappedVocabWord.word
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

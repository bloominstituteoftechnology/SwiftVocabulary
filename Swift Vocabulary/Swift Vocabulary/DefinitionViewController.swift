//
//  DefinitionViewController.swift
//  Swift Vocabulary
//
//  Created by morse on 10/7/19.
//  Copyright © 2019 morse. All rights reserved.
//

import UIKit

class DefinitionViewController: UIViewController {
    @IBOutlet var wordLabel: UILabel!
    @IBOutlet var definitionTextView: UITextView!
    
    var vocabWord: VocabularyWord?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        updateViews()
    }
    
    func updateViews() {
        guard let vocabWord = vocabWord else { return }
        wordLabel.text = vocabWord.word
        definitionTextView.text = vocabWord.definition
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

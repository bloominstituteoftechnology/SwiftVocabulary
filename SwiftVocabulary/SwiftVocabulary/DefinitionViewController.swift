//
//  DefinitionViewController.swift
//  SwiftVocabulary
//
//  Created by Craig Swanson on 9/18/19.
//  Copyright © 2019 Craig Swanson. All rights reserved.
//

import UIKit

class DefinitionViewController: UIViewController {

    @IBOutlet weak var wordToDefine: UILabel!
    @IBOutlet weak var wordDefinition: UITextView!
    
    var vocabWord: VocabularyWord?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        updateViews()
    }
    
    func updateViews() {
        guard let vocabWord = vocabWord else {
            return
        }
        wordToDefine.text = vocabWord.word
        wordDefinition.text = vocabWord.definition
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

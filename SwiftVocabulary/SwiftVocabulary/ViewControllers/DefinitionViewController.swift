//
//  DefinitionViewController.swift
//  SwiftVocabulary
//
//  Created by Lambda_School_Loaner_259 on 1/29/20.
//  Copyright © 2020 DeVitoC. All rights reserved.
//

import UIKit

class DefinitionViewController: UIViewController {
    
    @IBOutlet weak var word: UILabel!
    @IBOutlet weak var definition: UITextView!
    
    var vocabWord: VocabularyWord?

    override func viewDidLoad() {
        super.viewDidLoad()

        updateViews()
    }
    
    func updateViews() {
        if let vocabWord = vocabWord {
            word.text = vocabWord.word
            definition.text = vocabWord.definition
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

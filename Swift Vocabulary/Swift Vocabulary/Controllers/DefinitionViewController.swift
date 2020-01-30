//
//  DefinitionViewController.swift
//  Swift Vocabulary
//
//  Created by Waseem Idelbi on 11/13/19.
//  Copyright © 2019 Waseem Idelbi. All rights reserved.
//

import UIKit

class DefinitionViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        updateViews()
    }
    
    var vocabWord: VocabularyWord?
    
    func updateViews() {
        guard let word = vocabWord else {return}
        wordLabel.text = word.word
        wordDefinition.text = word.definition
    }
    
    @IBOutlet var wordLabel: UILabel!
    @IBOutlet var wordDefinition: UITextView!
    
    
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

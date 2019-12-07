//
//  DefinitionViewController.swift
//  Swift Vocabulary
//
//  Created by Kenny on 12/5/19.
//  Copyright © 2019 Hazy Studios. All rights reserved.
//

import UIKit

class DefinitionViewController: UIViewController {
    //MARK: @IBOutlets
    @IBOutlet weak var wordLabel: UILabel!
    @IBOutlet weak var definitionField: UITextView!
    
    var vocabWord: VocabularyWord?
    
    func updateViews() {
        if let vocabWord = vocabWord {
            self.wordLabel.text = vocabWord.word
            self.definitionField.text = vocabWord.definition
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.definitionField.layer.cornerRadius = 8
        updateViews()
        // Do any additional setup after loading the view.
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

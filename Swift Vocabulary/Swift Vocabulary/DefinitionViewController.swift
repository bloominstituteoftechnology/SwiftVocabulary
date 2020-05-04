//
//  DefinitionViewController.swift
//  Swift Vocabulary
//
//  Created by Lambda_School_Loaner_204 on 10/7/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class DefinitionViewController: UIViewController {
    
    // Properties
    @IBOutlet weak var vocabWordLabel: UILabel!
    @IBOutlet weak var vocabWordDefinitionTV: UITextView!
    
    var vocabWord: VocabularyWord?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        updateViews()
    }
    
    func updateViews() {
        if let vocabWord = vocabWord {
            vocabWordLabel.text = vocabWord.word
            vocabWordDefinitionTV.text = vocabWord.definition
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

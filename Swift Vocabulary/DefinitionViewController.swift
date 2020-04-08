//
//  DefinitionViewController.swift
//  Swift Vocabulary
//
//  Created by Kenneth Jones on 4/8/20.
//  Copyright © 2020 Kenneth Jones. All rights reserved.
//

import UIKit

class DefinitionViewController: UIViewController {
    
    var vocabWord: VocabularyWord?
    
    @IBOutlet weak var defLabel: UILabel!
    
    @IBOutlet weak var defTextView: UITextView!
    

    override func viewDidLoad() {
        super.viewDidLoad()

        updateViews()
    }
    
    func updateViews() {
        if let word = vocabWord {
            defLabel.text = word.word
            defTextView.text = word.definition
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

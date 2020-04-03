//
//  DefinitionViewController.swift
//  Swift Vocabulary
//
//  Created by Chris Dobek on 3/16/20.
//  Copyright © 2020 Chris Dobek. All rights reserved.
//

import UIKit

class DefinitionViewController: UIViewController {
    
    var vocabWord: VocabularyWord?
    
    @IBOutlet weak var vocabWordLabel: UILabel!
    
    
    @IBOutlet weak var vocabWordDefinitionTextView: UITextView!
    
    func updateViews() {
        if let vocabWord = vocabWord {
            vocabWordLabel.text = vocabWord.word
            vocabWordDefinitionTextView.text = vocabWord.definition
    }
}

        override func viewDidLoad() {
        super.viewDidLoad()
        
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


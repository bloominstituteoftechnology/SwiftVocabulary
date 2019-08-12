//
//  DefinitionViewController.swift
//  Swift Vocabulary
//
//  Created by Ciara Beitel on 8/12/19.
//  Copyright © 2019 Ciara Beitel. All rights reserved.
//

import UIKit

class DefinitionViewController: UIViewController {
    
    var vocabWord: VocabularyWord?
    
    @IBOutlet weak var vocabWordLabel: UILabel!
    
    @IBOutlet weak var definitionTextView: UITextView!
    
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
    
    func updateViews() {
        if let vocabWord = vocabWord {
            vocabWordLabel?.text = vocabWord.word
            definitionTextView?.text = vocabWord.definition
        }
    }

}

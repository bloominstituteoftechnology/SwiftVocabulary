//
//  DefinitionViewController.swift
//  Swift Vocabulary
//
//  Created by Sam Gutierrez on 5/20/20.
//  Copyright © 2020 Sam Gutierrez.inc. All rights reserved.
//

import UIKit

class DefinitionViewController: UIViewController {
    
    
    @IBOutlet weak var wordOutlet: UILabel!
    @IBOutlet weak var definitionOutlet: UITextView!
    
    var vocabWord: VocabularyWord?
    
    func updateViews() {
        if vocabWord != nil {
            wordOutlet.text = vocabWord?.word
            definitionOutlet.text = vocabWord?.definition
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        updateViews()
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

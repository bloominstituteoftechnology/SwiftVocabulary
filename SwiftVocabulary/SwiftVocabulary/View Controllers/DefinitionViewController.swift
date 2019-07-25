//
//  DefinitionViewController.swift
//  SwiftVocabulary
//
//  Created by Joel Groomer on 7/23/19.
//  Copyright © 2019 Julltron. All rights reserved.
//

import UIKit

class DefinitionViewController: UIViewController {

    @IBOutlet weak var lblWord: UILabel!
    @IBOutlet weak var txtvDefinition: UITextView!
    
    var vocabularyWord: VocabularyWord?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if let vocabularyWord = vocabularyWord {
            lblWord.text = vocabularyWord.word
            txtvDefinition.text = vocabularyWord.definition
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

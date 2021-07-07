//
//  DefinitionViewController.swift
//  SwiftVocabulary
//
//  Created by Tobi Kuyoro on 04/11/2019.
//  Copyright © 2019 Tobi Kuyoro. All rights reserved.
//

import UIKit

class DefinitionViewController: UIViewController {
    
    var vocabWord: VocabularyWord?

    @IBOutlet weak var viewLabel: UILabel!
    @IBOutlet weak var viewText: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateViews()

        // Do any additional setup after loading the view.
    }
    func updateViews() {
        if let vocabDef = vocabWord {
            title = vocabDef.word
            viewText.text = vocabDef.definition
            viewLabel.text = vocabDef.word
            
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

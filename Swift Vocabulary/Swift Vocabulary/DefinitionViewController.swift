//
//  DefinitionViewController.swift
//  Swift Vocabulary
//
//  Created by Blake Andrew Price on 7/15/19.
//  Copyright © 2019 Blake Andrew Price. All rights reserved.
//

import UIKit

class DefinitionViewController: UIViewController {

    @IBOutlet weak var theWordLabel: UILabel!
    @IBOutlet weak var theDefinitionTextView: UITextView!
    override func viewDidLoad() {
        super.viewDidLoad()
        updateViews()
        // Do any additional setup after loading the view.
    }
    
    var vocabWord: VocabularyWord? = nil
    
    func updateViews() {
        if let word = vocabWord {
            theWordLabel.text = word.word
            theDefinitionTextView.text = word.definition
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

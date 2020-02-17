//
//  DefinitionViewController.swift
//  Swift Vocabulary
//
//  Created by Samuel Esserman on 2/17/20.
//  Copyright © 2020 Samuel Esserman. All rights reserved.
//

import UIKit

class DefinitionViewController: UIViewController {

    @IBOutlet weak var wordLabel: UILabel!
    @IBOutlet weak var definitionLabel: UITextView!
    
    var vocabWord: VocabularyWord?
    
    override func viewDidLoad() {
        super.viewDidLoad()
         updateViews()
        // Do any additional setup after loading the view.
    }
    
    func updateViews() {
        guard let word = vocabWord else { return }
        
        wordLabel.text = word.word
        definitionLabel.text = word.definition
        
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

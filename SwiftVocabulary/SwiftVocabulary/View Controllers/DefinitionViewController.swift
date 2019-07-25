//
//  DefinitionViewController.swift
//  SwiftVocabulary
//
//  Created by Casualty on 7/24/19.
//  Copyright © 2019 Thomas Dye. All rights reserved.
//

import UIKit

class DefinitionViewController: UIViewController {
    
    var cellWord: VocabularyWord?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateView()
    }
    
    func updateView() {
        if let cellWord = cellWord {
            
            title = cellWord.word
            wordLabel.text = cellWord.word
            wordDefinitionTextView.text = cellWord.definition
            wordExampleLabel.text = cellWord.example
            
        }
    }
    
    @IBOutlet weak var wordLabel: UILabel!
    
    @IBOutlet weak var wordDefinitionTextView: UITextView!

    @IBOutlet weak var wordExampleLabel: UILabel!
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

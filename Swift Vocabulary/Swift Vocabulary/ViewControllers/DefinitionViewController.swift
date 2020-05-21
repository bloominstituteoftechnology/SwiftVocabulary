//
//  DefinitionViewController.swift
//  Swift Vocabulary
//
//  Created by Dojo on 5/20/20.
//  Copyright © 2020 Dojo. All rights reserved.
//

import UIKit

class DefinitionViewController: UIViewController {
    @IBOutlet var termLabel: UILabel!
    @IBOutlet var definitionTextView: UITextView!
    
    var word: VocabularyWord?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpViews()
        // Do any additional setup after loading the view.
    }
    func setUpViews() {
        guard let word = word else { return }
        termLabel.text = word.word
        definitionTextView.text = word.definition
        
        
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




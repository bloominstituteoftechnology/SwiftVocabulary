//
//  DefinitionViewController.swift
//  Swift Vocabulary
//
//  Created by Bryan Cress on 5/12/20.
//  Copyright © 2020 Bryan Cress. All rights reserved.
//

import UIKit

class DefinitionViewController: UIViewController {
    
    var vocabWord: VocabularyWord?
    
    //MARK: Properties
    
    @IBOutlet weak var nameLabel: UILabel!
    
    
    @IBOutlet weak var nameTextView: UITextView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateViews()
    }
        func updateViews() {
            if let vocabWord = vocabWord {
                nameLabel.text = vocabWord.word
                nameTextView.text = vocabWord.definition
            }
        }
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


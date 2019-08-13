//
//  DefinitionViewController.swift
//  VocabApp
//
//  Created by William Chen on 8/12/19.
//  Copyright © 2019 William Chen. All rights reserved.
//

import UIKit

class DefinitionViewController: UIViewController {
    @IBOutlet weak var textViewOutlet: UITextView!
    @IBOutlet weak var labelAction: UILabel!
    
    var vocabWord: VocabularyWord?
    
    override func viewDidLoad() {
            super.viewDidLoad()
        
        UpdateViews()
    }
    
    func UpdateViews(){
        if let vocabWord = vocabWord{
            textViewOutlet.text = vocabWord.definition
            labelAction.text = vocabWord.word
            
        }
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



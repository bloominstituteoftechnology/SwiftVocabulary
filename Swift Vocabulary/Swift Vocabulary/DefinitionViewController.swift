//
//  DefinitionViewController.swift
//  Swift Vocabulary
//
//  Created by Nichole Davidson on 1/20/20.
//  Copyright © 2020 Nichole Davidson. All rights reserved.
//

import UIKit

class DefinitionViewController: UIViewController {
    
    var vocabWord: VocabularyWord?
    
    func updateViews() {
        if let unwrappedVocabWord = cellVocabWord {
            label = unwrappedVocabWord.word
            
            
        }
    }
    
    //Mark: Properties
    @IBOutlet weak var wordTextField: UILabel!
    
    @IBOutlet weak var wordDefinitionTextField: UITextView!
    
//    override func viewDidLoad() {
//        super.viewDidLoad()

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


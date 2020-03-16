//
//  DefinitionViewController.swift
//  Swift Vocabulary
//
//  Created by Dahna on 3/16/20.
//  Copyright © 2020 Dahna Buenrostro. All rights reserved.
//

import UIKit

class DefinitionViewController: UIViewController {
    
    var vocabWord: VocabularyWord?
    
      @IBOutlet weak var labelOutlet: UILabel!
      @IBOutlet weak var textViewOutlet: UITextView!
      
      func updateViews() {
          if let unwrappedWord = vocabWord {
              labelOutlet.text = unwrappedWord.word
              textViewOutlet.text = unwrappedWord.definition
          }
      }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateViews()
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

}

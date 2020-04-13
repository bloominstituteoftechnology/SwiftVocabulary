//
//  DefinitionViewController.swift
//  Swift Vocabulary
//
//  Created by Violet Lavender Love on 4/13/20.
//  Copyright © 2020 Love. All rights reserved.
//

import UIKit

class DefinitionViewController: UIViewController {
  
    @IBOutlet var wordOutlet: UILabel!
    
    @IBOutlet var definitionOutlet: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateViews()

        // Do any additional setup after loading the view.
    }
    var word: VocabularyWord?
      func updateViews() {
          if let unwrappedWord = word {
              wordOutlet.text = unwrappedWord.word
              definitionOutlet.text = unwrappedWord.definition
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

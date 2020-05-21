//
//  DefinitionViewController.swift
//  Swift Vocabulary
//
//  Created by Gladymir Philippe on 5/20/20.
//  Copyright © 2020 Gladymir Philippe. All rights reserved.
//

import UIKit

class DefinitionViewController: UIViewController {

    var vocabWord: VocabularyWord?
    
    func updateViews() {
        
                if let unwrappedVocabWord = vocabWord {
                     self.LavelView.text = unwrappedVocabWord.word
                     self.TextView.text = unwrappedVocabWord.definition
                   }
    }
    @IBOutlet weak var TextView: UITextView!
    @IBOutlet weak var LavelView: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        updateViews()
    }
    

    //
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
  //  override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    //}
    

}

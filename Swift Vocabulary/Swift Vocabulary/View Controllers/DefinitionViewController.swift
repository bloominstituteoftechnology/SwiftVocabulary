//
//  DefinitionViewController.swift
//  Swift Vocabulary
//
//  Created by denis cedeno on 9/18/19.
//  Copyright © 2019 DenCedeno Co. All rights reserved.
//

import UIKit

class DefinitionViewController: UIViewController {
    var vocabWord: VocabularyWord?
    
    @IBOutlet weak var definitionViewTextLabel: UILabel!
    @IBOutlet weak var definitionViewTextView: UITextView!
    
    func updateViews(){
        if let vocabWords = vocabWord{
            self.definitionViewTextLabel.text = vocabWords.word
            self.definitionViewTextView.text = vocabWords.definition
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

//
//  DefinitionViewController.swift
//  Swift Vocabulary
//
//  Created by Alfredo on 8/27/19.
//  Copyright © 2019 testtest123. All rights reserved.
//
import UIKit

class DefinitionViewController: UIViewController {

    var vocabWord: VocabularyWord?
    
    @IBOutlet var definitionLabel: UILabel!
    @IBOutlet var definitionText: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Inside viewDidLoad, call updateViews().
        updateViews()
    }
    // Add a method called updateViews().
    func updateViews(){
        // In this method, unwrap the vocabWord property. If it is not nil, use its word and definition properties to populate the label and text view.
        if let word = vocabWord{
            self.definitionLabel.text = word.word
            self.definitionText.text = word.definiton
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

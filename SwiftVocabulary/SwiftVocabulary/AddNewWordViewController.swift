//
//  AddNewWordViewController.swift
//  SwiftVocabulary
//
//  Created by John McCants on 5/20/20.
//  Copyright © 2020 John McCants. All rights reserved.
//

import UIKit

class AddNewWordViewController: UIViewController {
    @IBOutlet weak var addWordTextField: UITextField!
    @IBOutlet weak var addDefintionTextField: UITextField!
    @IBOutlet weak var addNewWordButton: UIButton!
    
    var newVocabWord : VocabularyWord?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func addButtonTapped(_ sender: Any) {
        performSegue(withIdentifier: "AddNewWord", sender: addNewWordButton)
    }
    
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "AddNewWord" {
            
            guard let destinationVC = segue.destination as? WordsTableViewController else {
                return
            }
            
            guard let newWord = addWordTextField.text, let newDefintion = addDefintionTextField.text else {
                return
            }
            
            destinationVC.vocabWords.append(VocabularyWord(word: newWord, definition: newDefintion))
            
            

            
        }
    }
    

}

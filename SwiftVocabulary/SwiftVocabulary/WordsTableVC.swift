//
//  WordsTableVC.swift
//  SwiftVocabulary
//
//  Created by Norlan Tibanear on 5/20/20.
//  Copyright © 2020 Norlan Tibanear. All rights reserved.
//

import UIKit

class WordsTableVC: UITableViewController, UITextFieldDelegate {
    
    
    var vocabWords: [VocabularyWord] = [VocabularyWord(word: "Function", definition: "Functions are self-contained chunks of code that perform a specific task."), VocabularyWord(word: "Variable", definition: "Provides us with named storage that our programs can manipulate."), VocabularyWord(word: "Contants", definition: "Constants refer to fixed values that a program may not alter during its execution."), VocabularyWord(word: "Properties", definition: "Properties associate values with a particular class, structure, or enumeration.")]
    

    override func viewDidLoad() {
        super.viewDidLoad()

        title = "Swift Vocabulary"
        navigationController?.navigationBar.prefersLargeTitles = true
    }
    
    // ALERT
    
    @IBAction func alertButton_TouchUpInside(_ sender: UIBarButtonItem) {
        
        let alertController = UIAlertController(title: "Add Word", message: "Please add a new word and the meaning", preferredStyle: .alert)
        
        alertController.addTextField { (_ textField: UITextField) -> Void in
            textField.placeholder = "Enter new word"
            textField.textAlignment = .center
            textField.textColor = UIColor.blue
        }
        
        alertController.addTextField { (_ textField: UITextField) -> Void in
            textField.placeholder = "Enter meaning"
            textField.textAlignment = .center
            textField.textColor = UIColor.blue
        }
        
        let cancelButton = UIAlertAction(title: "Cancel", style: .cancel, handler: nil)
        let saveButton = UIAlertAction(title: "Add", style: .default, handler: nil)
        
        
        alertController.addAction(cancelButton)
        alertController.addAction(saveButton)
        
        
        self.present(alertController, animated: true, completion: nil)
        
    } // END Alert
    
    
    
    

    // MARK: - Table view data source


    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return vocabWords.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "WordCell", for: indexPath)

        cell.textLabel?.text = vocabWords[indexPath.row].word

        return cell
    }

 // Prepare for SEGUE
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "ShowDefinitionSegue" {
            
            guard let indexPath = tableView.indexPathForSelectedRow,
                let definitionWordVC = segue.destination as? DefinitionVC else { return }
            
            definitionWordVC.vocabWords = vocabWords[indexPath.row]
        }
    }
    

}

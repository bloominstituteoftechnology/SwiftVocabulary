//
//  WordsTableViewController.swift
//  Swift Vocabulary
//
//  Created by Clayton Watkins on 4/8/20.
//  Copyright © 2020 Clayton Watkins. All rights reserved.
//

import UIKit

class WordsTableViewController: UITableViewController {
    
    //Our Vocab Words
    var vocabWords : [VocabularyWord] = [
        VocabularyWord(word: "Variable", definition: "A named value used to store information. Variables can be changed after being created."),
        VocabularyWord(word: "Constant", definition: "A named value used to store information. Constants can not be changed after being created."),
        VocabularyWord(word: "Function", definition: "Functions are self-contained chunks of code that perform a specific task. You give a function a name that identifies what it does, and this name is used to “call” the function to perform its task when needed.")
    ]
    
    //There are only 3 Vocabulary words, so we only need 3 cells
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return 3
    }
    
    //Enabling the cells to display the content in our array
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "WordCell", for: indexPath)
        
        // Configure the cell...
        let vocabWord = vocabWords[indexPath.row]
        cell.textLabel?.text = vocabWord.word
        return cell
    }
    
    // MARK: - Navigation
    
    //Preparing the segue to the Definition View Controller
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        if segue.identifier == "ShowDefinitionSegue"{
            if let definitionVC = segue.destination as? DefinitonViewController,
                let indexPath = self.tableView.indexPathForSelectedRow{
               
                definitionVC.vocabWord = vocabWords[indexPath.row]
            }
            
        }
        // Pass the selected object to the new view controller.
    }
    
    
}

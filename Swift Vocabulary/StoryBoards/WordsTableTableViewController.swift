//
//  WordsTableTableViewController.swift
//  Swift Vocabulary
//
//  Created by Kelson Hartle on 4/13/20.
//  Copyright © 2020 Kelson Hartle. All rights reserved.
//

import UIKit

class WordsTableTableViewController: UITableViewController {
    
    var vocabWords: [VocabularyWord] = [VocabularyWord(name: "Variable", definition: "A variable is a value that can change, depending on conditions or on information passed to the program."), VocabularyWord(name: "Constant", definition: "A constant is a value that cannot be altered by the program during normal execution."), VocabularyWord(name: "Function", definition: "A named section of a program that performs a specific task. In this sense, a function is a type of procedure or routine. ")]

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return vocabWords.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "WordCell", for: indexPath)
        let word = vocabWords[indexPath.row]
        
        cell.textLabel?.text = word.name
        
        return cell
    }
    

   
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "ShowDefinitionSegue"{
            
            guard let indexPath = tableView.indexPathForSelectedRow else { return }
            
            let vocabWord = vocabWords[indexPath.row]
            
            guard let definitionVC = segue.destination as? DefinitionViewController else { return }
            
            definitionVC.vocabWord = vocabWord
        }
        
        
    }
    

}

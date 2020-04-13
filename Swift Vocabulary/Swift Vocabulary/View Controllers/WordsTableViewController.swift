//
//  WordsTableViewController.swift
//  Swift Vocabulary
//
//  Created by Kelson Hartle on 4/13/20.
//  Copyright © 2020 Kelson Hartle. All rights reserved.
//

import UIKit

class WordsTableViewController: UITableViewController {
    
    var vocabWords: [Vocab] = [Vocab(name: "Variable", definition: "A value that can change, depending on conditions or on information passed to the program."), Vocab(name: "Constant", definition: "A value that cannot be altered by the program during normal execution."), Vocab(name: "Function", definition: "A named section of a program that performs a specific task. In this sense, a function is a type of procedure or routine. ")]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    // MARK: - Table view data source
    
    
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return vocabWords.count
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "WordCell", for: indexPath)
        
        
        // Configure the cell...
        let word = vocabWords[indexPath.row]
        
        cell.textLabel?.text = word.name
        
        return cell
    }
    
    
    
    // MARK: - Navigation
    
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "ShowDefinitionSegue" {
            
            guard let indexPath = tableView.indexPathForSelectedRow else { return }
            
            let vocabWord = vocabWords[indexPath.row]
            
            guard let definitionVC = segue.destination as? DefinitionViewController else {
                return
            }
            
            definitionVC.vocabWord = vocabWord
            
        }
        
        
    }
}




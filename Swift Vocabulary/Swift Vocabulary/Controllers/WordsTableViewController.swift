//
//  WordsTableViewController.swift
//  Swift Vocabulary
//
//  Created by Tobi Kuyoro on 09/12/2019.
//  Copyright © 2019 Tobi Kuyoro. All rights reserved.
//

import UIKit

class WordsTableViewController: UITableViewController {
    
    // MARK: - Table view data source
    
    var vocabController = VocabularyWordController()
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        tableView.reloadData()
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return vocabController.vocabWords.count
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "WordCell", for: indexPath)
        
        // Configure the cell...
        
        let text = vocabController.vocabWords[indexPath.row]
        
        cell.textLabel?.text = text.word
        
        return cell
    }
    
    // MARK: - Navigation
    
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "ShowDefinitionSegue" {
            if let definitionVC = segue.destination as? DefinitionViewController,
                let indexPath = tableView.indexPathForSelectedRow {
                
                let word = vocabController.vocabWords[indexPath.row]
                definitionVC.vocabWord = word
            }
        } else if segue.identifier == "NewWordSegue" {
            if let newWordVC = segue.destination as? NewWordViewController {
                newWordVC.vocabController = vocabController
            }
        }
    }
}

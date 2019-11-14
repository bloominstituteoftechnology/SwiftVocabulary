//
//  WordsTableViewController.swift
//  Swift Vocabulary
//
//  Created by David Wright on 11/13/19.
//  Copyright © 2019 David Wright. All rights reserved.
//

import UIKit

class WordsTableViewController: UITableViewController {
    
    var vocabController = VocabController()
    
    @IBAction func addNewWordButton(_ sender: UIBarButtonItem) {
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK: - Table view data source
 
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return vocabController.vocabWords.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "WordCell", for: indexPath)
        
        cell.textLabel?.text = vocabController.vocabWords[indexPath.row].word

        return cell
    }

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            vocabController.vocabWords.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    

    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        // Get the new view controller using segue.destination.
        if segue.identifier == "ShowDefinitionSegue" {
            guard let cell = tableView.indexPathForSelectedRow, let definitionVC = segue.destination as? DefinitionViewController else { return }
            
            // Pass the selected object to the new view controller.
            definitionVC.vocabWord = vocabController.vocabWords[cell.row]
        }
    }
    
}

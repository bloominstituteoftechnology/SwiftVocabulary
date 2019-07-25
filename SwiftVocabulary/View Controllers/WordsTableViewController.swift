//
//  WordsTableViewController.swift
//  SwiftVocabulary
//
//  Created by Vici Shaweddy on 7/22/19.
//  Copyright © 2019 Vici Shaweddy. All rights reserved.
//

import UIKit

class WordsTableViewController: UITableViewController {

    var vocabController = VocabularyController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

//    override func numberOfSections(in tableView: UITableView) -> Int {
//        // #warning Incomplete implementation, return the number of sections
//        return
//    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return vocabController.vocabWords.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "WordCell", for: indexPath)

        let word = vocabController.vocabWords[indexPath.row]
        
        cell.textLabel?.text = word.word

        return cell
    }

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "ShowDefinitionSegue" {
            guard let detailVocabVC = segue.destination as? DefinitionViewController else {
                return
            }
            
            guard let indexPath = tableView.indexPathForSelectedRow else {
                return
            }

            let word = self.vocabController.vocabWords[indexPath.row]
            detailVocabVC.vocabWord = word
        }
    }
    
    @IBAction func addButton(_ sender: Any) {
        let alert = UIAlertController(title: "Add Vocabulary", message: nil, preferredStyle: .alert)
        
        alert.addTextField { (textField) in
            textField.placeholder = "Add a word"
        }
        
        alert.addTextField { (textField) in
            textField.placeholder = "Add a definition"
        }
        
        alert.addAction(UIAlertAction(title: "Save", style: .default, handler: { [weak self] action in
            guard let word = alert.textFields?.first?.text,
                let definition = alert.textFields?.last?.text else {
                    return
            }
            
            let newWord = VocabularyWord(word: word, definition: definition)
            self?.vocabController.addVocab(newWord)
            self?.tableView.reloadData()
        }))
        
        alert.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: nil))
        
        self.present(alert, animated: true, completion: nil)
    }
    
}

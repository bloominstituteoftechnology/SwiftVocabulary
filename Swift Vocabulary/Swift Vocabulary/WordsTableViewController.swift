//
//  WordsTableViewController.swift
//  Swift Vocabulary
//
//  Created by Patrick Millet on 11/4/19.
//  Copyright © 2019 Patrick Millet. All rights reserved.
//

import UIKit

var vocabularyWord: [VocabularyWord] = [
                            VocabularyWord(title: "Challenging", definition: "Testing one's abilities; demanding"),
                            VocabularyWord(title: "Swift", definition: "Happening quickly, or promptly; The best coding language"),
                            VocabularyWord(title: "Et Cetera", definition: "Used at the end of a list to indicate that further, similar items are included."),
                            VocabularyWord(title: "Dungeon", definition: "A strong underground prison cell, especially in a castle."),]

class WordsTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source


    
    
    @IBAction func addButtonTapped(_ sender: Any) {
        let alert = UIAlertController(title: "Add a Word?", message: "Type the word and definition.", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "Add", style: .default, handler: { (_) in
                self.add(title: alert.textFields?[0].text ?? "", definition: alert.textFields?[1].text ?? "")
            }))
            alert.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: nil))
            alert.addTextField(configurationHandler: { textfield in textfield.placeholder = "Word" })
            alert.addTextField(configurationHandler: { textfield in textfield.placeholder = "Definition" })

            self.present(alert, animated: true, completion: nil)
        }

        func add(title: String, definition: String) {
            if !title.isEmpty && !definition.isEmpty {
                vocabularyWord.append(VocabularyWord(title: title, definition: definition))
                tableView.reloadData()
            }
        
    }
    
    
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return vocabularyWord.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "WordCell", for: indexPath)

        // Configure the cell...
        let wordCell = vocabularyWord[indexPath.row]
        
        cell.textLabel?.text = wordCell.title
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
        
        if let indexPath = tableView.indexPathForSelectedRow, let vocabWordVC = segue.destination as? DefinitionViewController {
                    
            let title = vocabularyWord[indexPath.row]
            vocabWordVC.vocabWord = title
        }
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        }
    }
}

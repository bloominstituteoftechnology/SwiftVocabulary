//
//  WordsTableViewController.swift
//  Swift Vocabulary
//
//  Created by Bradley Yin on 6/12/19.
//  Copyright © 2019 bradleyyin. All rights reserved.
//

import UIKit

class WordsTableViewController: UITableViewController {
    let vocabularyController = VocabularyController()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        print(vocabularyController.vocabWords)

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return vocabularyController.vocabWords.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "wordCell", for: indexPath)

        cell.textLabel?.text = vocabularyController.vocabWords[indexPath.row].word
       

        return cell
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "ShowDefinition"{
            let definitionVC = segue.destination as? DefinitionViewController
            if let indexPath = tableView.indexPathForSelectedRow{
                definitionVC?.vocabWord = vocabularyController.vocabWords[indexPath.row]
            }
            
        }
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "ShowDefinition", sender: self)
        print(indexPath.row)
    }
    @IBAction func addWordTapped(_ sender: Any) {
        let alertController = UIAlertController(title: "add a word", message: "", preferredStyle: .alert)
        alertController.addTextField { (textField) in
            textField.placeholder = "enter new word"
        }
        alertController.addTextField { (textField) in
            textField.placeholder = "enter definition"
        }
        let addWordAction = UIAlertAction(title: "Add", style: .default) { (action) in
            if let word = alertController.textFields?[0].text, let definition = alertController.textFields?[1].text {
                self.vocabularyController.addWord(word: word, definition: definition)
                print(self.vocabularyController.vocabWords)
                self.tableView.reloadData()
            }
            
            
        }
        let cancelAction = UIAlertAction(title: "cancel", style: .cancel, handler: nil)

        alertController.addAction(addWordAction)
        alertController.addAction(cancelAction)
        
        present(alertController, animated: true)
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

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

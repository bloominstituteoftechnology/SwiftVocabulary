//
//  WordsTableViewController.swift
//  Swift Vocabulary
//
//  Created by Ian French on 4/8/20.
//  Copyright © 2020 Ian French. All rights reserved.
//

import UIKit

class WordsTableViewController: UITableViewController {

   
    var vocabWords: [VocabularyWord] = [
        VocabularyWord(word: "Variable" , definition: "A named value used to store information. Variables can be changed after being created."),
        VocabularyWord(word: "Constant" , definition: "A named value used to store information. Constants cannot be mutated after being created."),
        VocabularyWord(word: "Function" , definition: "Self-contained chunks of code that perform a specific task. You give a function a name that identifies what it does, and this name is used to “call” the function to perform its task when needed.")
        
        
    
    ]
    
    
    
    /*
 override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 0
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 0
    }

 */
    
    
    // How many rows?
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
  
        return vocabWords.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
           let cell = tableView.dequeueReusableCell(withIdentifier: "WordCell", for: indexPath)
           let defined = vocabWords[indexPath.row]
           cell.textLabel?.text = defined.word
         
        
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
        
            guard let definitionVC = segue.destination as? DefinitionViewController else {
                return}
          
    
              guard let indexPath = tableView.indexPathForSelectedRow else {
                return}
        
        let theWord = vocabWords[indexPath.row]
        definitionVC.vocabWord = theWord
        }
       
    }

}

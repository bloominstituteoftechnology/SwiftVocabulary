//
//  WordsTableViewController.swift
//  Swift Vocabulary
//
//  Created by Christian Lee on 5/20/20.
//  Copyright © 2020 Christian Lee. All rights reserved.
//

import UIKit

class WordsTable_ViewController: UITableViewController {
    
    var vocabWords: [VocabularyWord] = [VocabularyWord(word: "Skedaddle", definition: "To run away."), VocabularyWord(word: "Bumfuzzled", definition: "Confusion or bewilderment."), VocabularyWord(word: "Kerfuffle", definition: "A disturbance or commotion.")]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
        

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "WordCell", for: indexPath)
            // Configure the cell...
        cell.textLabel?.text = vocabWords[indexPath.row].word
        
        
        return cell
        
          }
        
        
        
        override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
          // #warning Incomplete implementation, return the number of rows
            return self.vocabWords.count
            
        }
        
        
//          */
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
             Get the new view controller using segue.destination.
             Pass the selected object to the new view controller.
          }
          */

        // Do any additional setup after loading the view.
    
    

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "ShowDefinitionSegue" {
            if let destination = segue.destination as? Definition_ViewController, let indexPath = tableView.indexPathForSelectedRow {
                let word = vocabWords[indexPath.row]
                destination.vocabWord = word
            }
            
        }
        
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    


}

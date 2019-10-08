//
//  WordsTableViewController.swift
//  Swift Vocabulary
//
//  Created by Brandi on 10/7/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class WordsTableViewController: UITableViewController {
    
    var vocabWords: [VocabularyWord] = [VocabularyWord(word:"Nirvana", definition: "a transcendent state in which there is neither suffering, desire, nor sense of self, and the subject is released from the effects of karma and the cycle of death and rebirth. It represents the final goal of Buddhism."), VocabularyWord(word:"Om", definition:"a mystic syllable, considered the most sacred mantra in Hinduism and Tibetan Buddhism. It appears at the beginning and end of most Sanskrit recitations, prayers, and texts."), VocabularyWord(word: "Chakra", definition: "each of the centers of spiritual power in the human body, usually considered to be seven in number"), VocabularyWord(word:"Brahman", definition: "the ultimate reality underlying all phenomena")]
                                        
    
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
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return vocabWords.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "WordCell", for: indexPath)

        // Configure the cell...
        
        cell.textLabel?.text = vocabWords[indexPath.row].word

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
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        



        
        // Check to make sure the segue's identifier is "ShowDefinitionSegue".
        if segue.identifier == "ShowDefinitionSegue" {
            
        // Get the index path for the selected row using tableView.indexPathForSelectedRow.
       // Get the destination DefinitionViewController by conditionally casting segue.destination to             DefinitionViewController.
            
            guard let indexPath = tableView.indexPathForSelectedRow,
            let wordDefinitionVC = segue.destination as? DefinitionViewController else { return }
           
        // Use that index path to get the appropriate VocabularyWord instance from vocabController's vocabWords array.
        // Assign the vocabulary word to the DefinitionViewController's vocabWord property. (defined in DefinitionViewController.swift)
            let wordItem = vocabWords[indexPath.row]
            wordDefinitionVC.vocabWord = wordItem
        }
    }

}

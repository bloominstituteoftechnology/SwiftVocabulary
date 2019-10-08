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

 
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
 
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
           if segue.identifier == "ShowDefinitionSegue" {
            
           guard let indexPath = tableView.indexPathForSelectedRow,
           let wordDefinitionVC = segue.destination as? DefinitionViewController else { return }

            wordDefinitionVC.vocabWord = vocabWords[indexPath.row]
        }
    }

}
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        // Check to make sure the segue's identifier is "ShowDefinitionSegue".
        // Get the index path for the selected row using tableView.indexPathForSelectedRow.
        // Get the destination DefinitionViewController by conditionally casting segue.destination to DefinitionViewController.
        // Use that index path to get the appropriate VocabularyWord instance from vocabController's vocabWords array.
        // Assign the vocabulary word to the DefinitionViewController's vocabWord property. (defined in DefinitionViewController.swift)


//
//  WordsTableViewController.swift
//  Swift Vocabulary
//
//  Created by Aaron Cleveland on 12/9/19.
//  Copyright © 2019 Aaron Cleveland. All rights reserved.
//

import UIKit

class WordsTableViewController: UITableViewController {
    
    var vocabWords: [VocabularyWord] = [VocabularyWord(word: "Butcher", definition: "To kill someone"),
                                        VocabularyWord(word: "Dancing", definition: "To take someone in your arms, and move your body to the music"),
                                         
    
    ]
    

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
        
        cell.textLabel?.text = word.word
        
        return cell
    }

    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        
        if segue.identifier == "ShowDefinitionSegue" {
            // we know we are going to the color detail view controller.
            
            // what are we giving to the new view controller?
            if let indexPath = tableView.indexPathForSelectedRow {
                let wordDetailVC = segue.destination as? DefinitionViewController
                
                let word = vocabWords[indexPath.row]
                wordDetailVC?.vocabWord = word
            }
        }
    }
}

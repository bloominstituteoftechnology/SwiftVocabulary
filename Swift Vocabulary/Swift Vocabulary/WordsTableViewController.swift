//
//  WordsTableTableViewController.swift
//  Swift Vocabulary
//
//  Created by Rohan Taylor on 11/7/19.
//  Copyright © 2019 Rohan Taylor. All rights reserved.
//

import UIKit

class WordsTableTableViewController: UITableViewController {
    
    var vocabWords : [VocabularyWord] = [VocabularyWord(word: "Random", definition: "it means random"),
                                            VocabularyWord(word: "Rohan", definition: "To ascend")]

    override func viewDidLoad() {
        super.viewDidLoad()
        

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

  

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return vocabWords.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "WordCell", for: indexPath)

        // Configure the cell...
        let vocabWord = vocabWords[indexPath.row]
        
        cell.textLabel?.text = vocabWord.word

        return cell
    }

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        
        if segue.identifier == "ShowDefinitionSegue" {
            
            if let indexPath = tableView.indexPathForSelectedRow,
            let wordDefinition = segue.destination as? DefinitionViewController {
                let vocabWord = vocabWords[indexPath.row]
                wordDefinition.word = vocabWord
                
            }
        }
        
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }

}

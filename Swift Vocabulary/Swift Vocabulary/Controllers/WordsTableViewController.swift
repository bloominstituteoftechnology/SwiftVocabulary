//
//  WordsTableViewController.swift
//  Swift Vocabulary
//
//  Created by Joshua Franklin on 8/12/19.
//  Copyright © 2019 AMSU. All rights reserved.
//

import UIKit

class WordsTableViewController: UITableViewController {
    
     var vocabWords: [VocabularyWord] =
        [VocabularyWord(word: "Cheese", definition: "An ingredient for all pizza"),
        VocabularyWord(word: "Porsche", definition: "SportsCar for all drivers who love luxury for speed"),
        VocabularyWord(word: "Football", definition: "An american sport that was first played in Ohio"),
        VocabularyWord(word: "Culinary Arts", definition: "It's a profession that focuses on the production in the food service industry")]

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
        
        let words = vocabWords[indexPath.row]
        
        cell.textLabel?.text = words.word
        
        
        return cell
    }
    
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        
        if segue.identifier == "ShowDefinitionSegue" {
            
            guard let indexPath = tableView.indexPathForSelectedRow,
            let wordDetailVC = segue.destination as? DefinitionViewController else {return}
            
            let selectedWord = vocabWords[indexPath.row]
            
            wordDetailVC.cellWord = selectedWord
            
        }
    }

}

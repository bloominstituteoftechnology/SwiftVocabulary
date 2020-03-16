//
//  WordsTableViewController.swift
//  Swift Vocabulary
//
//  Created by Chris Dobek on 3/16/20.
//  Copyright © 2020 Chris Dobek. All rights reserved.
//

import UIKit

class WordsTableViewController: UITableViewController {
    var vocabWords: [VocabularyWord] = [VocabularyWord(word: "Variable", definition: "A named value that can be changed later"),
                                        VocabularyWord(word: "Constant", definition: "A name value that can't be changed once it is set."),
                                        VocabularyWord(word: "Function", definition: "A chunk of code that performs a specific task.")]


    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return vocabWords.count
    }


    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "WordCell", for: indexPath)

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
            
            
            if let detailVC = segue.destination as? DefinitionViewController,
                let indexPath = tableView.indexPathForSelectedRow {
                   
                   let word = vocabWords[indexPath.row]
                   detailVC.vocabWord = word
            }
        }
}
}

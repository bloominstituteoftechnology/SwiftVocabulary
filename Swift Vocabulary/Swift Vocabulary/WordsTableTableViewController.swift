//
//  WordsTableTableViewController.swift
//  Swift Vocabulary
//
//  Created by Nichole Davidson on 1/20/20.
//  Copyright © 2020 Nichole Davidson. All rights reserved.
//

import UIKit

class WordsTableTableViewController: UITableViewController {
    
    var vocabWords: [VocabularyWord] = [VocabularyWord(word: "Variable", definition: "A named value used to store information. Variables can be changed after being created."),
                                        VocabularyWord(word: "Constant", definition: "A named value used to store information. Constants cannot be changed after being created."),
                                        VocabularyWord(word: "Function", definition: "A self-contained chunk of code that performs a specific task.")]

    

    // MARK: - Table view data source

//    override func numberOfSections(in tableView: UITableView) -> Int {
//        return 1
//    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return vocabWords.count
    }

    //Customizing the vell - set the text of its labels, etc.
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "WordCell", for: indexPath)

        // Configure the cell...
        print(indexPath.row)
        
        let vocabWord = vocabWords[indexPath.row]
        
        cell.textLabel?.text = vocabWord.word

        return cell
    }
    

    
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "ShowDefinitionSegue" {
        
            if let indexPath = tableView.indexPathForSelectedRow,
                let wordDetailVC = segue.destination as? DefinitionViewController {
                
                 let vocabWord = vocabWords[indexPath.row]
                wordDetailVC.vocabWord = vocabWord
            }
    }

}
}

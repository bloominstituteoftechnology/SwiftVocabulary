//
//  WordsTableViewController.swift
//  SwiftVocabulary
//
//  Created by Jonalynn Masters on 9/9/19.
//  Copyright © 2019 Jonalynn Masters. All rights reserved.
//

import UIKit

class WordsTableViewController: UITableViewController {


        var vocabWords: [VocabularyWord] = [VocabularyWord(word: "Variable", definition: "A named value used to store information. Variables can be changed after being created"),
                                           VocabularyWord(word: "Constant", definition: "A named value used to store information. Constants cannot be changed after being created"),
                                           VocabularyWord(word: "Function", definition: "Functions are self-contained chunks of code that perform a specific task. You give a function a name that identifies what it does, and this name is used to “call” the function to perform its task when needed")]
        
    

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return vocabWords.count
    }

   
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "WordCell", for: indexPath)

        // Configure the cell...
            let vocabularyWord = vocabWords[indexPath.row]
            cell.textLabel?.text = vocabularyWord.word
        return cell
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let indexPath = tableView.indexPathForSelectedRow,
            let definitionDetailVC = segue.destination as? DefinitionViewController else { return }
        
        definitionDetailVC.definitionOfWord = vocabWords[indexPath.row]
        
    }

}

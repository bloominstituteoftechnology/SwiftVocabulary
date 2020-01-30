//
//  WordsTableViewController.swift
//  SwiftVocabulary
//
//  Created by Lambda_School_Loaner_259 on 1/29/20.
//  Copyright © 2020 DeVitoC. All rights reserved.
//

import UIKit

class WordsTableViewController: UITableViewController {
    
    var vocabWords: [VocabularyWord] = [
        VocabularyWord(word: "First word", definition: "First definition"),
        VocabularyWord(word: "Second word", definition: "Second definition")]
    

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return vocabWords.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "WordCell", for: indexPath)
        let vocabWord = vocabWords[indexPath.row]
        cell.textLabel?.text = vocabWord.word

        return cell
    }

    // MARK: - Navigation


    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "ShowDefinitionSegue" {
            if let definitionViewController = segue.destination as? DefinitionViewController, let indexPath = tableView.indexPathForSelectedRow {
                let vocabWord = vocabWords[indexPath.row]
                
                definitionViewController.vocabWord = vocabWord
            }
        }
    }

}

//
//  WordsTableViewController.swift
//  SwiftVocabulary
//
//  Created by Lambda_School_Loaner_259 on 1/29/20.
//  Copyright © 2020 DeVitoC. All rights reserved.
//

import UIKit

class WordsTableViewController: UITableViewController {
    
    //definitions from dictionary.com
    var vocabWords: [VocabularyWord] = [
        VocabularyWord(word: "Aarvark", definition: "noun: a large, nocturnal, burrowing mammal."),
        VocabularyWord(word: "Aardwolf", definition: "noun: a striped, hyenalike mammal."),
        VocabularyWord(word: "Aaronic", definition: "adjective: of or relating to Aaron."),
        VocabularyWord(word: "Abacist", definition: "noun: a person skilled in using an abacus."),
        VocabularyWord(word: "Aback", definition: "adverb: toward the back."),
        VocabularyWord(word: "Abalone", definition: "noun: a large mollusk of the genus Haliotis, having a bowllike shell bearing a row of respiratory holes, the flesh of which is used for food and the shell for ornament and as a source of mother-of-pearl.")]
    

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

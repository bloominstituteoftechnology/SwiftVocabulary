//
//  WordsTableViewController.swift
//  Swift Vocabulary
//
//  Created by Kenneth Jones on 4/8/20.
//  Copyright © 2020 Kenneth Jones. All rights reserved.
//

import UIKit

class WordsTableViewController: UITableViewController {
    
    // Words and definitions sourced from https://www.hackingwithswift.com/glossary
    var vocabWords: [VocabularyWord] = [
        VocabularyWord(word: "Boolean", definition: "A data type that stores either true or false."),
        VocabularyWord(word: "Class", definition: "A custom data type that can have one or more properties and one or more methods. Unlike structs, classes are reference types."),
        VocabularyWord(word: "Function", definition: "A named section of your code that performs a specific, reusable task."),
        VocabularyWord(word: "Method", definition: "A function that belongs to a struct or a class."),
        VocabularyWord(word: "Model", definition: "A part of your program that stores data. Part of the Model-View-Controller architecture."),
        VocabularyWord(word: "Nil", definition: "Swift's term for missing data. An optional that has no value will be set to nil."),
        VocabularyWord(word: "Property", definition: "A constant or variable that belongs to a class, struct, or enum."),
        VocabularyWord(word: "Variable", definition: "Any named piece of data in your code that may change when your program runs.")
    ]

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
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
        if segue.identifier == "ShowDefinitionSegue" {
            if let detailVC = segue.destination as? DefinitionViewController,
                let indexPath = self.tableView.indexPathForSelectedRow {
                detailVC.vocabWord = vocabWords[indexPath.row]
            }
        }
    }
    
    @IBAction func addWord(_ unwindSegue: UIStoryboardSegue) {
        guard let sourceVC = unwindSegue.source as? AddItemViewController,
            let newVocabWord = sourceVC.newDef else {
            return
        }
        vocabWords.append(newVocabWord)
        tableView.reloadData()
    }

}

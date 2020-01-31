//
//  WordsTableViewController.swift
//  Swift Vocabulary
//
//  Created by conner on 1/29/20.
//  Copyright © 2020 conner. All rights reserved.
//

import UIKit

class WordsTableViewController: UITableViewController {
    
    var vocabWords: [VocabularyWord] = [
        VocabularyWord(word: "Variable", definition: "Reference for data, can be changed"),
        VocabularyWord(word: "Constant", definition: "Reference for data that cannot be changed"),
        VocabularyWord(word: "Function", definition: "Block of code that can be used to repeatedly perform things")

    ]

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return vocabWords.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "WordCell", for: indexPath)
        let vocab = vocabWords[indexPath.row]
        cell.textLabel?.text = vocab.word
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "ShowDefinitionSegue" {
            guard let definitionViewController = segue.destination as? DefinitionViewController else { return }
            guard let indexPath = tableView.indexPathForSelectedRow else { return }
            definitionViewController.vocabWord = vocabWords[indexPath.row]
        }
    }
}


//
//  WordsTableViewController.swift
//  SwiftVocabulary
//
//  Created by Shawn Gee on 2/16/20.
//  Copyright © 2020 Swift Student. All rights reserved.
//

import UIKit

class WordsTableViewController: UITableViewController {

    var vocabWords = [VocabularyWord]()
    let webScraper =  WebScraper()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        populateVocabWords()
    }
    
    func populateVocabWords() {
        vocabWords += [
            VocabularyWord(word: "Variable", definition: "A name used to store information. Variables can change after being created"),
            VocabularyWord(word: "Constant", definition: "A name used to store information. Unlike variables, constants can not be changed after being created"),
        ]
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        vocabWords.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "WordCell", for: indexPath)
        let vocabWord = vocabWords[indexPath.row]
        cell.textLabel?.text = vocabWord.word

        return cell
    }

    // MARK: - Navigation

    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "ShowDefinitionSegue",
           let definitionViewController = segue.destination as? DefinitionViewController,
           let selectedRow = tableView.indexPathForSelectedRow?.row
        {
            definitionViewController.vocabWord = vocabWords[selectedRow]
        }
    }

}

//
//  WordsTableViewController.swift
//  SwiftVocab
//
//  Created by xcode Mojave on 11/13/19.
//  Copyright © 2019 xcode Mojave. All rights reserved.
//

import UIKit

class WordsTableViewController: UITableViewController {
    
    var vocabWords: [VocabularyWord] = [VocabularyWord(word: "Variable", definition: "A variable provides us with named storage that our programs can manipulate"), VocabularyWord(word: "Constant", definition: "Constants refer to fixed values that a program may not alter during its execution"), VocabularyWord(word: "Function", definition: "Functions are self-contained chunks of code that perform a specific task")]

    override func viewDidLoad() {
        super.viewDidLoad()

        
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return vocabWords.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "WordCell", for: indexPath)

        // Configure the cell...
        let words = vocabWords[indexPath.row]
        cell.textLabel?.text = words.word
        return cell
    }

    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "ShowDefinitionSegue" {
            guard let indexPath = tableView.indexPathForSelectedRow,
            let definitionVC = segue.destination as? DefinitionViewController else { return }
          
            let vocabby = vocabWords[indexPath.row]
            definitionVC.vocabWord = vocabby
        }
        
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }

}

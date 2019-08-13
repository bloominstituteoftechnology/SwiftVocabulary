//
//  WordsTableViewController.swift
//  SwiftVocabulary
//
//  Created by Ryan Dutson on 7/15/19.
//  Copyright © 2019 Ryan Dutson. All rights reserved.
//

import UIKit

class WordsTableViewController: UITableViewController {

    ////////var word: []
    // Properties go here!
    
    var vocabWords: [VocabularyWord] = [VocabularyWord(word: "variable", definition: "A container that holds a value and that can be changed over time."), VocabularyWord(word: "constant", definition: "")]


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

        let vocab = vocabWords[indexPath.row]
        cell.textLabel?.text = vocab.word
        
        return cell
    }

    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "ShowDefinitionSegue" {
            guard let indexPath = tableView.indexPathForSelectedRow,
                let vocabDetailVC = segue.destination as? DefinitionViewController else { return }
            let selectedVocab = vocabWords[indexPath.row]
        
            vocabDetailVC.vocabWord = selectedVocab
        }
        
        
        
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
}

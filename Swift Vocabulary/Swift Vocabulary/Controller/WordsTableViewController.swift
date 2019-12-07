//
//  WordsTableViewController.swift
//  Swift Vocabulary
//
//  Created by Kenny on 12/5/19.
//  Copyright © 2019 Hazy Studios. All rights reserved.
//

import UIKit

class WordsTableViewController: UITableViewController {
    //MARK: @IBActions
    @IBAction func addWordBtn(_ sender: UIBarButtonItem) {
        addWord()
    }
    
    var vocabWords: [VocabularyWord]?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.vocabWords = [
            VocabularyWord(word: "var",
                           definition: "In Swift, a variable is a mutable property."),
            VocabularyWord(word: "let",
                           definition: "In Swift, a let is an immutable property, also known as a constant."),
            VocabularyWord(word: "optional",
                           definition: "Think of a box. You don't know what's in it until you unwrap it. An optional is a property with a value that may be nil (nothing).")
        ]
        self.tableView.reloadData()
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return vocabWords?.count ?? 0
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "WordCell") {
            if let word = self.vocabWords?[indexPath.row] {
                cell.backgroundColor = .systemTeal
                cell.textLabel?.textColor = .systemBackground
                cell.textLabel?.text = word.word
            }
            return cell
        }
        return UITableViewCell()
    }
    
    // MARK: - Navigation
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "ShowDefinitionSegue" {
            if let destination = segue.destination as? DefinitionViewController {
                let selectedRow = tableView.indexPathForSelectedRow
                if let row = selectedRow?.row {
                    if let word = vocabWords?[row] {
                        destination.vocabWord = word
                    }
                }
            }
        }
    }
    
    //MARK: Helper Methods
    
    func addWord() {
        Alert.withInput(title: "Enter New Word", message: "Enter a Word and Definition", vc: self) { (word) in
            if word.word != "Enter Word" && word.definition != "Enter Definition" && word.word != "" && word.definition != "" { //if a word and definition were entered:
                self.vocabWords?.append(word)
                self.tableView.reloadData()
            } else {
                Alert.showBasic(title: "Word Not Entered", message: "Please Try Again", vc: self)
            }
        }
    }
    

}

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
        return vocabWords?.count ?? 0 //return vocabwords.count. if vocabWords is nil, return 0
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "WordCell") else { return UITableViewCell() }
        guard let word = self.vocabWords?[indexPath.row] else { return UITableViewCell() }
        cell.backgroundColor = .systemTeal
        cell.textLabel?.textColor = .systemBackground
        cell.textLabel?.text = word.word
        return cell
    }
    
    // MARK: - Navigation
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "ShowDefinitionSegue" {
            guard let destination = segue.destination as? DefinitionViewController else { genericError(); return } //could write on 2 lines without the semicolon
            guard let row = tableView.indexPathForSelectedRow?.row else { genericError(); return }
            //test genericError(): vocabWords = nil
            guard let word = vocabWords?[row] else { genericError(); return }
            destination.vocabWord = word
        }
    }
    
    //MARK: Helper Methods
    
    func addWord() {
        Alert.instance.showWithInput(title: "Enter New Word", message: "Enter a Word and Definition", vc: self) { (word) in
            if word.word != "Enter Word" && word.definition != "Enter Definition" && word.word != "" && word.definition != "" { //if a word and definition were entered:
                self.vocabWords?.append(word)
                self.tableView.reloadData()
            } else {
                Alert.instance.show(title: "Word Not Entered", message: "Please Try Again", vc: self)
            }
        }
    }
    
    func genericError() {
        Alert.instance.show(title: "Unknown Error", message: "Something Went Wrong.\nPlease Try Again.", vc: self)
    }
}

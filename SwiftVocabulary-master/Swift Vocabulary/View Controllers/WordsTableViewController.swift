//
//  WordsTableViewController.swift
//  Swift Vocabulary
//
//  Created by Donella Barcelo on 8/12/19.
//  Copyright © 2019 Donella Barcelo. All rights reserved.
//


import UIKit


class WordsTableViewController: UITableViewController {
    
    var vocabWords: [VocabularyWord] =
        [VocabularyWord(word: "Constants", definition: "Constants refer to fixed values that a program may not alter during its execution. Constants can be of any of the basic data types like an integer constant, a floating constant, a character constant, or a string literal."),
        VocabularyWord(word: "Swift", definition: "Swift is a high-level programming language developed by Apple. It is designed for writing apps for Apple platforms, including macOS, iOS, tvOS, and watchOS."),
        VocabularyWord(word: "Xcode", definition: "The integrated development environment (IDE) from Apple that is used to create, compile and test Mac OS X and iOS (iPhone/iPad/iPod) applications.")]

    
    override func viewDidLoad() {
        
        super.viewDidLoad()
    }

    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {

        return vocabWords.count
        
    }


    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "WordCell", for: indexPath)

        let vocabWord = vocabWords[indexPath.row]
        
        cell.textLabel?.text = vocabWord.word

        return cell
        
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "ShowDefinitionSegue" {
            
            guard let indexPath = tableView.indexPathForSelectedRow,
                let wordDefinitionVC = segue.destination as? DefinitionViewController else { return }

            let vocabWord = vocabWords[indexPath.row]
            
            wordDefinitionVC.vocabWord = vocabWord
            
        }
        
    }

}

//
//  WordsTableViewController.swift
//  Swift Vocabulary
//
//  Created by Chris Gooley on 7/24/19.
//  Copyright © 2019 Chris Gooley. All rights reserved.
//


import UIKit


class WordsTableViewController: UITableViewController {
    
    var vocabWords: [VocabularyWord] =
        [VocabularyWord(word: "Phaser", definition: "Phasers were the most common and standard directed energy weapon in the arsenal of Starfleet and several other powers."),
        VocabularyWord(word: "Transporter", definition: "The transporter was a subspace device capable of almost instantaneously transporting an object from one location to another"),
        VocabularyWord(word: "Holodeck", definition: "A holodeck was a form of holotechnology designed and used by the Federation Starfleet which ran holographic programs.")]

    
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

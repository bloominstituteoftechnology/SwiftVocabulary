//
//  WordsTableTableViewController.swift
//  Swift Vocabulary
//
//  Created by Clayton Bonaguidi on 7/24/19.
//  Copyright © 2019 Clayton Bonaguidi. All rights reserved.
//

import UIKit

class WordsTableTableViewController: UITableViewController {
    
    var vocabWords: [VocabularyWord] =
        [VocabularyWord(word: "Fitness", definition: "The condition of being physically fit and healthy"),
        VocabularyWord(word: "Pilates", definition: "A system of exercises using special apparatus, designed to improve physical strength, flexibility, and posture, and enhance mental awareness."),
        VocabularyWord(word: "Onomatopoeia", definition: "The formation of a word from a sound associated with what is named (e.g. cuckoo, sizzle ).")]

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

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
 
            guard let indexPath = tableView.indexPathForSelectedRow,
            let definitionVC = segue.destination as? DefinitionViewController else { return }
            let wordCell = vocabWords[indexPath.row]
 
            definitionVC.vocabWord = wordCell
        }
    }
}

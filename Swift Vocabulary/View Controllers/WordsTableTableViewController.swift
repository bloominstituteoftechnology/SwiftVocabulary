//
//  WordsTableTableViewController.swift
//  Swift Vocabulary
//
//  Created by LaFleur on 11/14/19.
//  Copyright © 2019 David Schwinne. All rights reserved.
//

import UIKit

class WordsTableTableViewController: UITableViewController {

    var vocabWords: [VocabularyWord] = [VocabularyWord(word: "Go", definition: "To leave a place; depart."),
                                        VocabularyWord(word: "Jump", definition: "To rise suddenly or quickly."),
                                        VocabularyWord(word: "Hobo", definition: "A tramp or vagrant."),
                                        VocabularyWord(word: "Book", definition: "A handwritten or printed work of fiction or nonfiction."),
                                        VocabularyWord(word: "Road", definition: "A long, narrow stretch with a smoothed or paved surface.")]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source


    

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
     
        return vocabWords.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        let cell = tableView.dequeueReusableCell(withIdentifier: "WordCell", for: indexPath)

        let wordString = vocabWords[indexPath.row]
        
        cell.textLabel?.text = wordString.word
        return cell
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        
        if segue.identifier == "ShowDefinitionSegue" {
            
            guard let indexPath = tableView.indexPathForSelectedRow,
//
                let definitionVC = segue.destination as? DefinitionViewController else {return}
//
            let cellDefinition = vocabWords[indexPath.row]
//
            definitionVC.cellDefinition = cellDefinition
            
        }
       
    }
}

//
//  WordsTableViewController.swift
//  Swift Vocabulary
//
//  Created by Waseem Idelbi on 5/12/22.
//

import UIKit

class WordsTableViewController: UITableViewController {
    
    //MARK: - Properties
    var vocabWords: [VocabularyWord] = [VocabularyWord(word: "Hello World", definition: "This phrase is commonly used in programming, it's funny because it's like your code is coming to life and announcing its existing to the whole world! Basically by greeting it :)")] 
    
    //MARK: - TableView Configuration Methods
    
    // Lifecycle

    override func viewDidLoad() {
        super.viewDidLoad()
        self.clearsSelectionOnViewWillAppear = true
    }

    // Table view data source
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return vocabWords.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "WordCell", for: indexPath)
        let currentWord = vocabWords[indexPath.row]
        cell.textLabel?.text = currentWord.word
        return cell
    }
    
    // Navigation
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "ShowDefinitionSegue" {
            let selectedWord = vocabWords[tableView.indexPathForSelectedRow!.row]
            let definitionVC = segue.destination as! DefinitionViewController
            definitionVC.vocabWord = selectedWord
        }
    }
    

}

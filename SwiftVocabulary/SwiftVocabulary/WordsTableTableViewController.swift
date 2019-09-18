//
//  WordsTableTableViewController.swift
//  SwiftVocabulary
//
//  Created by Craig Swanson on 9/18/19.
//  Copyright © 2019 Craig Swanson. All rights reserved.
//

import UIKit

class WordsTableTableViewController: UITableViewController {

    var vocabWords: [VocabularyWord] = [VocabularyWord(word: "FirstWord", definition: "Definition of the first word"), VocabularyWord(word: "SecondWord", definition: "This right here is the definition of the second word listed.")]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return vocabWords.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "WordCell", for: indexPath)

        let currentWord = vocabWords[indexPath.row]
       cell.textLabel?.text = currentWord.word

        return cell
    }
    

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "ShowDefinitionSegue" {
            guard let detailVC = segue.destination as? DefinitionViewController,
                let indexPath = tableView.indexPathForSelectedRow else { return }
        
        // Pass the selected object to the new view controller.
        let currentWord = vocabWords[indexPath.row]
            detailVC.vocabWord = currentWord
        }
    }
    
    
    @IBAction func addNewVocabWord(_ sender: Any) {
        print("Awesome, add a word.")
        
    }
    

}

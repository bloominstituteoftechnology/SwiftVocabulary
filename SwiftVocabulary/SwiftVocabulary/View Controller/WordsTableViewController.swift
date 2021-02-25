//
//  WordsTableViewController.swift
//  SwiftVocabulary
//
//  Created by Sammy Alvarado on 2/24/21.
//

import UIKit

class WordsTableViewController: UITableViewController {

    // MARK: - Property
    var vocabWords: [VocabularyWord] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    // MARK: - Table view data source

//    override func numberOfSections(in tableView: UITableView) -> Int {
//        // #warning Incomplete implementation, return the number of sections
//        return 0
//    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
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
            guard let definitionVC = segue.destination as? DefintionViewController,
                  let indexPath = tableView.indexPathForSelectedRow else { return }
            
            let vocab = vocabWords[indexPath.row]
            definitionVC.vocabWords = vocab
        }
    }

}

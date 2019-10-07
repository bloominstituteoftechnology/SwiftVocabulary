//
//  WordsTableViewController.swift
//  SwiftVocabulary
//
//  Created by Thomas Bernard Leonard II on 10/7/19.
//  Copyright © 2019 Thomas Bernard Leonard II. All rights reserved.
//

import UIKit

var vocabWords: [VocabularyWord] = [VocabularyWord(word: "barnemat", definition: "baby food"),
                                    VocabularyWord(word: "nedtrykthet", definition: "depression")]

class WordsTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()


    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return vocabWords.count
//        return vocabWords.count
    }


    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "WordCell", for: indexPath)
        let aWord = vocabWords[indexPath.row].word
        cell.textLabel?.text = aWord
        

        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {

        if segue.identifier == "ShowDefinitionSegue" {
            guard let thisWord = tableView.indexPathForSelectedRow?.row,
                      let definitionVC = segue.destination as? DefinitionViewController
                  
                  else { return }
            definitionVC.vocabWord = vocabWords[thisWord]




}
}
}

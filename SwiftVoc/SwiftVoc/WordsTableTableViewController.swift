//
//  WordsTableTableViewController.swift
//  SwiftVoc
//
//  Created by Cedric Janssens on 4/13/20.
//  Copyright © 2020 Cedric Janssens. All rights reserved.
//

import UIKit

class WordsTableTableViewController: UITableViewController {

    var vocabWord: [VocabularyWord] = [VocabularyWord(word:"Cedric",definition:"Test")]
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return vocabWord.count
    }


    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "WordCell", for: indexPath)

        // Configure the cell...
        let word = vocabWord[indexPath.row]
        cell.textLabel?.text = word.word
        return cell
    }

    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let newWord = vocabWord[indexPath.row]
        vocabWordsPassed = newWord
    }

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    var vocabWordsPassed: VocabularyWord?
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let detailVC = segue.destination as? DefinitionViewController {
            
            if let passedWords = vocabWordsPassed {
                detailVC.vocabWord = passedWords
            }
        }
 }
        

}


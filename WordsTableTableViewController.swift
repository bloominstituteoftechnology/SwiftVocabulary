//
//  WordsTableTableViewController.swift
//  Swift Vocabulary
//
//  Created by Clean Mac on 4/8/20.
//  Copyright © 2020 LambdaStudent. All rights reserved.
//

import UIKit



class WordsTableTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad() {
        var vocabWords: [VocabularyWord] = [
        VocabularyWord(word: "word1", definition: "Def1"),
        VocabularyWord(word: "word2", definition: "def2"),
        VocabularyWord(word: "word3", definition: "def3"),

        ]
        }
    }

    // MARK: - Table view data source



    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return vocabWords.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "VocabCell", for: indexPath)

        // Configure the cell...
        let vocab = vocabWords[indexPath.row]
        cell.textLabel?.text = vocab.word 
        
        
        
        return cell
    }
    

    // MARK: - Navigation

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
}

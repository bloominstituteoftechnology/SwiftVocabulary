//
//  WordsTableViewController.swift
//  Swift Vocabulary
//
//  Created by Waseem Idelbi on 11/13/19.
//  Copyright © 2019 Waseem Idelbi. All rights reserved.
//

import UIKit

class WordsTableViewController: UITableViewController {

    let vocabController = VocabController()
    
    func addWord() {
    let alert = UIAlertController(title: "Add a word", message: "Enter the details of the word you want to add below", preferredStyle: UIAlertController.Style.actionSheet)
        
        alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: {
            (ACTION) in
            alert.dismiss(animated: true, completion: nil
            )
        }))
        self.present(alert, animated: true, completion: nil)
    }
    
    @IBAction func addButtonTapped(_ sender: Any) {
        addWord()
    }

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return vocabController.vocabWord.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "WordCell", for: indexPath)
        let word = vocabController.vocabWord[indexPath.row]
        cell.textLabel?.text = word.word
        return cell
    }
    
    
// MARK: - Navigation

    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "ShowDefinitionSegue" {
            guard let defViewCont = segue.destination as? DefinitionViewController else {return}
            guard let selectedRow = tableView.indexPathForSelectedRow else {return}
            let fetchedWord = vocabController.vocabWord[selectedRow.row]
            defViewCont.vocabWord = fetchedWord
            
        }
    }
}

//
//  WordsTableViewController.swift
//  Swift Vocabulary
//
//  Created by alfredo on 11/13/19.
//  Copyright © 2019 alfredo. All rights reserved.
//

import UIKit

class WordsTableViewController: UITableViewController {
//    2. Add a variable property called `vocabWords` of type `[VocabularyWord]` (array of `VocabularyWord` objects)
    var vocabWords: [VocabularyWord] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        addWords()
    }
    func addWords(){
        vocabWords.append(VocabularyWord(word:"Lollygag",definition: "To dawdle or be overly slow."))
        vocabWords.append(VocabularyWord(word:"Bumfuzzle",definition: "To confuse someone."))
        vocabWords.append(VocabularyWord(word:"Nudiustertian",definition: "The recent past (literally \"the day before yesterday\")."))
        vocabWords.append(VocabularyWord(word:"Brouhaha",definition: "An overexcited response."))
     }
    // MARK: - Table view data source

    // #warning Incomplete implementation, return the number of rows
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return vocabWords.count
    }

    // Configure the cell...
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // Dequeue the cell
        let cell = tableView.dequeueReusableCell(withIdentifier: "WordCell", for: indexPath)
        let vocabularyWord = vocabWords[indexPath.row].word
        cell.textLabel?.text = vocabularyWord
        return cell
    }
     // MARK: - Navigation

     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Check to make sure the segue's identifier is `"ShowDefinitionSegue"`.
        guard segue.identifier == "ShowDefinitionSegue"    else { return }
        // Get the destination `DefinitionViewController` by conditionally casting `segue.destination` to `DefinitionViewController`.
        if let destinationDefinitionViewController = segue.destination as? DefinitionViewController{
            // Get the index path for the selected row using `tableView.indexPathForSelectedRow`.
            let indexPathForSelectedRow = tableView.indexPathForSelectedRow!.row
            // Use that index path to get the appropriate `VocabularyWord` instance from `vocabController`'s `vocabWords` array.
            let vocabularyWordInstance = vocabWords[indexPathForSelectedRow]
            destinationDefinitionViewController.vocabWord = vocabularyWordInstance
        }
     }
    /* Stretch Goal*/
    @IBAction func addNewWordButton(_ sender: UIButton) {
        /* Optional variables to represent the two textfields inside the Alert */
        var newWord: UITextField?
        var newDefinition:  UITextField?
        /* Alert Controller with style declared */
        let alertController = UIAlertController(
            title: "Add Vocabulary Word",
            message: "Please enter a vocabulary word and definition.",
            preferredStyle: .alert)
        /* Adding and populating text fields with default message and save inputed values */
        alertController.addTextField {
            (word) -> Void in
            newWord = word
            word.placeholder = "Vocabulary word here"
        }
        alertController.addTextField {
            (definition) -> Void in
            newDefinition = definition
            definition.placeholder = "Definition here."
        }
        /* Update and reload the Tabel View when the submit button is tapped */
        let loginAction = UIAlertAction(title: "Submit", style: .default){
        (action) -> Void in
            if let word = newWord?.text, let def = newDefinition?.text {
                self.vocabWords.append(VocabularyWord(word: word, definition: def))
                self.tableView.reloadData()
            }
        }
        /* Alert action*/
        alertController.addAction(loginAction)
        present(alertController, animated: true, completion: nil)
    }
}

//
//  WordsTableViewController.swift
//  Swift Vocabulary
//
//  Created by Kenny on 12/5/19.
//  Copyright © 2019 Hazy Studios. All rights reserved.
//

import UIKit

class WordsTableViewController: UITableViewController {
    //MARK: - Properties -
    var vocabWords: [VocabularyWord] = VocabularyWord.mockWords    
    
    //MARK: - View Lifecycle -
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableView.reloadData()
    }
    
    //MARK: - TableView Delegate and DataSource Methods -
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return vocabWords.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "WordCell") else { return UITableViewCell() }
        let word = self.vocabWords[indexPath.row]
        cell.backgroundColor = .systemTeal
        cell.textLabel?.textColor = .systemBackground
        cell.textLabel?.text = word.word
        return cell
    }
    
    // MARK: - Navigation -
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "ShowDefinitionSegue" {
            guard let destination = segue.destination as? DefinitionViewController else {
                genericError()
                return
            }
            guard let row = tableView.indexPathForSelectedRow?.row else {
                genericError()
                return
            }

            let word = vocabWords[row]
            destination.vocabWord = word
        }
    }
    
    //MARK: - Create -
    @IBAction func addWordBtn(_ sender: UIBarButtonItem) {
        addWord()
    }
    
    func addWord() {
        presentAlertWithInput(title: "Enter New Word", message: "Enter a Word and Definition", vc: self) { entry in
            if entry.word == "Enter Word" || entry.word.isEmpty {
                self.presentAlert(title: "Word Not Entered", message: "Please enter the word you wish to define", vc: self)

            } else if entry.definition == "Enter Definition" || entry.definition.isEmpty {
                self.presentAlert(title: "Definition Not Entered", message: "Please define the word you're entering", vc: self)

            } else {
                self.vocabWords.append(entry)
                self.tableView.reloadData()
            }

        }
    }
    
    func genericError() {
        presentAlert(title: "Unknown Error", message: "Something Went Wrong.\nPlease Try Again.", vc: self)
    }
}

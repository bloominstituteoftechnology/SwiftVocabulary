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
    var librarian: VocabController?

    var vocabWords: [VocabularyWord]? {
        didSet {
            guard isViewLoaded else {
                return
            }
            tableView.reloadData()
        }
    }
    
    //MARK: - View Lifecycle -
    override func viewDidLoad() {
        super.viewDidLoad()
        librarian = VocabController()
        librarian!.delegate = self
        vocabWords = librarian!.words

        self.tableView.reloadData()
    }
    
    //MARK: - TableView Delegate and DataSource Methods -
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return vocabWords?.count ?? 0
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "WordCell") else { return UITableViewCell() }
        let word = self.vocabWords?[indexPath.row]
        cell.backgroundColor = .systemTeal
        cell.textLabel?.textColor = .systemBackground
        cell.textLabel?.text = word?.word
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

            let word = vocabWords?[row]
            destination.vocabWord = word
        }
    }
    
    //MARK: - Create -
    @IBAction func addWordBtn(_ sender: UIBarButtonItem) {
        addWord()
    }
    
    func addWord() {
        presentAlertWithInput(title: "Enter New Word", message: "Enter a Word and Definition") { entry in
            if entry.word == "Enter Word" || entry.word.isEmpty {
                self.presentAlert(title: "Word Not Entered", message: "Please enter the word you wish to define")

            } else if entry.definition == "Enter Definition" || entry.definition.isEmpty {
                self.presentAlert(title: "Definition Not Entered", message: "Please define the word you're entering")

            } else {
                guard let librarian = self.librarian else {
                    return
                }
                if !librarian.addWord(entry) {
                    self.presentAlert(title: "Word Not Entered", message: "This Word Already Exists in your Dictionary")
                }
            }

        }
    }
    
    func genericError() {
        presentAlert(title: "Unknown Error", message: "Something Went Wrong.\nPlease Try Again.")
    }
}

extension WordsTableViewController: LibrarianDelegate {
    func updateWords() {
        self.vocabWords = librarian?.words
    }
}

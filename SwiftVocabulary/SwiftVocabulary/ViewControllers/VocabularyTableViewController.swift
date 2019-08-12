//
//  ViewController.swift
//  SwiftVocabulary
//
//  Created by brian vilchez on 8/12/19.
//  Copyright © 2019 brian vilchez. All rights reserved.
//

import UIKit

class VocabularyTableViewController: UIViewController {

    //MARK: - properties
    var wordController = WordController()
    @IBOutlet weak var tableView: UITableView!
    
    //MARK: - Functions
    override func viewDidLoad() {
        super.viewDidLoad()
      
   //self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }
    
    @IBAction func addWord(_ sender: UIBarButtonItem) {
        displayAlert()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "ShowVocabularyDefinition" {
        guard let definitionDetailVC = segue.destination as? VocabularyDefinitionViewController else {return}
           guard let selectedWord = tableView.indexPathForSelectedRow else {return}
            let word = wordController.words[selectedWord.row]
            definitionDetailVC.word = word
        }
    }
    
    
}
extension VocabularyTableViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return wordController.words.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
     let cell = tableView.dequeueReusableCell(withIdentifier: "WordCell", for: indexPath)
        let word = wordController.words[indexPath.row]
        cell.textLabel?.text = word.word
        return cell
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        
        if editingStyle == .delete {
            wordController.words.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
        }
    }
    
    func displayAlert()  {
        let addWordPrompt = UIAlertController(title: "Add Word", message: nil, preferredStyle: .alert)
        addWordPrompt.addTextField()
        addWordPrompt.addTextField()
        addWordPrompt.textFields![0].placeholder = "Enter word"
        addWordPrompt.textFields![1].placeholder = "Enter definition"
        let cancel = UIAlertAction(title: "Cancel", style: .cancel, handler: nil)
        let saveWord = UIAlertAction(title: "Save", style: .default) { [unowned addWordPrompt] _ in
            guard let word = addWordPrompt.textFields![0].text, let definition = addWordPrompt.textFields![1].text else {return}
         self.wordController.createWord(word: word, definition: definition)
         self.viewWillAppear(true)
      }
        addWordPrompt.addAction(saveWord)
        addWordPrompt.addAction(cancel)
        present(addWordPrompt,animated: true,completion: nil)
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        tableView.reloadData()
    }
}

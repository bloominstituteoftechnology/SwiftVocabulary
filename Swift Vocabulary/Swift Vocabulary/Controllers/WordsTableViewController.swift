//
//  WordsTableViewController.swift
//  Swift Vocabulary
//
//  Created by Nick Nguyen on 1/18/20.
//  Copyright © 2020 Nick Nguyen. All rights reserved.
//

import UIKit

class WordsTableViewController: UITableViewController {
    
         private let cellIdentifier = "WordCell"
         private let segueIdentifier = "ShowDefinitionSegue"
    
    @IBOutlet weak var addButtonLabel: UIBarButtonItem!
    
    var vocabWords = [
        VocabularyWord(word: "Variable", definition: "A variable provides us with named storage that our programs can manipulate. Each variable in Swift 5 has a specific type, which determines the size and layout of the variable's memory; the range of values that can be stored within that memory; and the set of operations that can be applied to the variable."),
       VocabularyWord(word: "Constant", definition: " Constants refer to fixed values that a program may not alter during its execution. Constants can be of any of the basic data types like an integer constant, a floating constant, a character constant, or a string literal."),
        VocabularyWord(word: "Function", definition: "Functions are self-contained chunks of code that perform a specific task. You give a function a name that identifies what it does, and this name is used to “call” the function to perform its task when needed. ... Every function in Swift has a type, consisting of the function's parameter types and return type.")
    ]
    var newWord = VocabularyWord(word: "", definition: "")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Swift Vocabulary"
        setUpNavBar()
       
    }
    
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return vocabWords.count
    }
    func setUpNavBar() {
        if #available(iOS 13.0, *) {
            let navBarAppearance = UINavigationBarAppearance()
            navBarAppearance.configureWithOpaqueBackground()
            navBarAppearance.backgroundColor = .link
            navBarAppearance.largeTitleTextAttributes = [NSAttributedString.Key.foregroundColor : UIColor.white]
            navBarAppearance.titleTextAttributes = [NSAttributedString.Key.foregroundColor : UIColor.white]
            self.navigationItem.backBarButtonItem = UIBarButtonItem(title: "", style: .plain, target: nil, action: nil)
            navigationController?.navigationBar.prefersLargeTitles = true
            self.navigationController?.navigationBar.standardAppearance = navBarAppearance
            self.navigationController?.navigationBar.scrollEdgeAppearance = navBarAppearance
            self.navigationItem.backBarButtonItem?.tintColor = .white
            
        }
    }
   
 
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath)
        cell.textLabel?.text = vocabWords[indexPath.row].word
        
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == segueIdentifier {
       
                if let indexPath = tableView.indexPathForSelectedRow,
                    let destVC = segue.destination as? DefinitionViewController
                     {
                        let word = vocabWords[indexPath.row]
                        destVC.vocabWord = word
                       
            }
        }
    }
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            vocabWords.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view.
        }
    }
 
    @IBAction func addTapped(_ sender: UIBarButtonItem) {
      
        let ac = UIAlertController(title: "Add new vocabulary words", message: "What do you want to add?", preferredStyle: .alert)
        ac.addTextField {
            (textField) in
            textField.placeholder = "Enter new word here..."
        }
        let submitAction = UIAlertAction(title: "Submit", style: .default) {
            [weak self, weak ac] _ in
            guard let answer = ac?.textFields?[0].text else {
                return
            }
            self?.newWord = VocabularyWord(word: answer, definition: "Enter definition here...")
            self?.vocabWords.append(self!.newWord)
           
           
            let indexPath : IndexPath = IndexPath(row: self!.vocabWords.count - 1, section: 0)
            self?.tableView.insertRows(at:[indexPath], with: .automatic)

            self?.tableView.reloadData()
        }
         ac.addAction(submitAction)
         ac.addAction(UIAlertAction(title: "Cancel", style: .destructive, handler: nil))
        present(ac, animated: true)
    }
    
}


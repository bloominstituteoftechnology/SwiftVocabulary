//
//  WordsTableViewController.swift
//  Swift Vocabulary
//
//  Created by Percy Ngan on 8/12/19.
//  Copyright © 2019 Lamdba School. All rights reserved.
//

import UIKit

class WordsTableViewController: UITableViewController {

	var vocabWords: [VocabularyWord] = [VocabularyWord(word: "Arrray", definition: "A sequential collection of values of any type, such as an array of names in a band."),

										VocabularyWord(word: "Class", definition: "A custom data type that can have one or more properties and one or more methods. Unlike structs, classes are reference types."),

										VocabularyWord(word: "Class Inheritance", definition: "The ability for one class to build on another, inheriting all its methods and properties. Some languages allow one class to inherit from multiple parents, but Swift does not.")]



	override func viewDidLoad() {
        super.viewDidLoad()

    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {

        return vocabWords.count
    }


    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "WordCell", for: indexPath)
		let vocabWord = vocabWords[indexPath.row]
		cell.textLabel?.text = vocabWord.word

        return cell
    }


	// MARK: - Navigation

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {

		if segue.identifier == "ShowDefinitionSegue" {
			guard let indexPath = tableView.indexPathForSelectedRow,
				let definitionVC = segue.destination as? DefinitionViewController else { return }
			let vocab = vocabWords[indexPath.row]
			definitionVC.vocabWord = vocab
		}
    }

	


//	@IBAction func addNewWord(_ sender: UIBarButtonItem) {
//		showAlertWithTextField()
//	}


//	func showAlertWithTextField() {
//		let alertController = UIAlertController(title: "Add new tag", message: nil, preferredStyle: .alert)
//		let confirmAction = UIAlertAction(title: "Add", style: .default) { (_) in
//			if let txtField = alertController.textFields?.first, let text = txtField.text {
//				// operations
//				print("Text==>" + text)
//			}
//		}
//		let cancelAction = UIAlertAction(title: "Cancel", style: .cancel) { (_) in }
//		alertController.addTextField { (textField) in
//			textField.placeholder = "Tag"
//		}
//		alertController.addAction(confirmAction)
//		alertController.addAction(cancelAction)
//		self.present(alertController, animated: true, completion: nil)
//	}
}

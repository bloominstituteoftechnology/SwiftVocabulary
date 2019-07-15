//
//  VocabTableVC.swift
//  SwiftVocabulary
//
//  Created by Jeffrey Santana on 7/15/19.
//  Copyright © 2019 Jefffrey Santana. All rights reserved.
//

import UIKit

class VocabTableVC: UITableViewController {
	
	var vocabulary = [
		Word(title: "Variable", definition: "A value that can change after it’s been initialized, indicated in Swift by the var keyword.", tags: ["basic"]),
		Word(title: "Constamt", definition: "A value that’s initialized once and cannot change, indicated in Swift by the let keyword.", tags: ["basic"]),
		Word(title: "Function", definition: "A reusable, named piece of code that can be referred to from many places in a program.", tags: ["basic"])
	]
	
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
	
	@IBAction func addVocabAction(_ sender: Any) {
		let alert = UIAlertController(title: "New Vocabulary", message: nil, preferredStyle: .alert)
		
		alert.addTextField { (textField) in
			textField.placeholder = "Title"
		}
		alert.addTextField { (textField) in
			textField.placeholder = "Definition"
		}
		alert.addTextField { (textField) in
			textField.placeholder = "Tags (Comma de-limited)"
		}
		
		let SaveAction = UIAlertAction(title: "Save", style: .default) { [unowned alert] _ in
			guard let textfields = alert.textFields, let title = textfields[0].text else { return }
			let definition = textfields[1].text
			let tags = textfields[2].text?.components(separatedBy: ",")
			let word = Word(title: title, definition: definition, tags: tags)
			
			self.vocabulary.append(word)
			self.tableView.reloadData()
		}
		let CancelAction = UIAlertAction(title: "Cancel", style: .cancel, handler: nil)
		
		alert.addAction(SaveAction)
		alert.addAction(CancelAction)
		
		present(alert, animated: true, completion: nil)
	}
	
	override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		return vocabulary.count
	}
	
	override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
		let cell = tableView.dequeueReusableCell(withIdentifier: "VocabCell", for: indexPath)
		let word = vocabulary[indexPath.row]
		
		cell.textLabel?.text = word.title
		
		return cell
	}
	
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
		guard let indexPath = tableView.indexPathForSelectedRow else { return }
		if let vocabDetailsVC = segue.destination as? VocabDetailsVC {
			vocabDetailsVC.selectedWord = vocabulary[indexPath.row]
		}
    }

}

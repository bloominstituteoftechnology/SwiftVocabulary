import UIKit

class WordsTableViewController: UITableViewController {
    
    var vocabWords: [VocabularyWord] = [
        VocabularyWord(word: "BIG", definition: "Something Large."),
        VocabularyWord(word: "LARGE", definition: "Something Big."),
       
    ]
    
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return vocabWords.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "WordCell", for: indexPath)
        let currentWord = vocabWords[indexPath.row]
        cell.textLabel?.text = currentWord.word 
        return cell
    }
 

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "ShowDefinitionSegue" {
            if let definitionVC = segue.destination as? DefinitionViewController, let indexPath = self.tableView.indexPathForSelectedRow {
                definitionVC.vocabWord = vocabWords[indexPath.row]
            }
        }
    }
}

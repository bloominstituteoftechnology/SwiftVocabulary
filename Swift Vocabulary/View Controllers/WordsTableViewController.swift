
import UIKit

class WordsTableViewController: UITableViewController {

    var vocabWords: [VocabularyWord] = [VocabularyWord(word: "Variable",
                                                       definition: "You use variables and constants in Swift to store information. It's that simple! Variables are the “things” in your code, like numbers, text, buttons and images."),
                                        VocabularyWord(word: "Constant",
                                                       definition: "Constants refer to fixed values that a program may not alter during its execution. Constants can be of any of the basic data types like an integer constant, a floating constant, a character constant, or a string literal."),
                                        VocabularyWord(word: "Function",
                                                       definition: "Functions are self-contained chunks of code that perform a specific task.")
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return vocabWords.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "WordCell", for: indexPath)

        let vocabularyWord = vocabWords[indexPath.row]
        cell.textLabel?.text = vocabularyWord.word
        return cell
    }



    // MARK: - Navigation

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "ShowDefinitionSegue" {
            guard let definitionVC = segue.destination as? DefinitionViewController,
                let indexPath = tableView.indexPathForSelectedRow else { return }
            
            let vocabWord = vocabWords[indexPath.row]
            
            definitionVC.vocabWord = vocabWord
            
        }
    }

    // Finished

}

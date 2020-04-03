import UIKit

class WordsTableViewController: UITableViewController {

    var vocabWords: [VocabularyWord] =
        [VocabularyWord(word: "Variable", definition: "....."),
         VocabularyWord(word: "Constant", definition: "....."),
         VocabularyWord(word: "Function", definition: ".....")]

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    // MARK: - Table view data source
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return vocabWords.count
    }


    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "WordCell", for: indexPath)

      let vocab = vocabWords[indexPath.row]

      cell.textLabel?.text = vocab.word

        return cell
    }




    // MARK: - Navigation
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {

        if segue.identifier == "ShowDefinitionSegue" {
        guard let indexPath = tableView.indexPathForSelectedRow else { return }

        let vocab = vocabWords[indexPath.row]

        let definitionVC = segue.destination as? DefinitionViewController

        definitionVC?.vocabWord = vocab
    }


}
}




import UIKit

class DefinitionViewController: UIViewController {
    
    var vocabWord: VocabularyWord?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateViews()
    }
    
    @IBOutlet weak var definitionLabel: UILabel!
    @IBOutlet weak var definitionTextView: UITextView!

    func updateViews() {
        if let unwrappedVocabWord = vocabWord {
            definitionLabel?.text = unwrappedVocabWord.word
            definitionTextView?.text = unwrappedVocabWord.definition
        }
    }
}

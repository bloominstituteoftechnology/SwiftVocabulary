import UIKit

class DefinitionViewController: UIViewController {
    //this is the mailbox for us to get the color from the table view controller
   
    @IBOutlet var label: UILabel!
    @IBOutlet var textView: UITextView!
var vocabWord: VocabularyWord?
 
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateViews()
    }
    func updateViews() {
        if let unwrappedWord = vocabWord{
            label.text = unwrappedWord.name
            textView.text = unwrappedWord.name
            
    
        }
    }
}


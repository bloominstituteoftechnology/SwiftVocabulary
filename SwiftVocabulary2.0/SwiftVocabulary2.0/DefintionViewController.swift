import UIKit

class DefinitionViewController: UIViewController {
    //this is the mailbox for us to get the color from the table view controller
   
   //MARK: OUTLETS
    @IBOutlet weak var wordLabel: UILabel!
   
    @IBOutlet weak var wordTextView: UITextView!
    
    
    var vocabWord: VocabularyWord?
 
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateViews()
    }
    func updateViews() {
        if let unwrappedWord = vocabWord{
            wordLabel.text = unwrappedWord.name
            wordTextView.text = unwrappedWord.definition
            
    
        }
    }
}


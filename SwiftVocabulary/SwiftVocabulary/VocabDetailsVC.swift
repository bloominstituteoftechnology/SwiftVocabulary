
import UIKit

class VocabDetailsVC: UIViewController {
	
	@IBOutlet weak var titleLbl: UILabel!
	@IBOutlet weak var definitionTextView: UITextView!
	@IBOutlet weak var tagsLbl: UILabel!
	
	var selectedWord: Word?

    override func viewDidLoad() {
        super.viewDidLoad()

        configDetails()
    }
	
	private func configDetails() {
		if let word = selectedWord {
			titleLbl.text = word.title
			definitionTextView.text = word.definition
			tagsLbl.text = configTags()
		}
	}
	
	private func configTags() -> String? {
		guard let tags = selectedWord?.tags?.joined(separator: ", #") else {return nil}
		
		return "#\(tags)"
	}
}

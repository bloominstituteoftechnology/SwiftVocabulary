//
//  DefinitionViewController.swift
//  Swift Vocabulary
//
//  Created by Hayden Hastings on 4/29/19.
//  Copyright © 2019 Hayden Hastings. All rights reserved.
//

import UIKit

class DefinitionViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    
    func updateViews() {
        guard isViewLoaded else { return }
        if let word = vocabWord?.word,
            let definition = vocabWord?.definition {
            definitionLabel.text = "\(word)"
            definitionTextView.text = "\(definition)"
        }
    }
    
    var vocabWord: VocabularyWord? {
        didSet {
            updateViews()
        }
    }

    @IBOutlet weak var definitionLabel: UILabel!
    @IBOutlet weak var definitionTextView: UITextView!
    
}

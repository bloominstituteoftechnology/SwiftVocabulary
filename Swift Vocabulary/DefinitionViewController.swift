//
//  DefinitionViewController.swift
//  Swift Vocabulary
//
//  Created by Brian Rouse on 4/13/20.
//  Copyright © 2020 Brian Rouse. All rights reserved.
//

import UIKit

class DefinitionViewController: UIViewController {

    @IBOutlet weak var word: UILabel!
    
    @IBOutlet weak var definition: UITextView!
    
    var vocabularyWord: VocabularyWord?
    func updateView() {
        guard let unwrapped = vocabularyWord else { return }
        word.text = unwrapped.word
        definition.text = unwrapped.definition
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateView()

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

}

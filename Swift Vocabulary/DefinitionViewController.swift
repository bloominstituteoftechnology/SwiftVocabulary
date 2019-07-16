//
//  DefinitionViewController.swift
//  Swift Vocabulary
//
//  Created by Bradley Yin on 6/12/19.
//  Copyright © 2019 bradleyyin. All rights reserved.
//

import UIKit

class DefinitionViewController: UIViewController {
    @IBOutlet weak var vocabLabel: UILabel!
    @IBOutlet weak var definitionTextView: UITextView!
    
    var vocabWord: VocabularyWord?{
        didSet{
            print(vocabWord)
            //if I call updateViews here, the IBoutlets are not loaded, thus it's nil at the moment, the app will crash, so I call the function in viewDidLoad
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateViews()

        // Do any additional setup after loading the view.
    }
    
    func updateViews (){
        if let unwrappedVocabWord = vocabWord{
            vocabLabel.text = unwrappedVocabWord.word
            definitionTextView.text = unwrappedVocabWord.definition
        }
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

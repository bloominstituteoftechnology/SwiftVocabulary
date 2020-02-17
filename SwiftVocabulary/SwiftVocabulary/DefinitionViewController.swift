//
//  DefinitionViewController.swift
//  SwiftVocabulary
//
//  Created by Karen Rodriguez on 2/17/20.
//  Copyright © 2020 Hector Ledesma. All rights reserved.
//

import UIKit

class DefinitionViewController: UIViewController {

    @IBOutlet weak var defTitle: UILabel!
    
    @IBOutlet weak var defDefinition: UITextView!
    

    var vocabWord: VocabularyWord?
    
    func updateView() {
        guard let word = vocabWord else { return }
        
        defTitle.text = word.word
        defDefinition.text = word.definition
    }
    
    override func viewDidLoad() {
        print("We get to view controller")
        super.viewDidLoad()
        self.updateView()
        //defTitle.text = "Test"
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

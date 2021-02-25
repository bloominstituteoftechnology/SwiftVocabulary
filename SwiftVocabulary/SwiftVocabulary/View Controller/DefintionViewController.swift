//
//  DefintionViewController.swift
//  SwiftVocabulary
//
//  Created by Sammy Alvarado on 2/24/21.
//

import UIKit

class DefintionViewController: UIViewController {
    
    // MARK: - Property
    var vocabWords: VocabularyWord?

    @IBOutlet weak var wordLabel: UILabel!
    @IBOutlet weak var definitionTextView: UITextView!
    
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

}

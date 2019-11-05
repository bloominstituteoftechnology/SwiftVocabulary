//
//  vocabDetailViewController.swift
//  Swift Vocabulary
//
//  Created by Zack Larsen on 11/4/19.
//  Copyright © 2019 Zack Larsen. All rights reserved.
//

import UIKit

class vocabDetailViewController: UIViewController {
    
    @IBOutlet weak var detailViewTitleOutlet: UILabel!
    
    textLabel.text = 
    @IBOutlet weak var detailViewOutlet: UITextView!
    // Make another outlet so you can see the word that the definition goes to.
    var cellWord: Vocab?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateViews()
        // Do any additional setup after loading the view.
        
    }
    
    func updateViews() {
        guard let word = cellWord else { return }
        detailViewOutlet.text = word.definition
        
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
//func updateViews() {
//guard let word = cellWord else { return }
//detailViewOutlet.text = word.definition

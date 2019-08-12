//
//  ViewController.swift
//  SwiftVocabulary
//
//  Created by brian vilchez on 8/12/19.
//  Copyright © 2019 brian vilchez. All rights reserved.
//

import UIKit

class VocabularyTableViewController: UIViewController {

    
    override func viewDidLoad() {
        super.viewDidLoad()
//       UITableViewDelegate = self
//        UITableViewDataSource = self
    }


}
extension VocabularyTableViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        <#code#>
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        <#code#>
    }
    
    
    
}

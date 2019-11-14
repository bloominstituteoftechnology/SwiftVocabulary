import UIKit

var str = "Hello, playground"
let alert = UIAlertController(title: "My Alert", message: "This is an alert.", preferredStyle: .alert)
   alert.addAction(UIAlertAction(title: NSLocalizedString("OK", comment: "Default action"), style: .default, handler: { _ in
   NSLog("The \"OK\" alert occured.")
   }))

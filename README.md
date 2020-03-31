# SwiftVocabulary

This project will help you practice the skills and concepts you learned related to table views, navigation, and segues in Swift, as well as practicing concepts you've learned previously. For this project you'll build an app that is a Swift vocabulary app. It will include Swift and programming vocabulary words and their definitions so you can practice your programming knowledge.

The screen recording below shows you what the final product should do:

![Screen Recording](https://github.com/LambdaSchool/SwiftVocabulary/blob/master/ScreenRecording.gif)

### Create an Xcode Project

1. Create a new Xcode single view app project
2. Name the project "Swift Vocabulary"
3. Make sure you select Swift as the development language
4. Make sure to select the "Storyboard" setting in the User Interface dropdown

### Create View Controllers

1. Create a new file in your Xcode project. Select the Cocoa Touch Class template.
2. When you're asked for the class name for the new file choose `WordsTableViewController`, and make it a subclass of `UITableViewController`.
3. Create another file for `DefinitionViewController`, which should be a subclass of `UIViewController`.

### Add Screens to Main.storyboard

1. Open the app's Main.storyboard file.
2. Delete the default view controller. You can also delete the corresponding ViewController.swift file from your project.
3. Drag out a Table View Controller.
4. Set the Table View Controller as the `initial view controller` (the little arrow should appear on the left of the scene).
5. Embed it in a Navigation Controller.
6. Set the class of the table view controller to `WordsTableViewController`.
7. Make the table view's prototype cell type "Basic".
8. Set the table view's reuse identifier to "WordCell".
9. Drag out a regular view controller.
10. Set its class to `DefinitionViewController`
11. Create a Show segue from the table view cell to the `DefinitionViewController` by control-dragging from the cell to the view controller.
12. Give the segue an identifier of `ShowDefinitionSegue`.
13. On the definition view controller, add a label for the word, and below that, a text view for the definition.
14. Use Add Missing Constraints to add constraints.
15. Add outlets from the definition view controller to the label and text view.

### Create a `VocabularyWord` Model Struct

1. Create a new file called "VocabularyWord.swift"
2. Create a struct inside the file called `VocabularyWord`
3. Add `word: String` and `definition: String` properties.

### Implement `WordsTableViewController`

1. Open `WordsTableViewController.swift`.
2. Add a variable property called `vocabWords` of type `[VocabularyWord]` (array of `VocabularyWord` objects)
3. Implement `tableView(_ tableView:, numberOfRowsInSection section:)`. Make it return the number of vocab words in `vocabWords` property.
4. Implement `tableView(_ tableView:, cellForRowAt indexPath:)`. Dequeue the cell, get the right `VocabularyWord` for the index path, then set the cell's `textLabel`'s text to the vocab word's `word` property.
5. In the `prepare(for:sender:)`(uncomment the method so it is live code):
    * Check to make sure the segue's identifier is `"ShowDefinitionSegue"`.
    * Get the destination `DefinitionViewController` by conditionally casting `segue.destination` to `DefinitionViewController`.
    * Get the index path for the selected row using `tableView.indexPathForSelectedRow`.
    * Use that index path to get the appropriate `VocabularyWord` instance from the table view controller's `vocabWords` array.
    * Assign the vocabulary word to the `DefinitionViewController`'s `vocabWord` property.

### Implement `DefinitionViewController`

1. Add a `vocabWord: VocabularyWord?` property.
2. Add a method called `updateViews()`. 
3. In this method, unwrap the `vocabWord` property. If it is not nil, use its `word` and `definition` properties to populate the label and text view.
4. Inside `viewDidLoad`, call `updateViews()`.

### Build, Run, and Test Your App

1. Build and run your app using the simulator
2. Check to make sure your vocabulary words show up.
3. Tap on a vocabulary word, and verify that the definition screen appears with the correct definition.
4. Test going back to the list of vocab words.

### Stretch Goals (Optional)

If you finish and want another challenge, try adding a button that allows you to create new vocab words inside the app.

> Hint: The easiest way to add UI that allows the user to enter a word and its definition may be [UIAlertController](https://developer.apple.com/documentation/uikit/uialertcontroller).


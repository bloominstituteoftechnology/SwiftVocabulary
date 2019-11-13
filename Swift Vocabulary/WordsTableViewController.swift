//
//  WordsTableViewController.swift
//  Swift Vocabulary
//
//  Created by David Wright on 11/13/19.
//  Copyright © 2019 David Wright. All rights reserved.
//

import UIKit

class WordsTableViewController: UITableViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source
 
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return vocabWords.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "WordCell", for: indexPath)
        
        cell.textLabel?.text = vocabWords[indexPath.row].word

        return cell
    }

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        // Get the new view controller using segue.destination.
        if segue.identifier == "ShowDefinitionSegue" {
            guard let cell = tableView.indexPathForSelectedRow, let definitionVC = segue.destination as? DefinitionViewController else { return }
            
            // Pass the selected object to the new view controller.
            definitionVC.vocabWord = vocabWords[cell.row]
        }
    }
    
    var vocabWords: [VocabularyWord] = [
        VocabularyWord(word: "Adaptive Interface",
                       definition: "A user interface (UI) that automatically adjusts so that it looks good in the context of the available screen space."),
        VocabularyWord(word: "App Delegate",
                       definition: "An object in your app (specifically, an instance of the AppDelegate class) that creates the window where your app’s content is drawn and that provides a place to respond to state transitions within the app."),
        VocabularyWord(word: "Application Object",
                       definition: "An object in your app that’s responsible for managing the life cycle of the app, communicating with its delegate, the app delegate, during state transitions within the app."),
        VocabularyWord(word: "Clean",
                       definition: "Removes all the product files, as well as any object files or other intermediate files created during the build process."),
        VocabularyWord(word: "Closure",
                       definition: "A self-contained block of functionality that can be passed around and used in your code. Closures in Swift are similar to blocks in C and Objective-C and to lambdas in other programming languages."),
        VocabularyWord(word: "Cocoa Touch",
                       definition: "The set of Apple frameworks and technologies used to develop iOS apps."),
        VocabularyWord(word: "Completion Handler",
                       definition: "A closure that’s passed as a parameter to a method that calls the closure when it finishes executing."),
        VocabularyWord(word: "Constant",
                       definition: "A value that’s initialized once and cannot change, indicated in Swift by the let keyword."),
        VocabularyWord(word: "Constraint",
                       definition: "In Auto Layout, a rule that explains where one element should be located relative to another, what size it should be, or which of two elements should shrink first when something reduces the space available for each of them."),
        VocabularyWord(word: "Content View",
                       definition: "A view object that’s located at the top of a view hierarchy, serving as a container for the subviews in its hierarchy."),
        VocabularyWord(word: "Convenience Initializer",
                       definition: "A secondary initializer, which adds additional behavior or customization, but must eventually call through to a designated initializer."),
        VocabularyWord(word: "Data Model",
                       definition: "The representation or structure of data within an app."),
        VocabularyWord(word: "Data Source",
                       definition: "An object that manages the app’s data model, providing a view object with the information it needs to display that data."),
        VocabularyWord(word: "Delegate",
                       definition: "An object that acts on behalf of, or in coordination with, another object."),
        VocabularyWord(word: "Designated Initializer",
                       definition: "One of the primary initializers for a class; a convenience initializer within a class must ultimately call through to a designated initializer."),
        VocabularyWord(word: "Downcast",
                       definition: "To attempt to cast an object to one of its subclass types."),
        VocabularyWord(word: "Failable Initializer",
                       definition: "An initializer that could return nil after initialization."),
        VocabularyWord(word: "First Responder",
                       definition: "An object that is first to receive many kinds of app events, including key events, motion events, and action messages, among others."),
        VocabularyWord(word: "Function",
                       definition: "A reusable, named piece of code that can be referred to from many places in a program."),
        VocabularyWord(word: "Gesture Recognizer",
                       definition: "An object that you attach to a view that allows the view to respond to actions the way a control does."),
        VocabularyWord(word: "Global",
                       definition: "A constant, variable, or function defined at the top-level scope of a program."),
        VocabularyWord(word: "Guard",
                       definition: "A guard statement declares a condition that must be true in order for the code after the guard statement to be executed. Using a guard statement for requirements improves the readability of your code, compared to doing the same check with an if statement."),
        VocabularyWord(word: "Identity Inspector",
                       definition: "An inspector that you use to edit properties of an object in a storyboard related to that object’s identity, such as what class the object belongs to."),
        VocabularyWord(word: "Identity Operator",
                       definition: "An operator (===) that tests whether two object references both refer to the same object instance."),
        VocabularyWord(word: "Inheritance",
                       definition: "When a class is a subclass of another class, it gets all of its behavior (methods, properties, and other characteristics) from its superclass."),
        VocabularyWord(word: "Initializer",
                       definition: "A method that handles the process of preparing an instance of a class, structure, or enumeration for use, which involves setting an initial value for its properties and performing any other required setup."),
        VocabularyWord(word: "Inspector Pane",
                       definition: "An area in Xcode that displays inspectors, such as the Attributes inspector, Identity inspector, and Size inspector."),
        VocabularyWord(word: "Intrinsic Content Size",
                       definition: "The minimum size needed to display all the content in a view without clipping or distorting that content."),
        VocabularyWord(word: "Modal Segue",
                       definition: "A segue in which one view controller presents another view controller as its child. The user must interact with the presented controller, and dismiss it before returning to the app’s main flow. Use modal segues to present tasks that the user must complete before continuing."),
        VocabularyWord(word: "Navigation Controller",
                       definition: "A specialized view controller subclass that manages transitions backward and forward through a series of view controllers."),
        VocabularyWord(word: "Navigation Stack",
                       definition: "The set of view controllers managed by a particular navigation controller."),
        VocabularyWord(word: "Nil Coalescing Operator",
                       definition: "An operator (??) placed between two values, a ?? b, that unwraps an optional a if it contains a value, or returns a default value b if a is nil."),
        VocabularyWord(word: "Optional Binding",
                       definition: "The process of attempting to assign an optional value to a constant in a conditional statement to see if the optional contains an underlying value."),
        VocabularyWord(word: "Outlet",
                       definition: "A reference to an object in a storyboard from a source code file."),
        VocabularyWord(word: "Outline View",
                       definition: "A pane in a storyboard that lets you see a hierarchical representation of the objects in your storyboard."),
        VocabularyWord(word: "Override",
                       definition: "To replace an implementation of a method defined on a superclass."),
        VocabularyWord(word: "Property",
                       definition: "A piece of data encapsulated within a class, structure, or enumeration."),
        VocabularyWord(word: "Property Observer",
                       definition: "A piece of code that’s called every time the value of a property is set. Use property observers to observe and respond to changes in the property’s value."),
        VocabularyWord(word: "Protocol",
                       definition: "A blueprint of methods, properties, and other requirements that suit a particular task or piece of functionality."),
        VocabularyWord(word: "Resize Handles",
                       definition: "Small white squares that appear on a user interface (UI) element’s borders when it’s selected so you can change its size on the canvas."),
        VocabularyWord(word: "Root View Controller",
                       definition: "The first item added to a the navigation stack of a navigation controller. The root view controller is never popped off (removed from) the stack."),
        VocabularyWord(word: "Run Loop",
                       definition: "An event processing loop that you use to schedule work and coordinate the receipt of incoming events in your app."),
        VocabularyWord(word: "Scene",
                       definition: "A storyboard representation of a screen of content in your app."),
        VocabularyWord(word: "Show Segue",
                       definition: "A segue that varies the way new content is displayed based on the target view controller. For navigation controllers, the show segue pushes new content on top of the current view controller stack. Use a navigation controller and show segues to navigate through hierarchical data."),
        VocabularyWord(word: "Source View Controller",
                       definition: "The view controller whose contents are displayed at the beginning of a segue."),
        VocabularyWord(word: "Storyboard Entry Point",
                       definition: "The first scene that’s shown from a storyboard when an app starts."),
        VocabularyWord(word: "Subclass",
                       definition: "A class that’s a child of another class (known as its superclass)."),
        VocabularyWord(word: "Subview",
                       definition: "A view that is enclosed by another view (known as its superview)."),
        VocabularyWord(word: "Superclass",
                       definition: "A class that’s a parent of another class (known as its subclass)."),
        VocabularyWord(word: "Superview",
                       definition: "A view that encloses another view (known as its subview)."),
        VocabularyWord(word: "Swift Standard Library",
                       definition: "A set of data types and capabilities designed for Swift and baked into the language"),
        VocabularyWord(word: "Target",
                       definition: "The object that receives the action message in the target-action pattern."),
        VocabularyWord(word: "Target-Action",
                       definition: "A design pattern in which one object sends a message to another object when a specific event occurs."),
        VocabularyWord(word: "Tuple",
                       definition: "A grouping of values."),
        VocabularyWord(word: "Type Casting",
                       definition: "A way to check the type of an object, and to treat that object as if it’s a different superclass or subclass from somewhere else in its own class hierarchy."),
        VocabularyWord(word: "UIKit",
                       definition: "A Cocoa Touch framework for working with the user interface (UI) layer of an iOS app."),
        VocabularyWord(word: "Unit Test",
                       definition: "A piece of code written specifically to test a small, self-contained piece of behavior in your app to make sure it behaves correctly."),
        VocabularyWord(word: "Unwind Segue",
                       definition: "A type of segue used to implement backward navigation."),
        VocabularyWord(word: "Variable",
                       definition: "A value that can change after it’s been initialized, indicated in Swift by the var keyword."),
        VocabularyWord(word: "View",
                       definition: "An object that’s used to construct your user interface (UI) and display content to the user."),
        VocabularyWord(word: "View Controller",
                       definition: "An object that manages a set of views and coordinates the flow of information between the app’s data model and the views that display that data."),
        VocabularyWord(word: "View Hierarchy",
                       definition: "A hierarchical representation of views relative to other views.")
    ]
    
}

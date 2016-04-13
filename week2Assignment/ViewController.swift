//
//  ViewController.swift
//  week2Assignment
//
//  Created by Paulo Tam on 13/04/2016.
//  Copyright © 2016 Paulo Tam. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }


  @IBOutlet weak var name: UITextField!
  @IBOutlet weak var age: UITextField!
  @IBOutlet weak var displayMultiText: UITextView!
  
  
  @IBAction func processNameAndAge(sender: AnyObject) {
    
    if name.text! == "" {
      displayMultiText.text = "Please enter your name!"
    } else if age.text! == "" {
      displayMultiText.text = "Please enter your age!"
    } else if Int(age.text!) == nil {
      displayMultiText.text = "Please enter your age as a number!"
    }else {
      displayMultiText.text = "Hello \(name.text!), you are \(age.text!) years old!"
    }
  }
  
 
  @IBAction func helloWorld(sender: AnyObject) {
    displayMultiText.text = "Hello World"
  }
}


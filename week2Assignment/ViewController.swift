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
      displayMulti("Please enter your name!")
    } else if age.text! == "" {
      displayMulti("Please enter your age!")
    } else if Int(age.text!) == nil {
      displayMulti("Please enter your age as a number!")
    }else {
      displayMulti("Hello \(name.text!), you are \(age.text!) years old!")
    }
  }
  
  func displayMulti(displayText: String) {
    displayMultiText.text = displayText
  }
  
  @IBAction func processPart3(sender: AnyObject) {
    let myAge = Int(age.text!)
    if myAge == nil {
      displayMulti("Please enter your age as a number!")
    } else {
      if myAge >= 21 {
        displayMulti("You can drink!")
      }else if myAge >= 18{
        displayMulti("You can vote.")
      }else if myAge >= 16 {
        displayMulti("You can drive")
      }else {
        displayMulti("Grow up!")
      }

    }
  }
 
  @IBAction func processPart4(sender: AnyObject) {
    let myAge = Int(age.text!)
    if myAge == nil {
      displayMulti("Please enter your age as a number!")
    } else {
      if myAge >= 16 && myAge <= 17  {
        displayMulti("You can drive!")
      }else if myAge >= 18 && myAge <=  20 {
        displayMulti("You can drive and vote!")
      }else if myAge >= 21 {
        displayMulti("You can vote, drive, and drink (but not at the same time!).")
      }else {
        displayMulti("Grow up!")
      }

      
    }
  }
  
  
  @IBAction func helloWorld(sender: AnyObject) {
    displayMultiText.text = "Hello World"
  }
}


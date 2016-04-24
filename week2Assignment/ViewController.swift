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
   // guard let name.text! else { displayMulti("Please enter your name!") }
    
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
  
  @IBOutlet weak var currentValue: UILabel!
  @IBOutlet weak var newValue: UITextField!
  
  
  @IBAction func processAdd(sender: AnyObject) {
    let myAdd = Int(newValue.text!)
    if myAdd == nil {
      //ERROR?
    } else {
      let myCurrentValue = Int(currentValue.text!)
      let myNew = myAdd! + myCurrentValue!
      currentValue.text = String(myNew)
    }
  }
  
  
  
  
  @IBOutlet weak var evenOddField: UITextField!
  @IBOutlet weak var evenOddDisplay: UILabel!
  
  func displayOddEven(displayText: String) {
    evenOddDisplay.text = displayText
  }
  
  
  @IBAction func processEvenOrOdd(sender: AnyObject) {
    let checkNumber = Int(evenOddField.text!)
    if checkNumber == nil {
      displayOddEven("Please enter a number!")
    } else {
      if checkNumber! % 2 == 0 {
        displayOddEven("Its Even")
      } else {
        displayOddEven("Its Odd")
      }
    }
    
  }

  
  class FibonacciAdder {
    
    func fibonacciNumberAtIndex(indexOfFibonacciNumber:Int) -> Double {
      let fibNum = indexOfFibonacciNumber
      var current:Double = 0, next:Double = 1, result:Double = 0
      for _ in 0..<fibNum+1 {
        //current val is 3
        //temp value becomes 3
        let tempVar:Double = current
        //current value becomes next(5)
        current = next
        //next value becomes old current(temporoary) + new current(old next)
        next = tempVar + current
        result = tempVar
        print (result)
      }
      return Double(result)
    }
    
  }
  
  
  @IBOutlet weak var fibNumber: UITextField!
  @IBOutlet weak var fibDisplay: UILabel!
  
  @IBAction func fibProcess(sender: AnyObject) {
    let checkNumber = Int(fibNumber.text!)
    if checkNumber == nil {
      fibDisplay.text = "Please enter a number!"
    } else {
      let f = FibonacciAdder()
      fibDisplay.text = String(f.fibonacciNumberAtIndex(checkNumber!))
    }

  }
  
  
}


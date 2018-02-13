//
//  ViewController.swift
//  Hello Word
//
//  Created by Radomyr Sidenko on 10.02.2018.
//  Copyright © 2018 Radomyr Sidenko. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var testField: UITextField!
    
    @IBOutlet weak var labteForDebug: UILabel!
    
    var currentNuber: Int = 0
    
    var action:String? //var action:String = ""

    var number:String = ""
    
    @IBAction func celarBut(_ sender: Any) {
        testField.text = ""
        number = ""
    }
    @IBAction func clearLast(_ sender: Any) {
        testField.text = String (describing:
        testField.text?.dropLast() ?? "")
        number.remove(at: number.index(before: number.endIndex))
    }
    
    
    @IBAction func equal(_ sender: Any) {
        labteForDebug.text = String(currentNuber) + "; " +  number
        if(action == "+"){
            testField.text=testField.text! + "=" + String(currentNuber + (Int(number) ?? 0))
            number = String(currentNuber + Int(number)!)
        }else if(action == "-"){
//            testField.text = String (currentNuber - fetcText())
            testField.text=testField.text! + "=" + String(currentNuber - (Int(number) ?? 0))
            number = String(currentNuber - Int(number)!)
        }else if(action == "*"){
            testField.text=testField.text! + "=" + String(currentNuber * (Int(number) ?? 0))
            number = String(currentNuber * Int(number)!)
        }else if(action == "/"){
            testField.text=testField.text! + "=" + String(currentNuber / (Int(number) ?? 0))
            number = String(currentNuber / Int(number)!)
        }
        
    }
    
    @IBAction func operatorCalcu(_ sender: UIButton) {
        currentNuber = (Int(number) ?? 0)
        testField.text = testField.text! + sender.currentTitle!
        number = ""
        action = sender.currentTitle!
    }
    
    
    
    @IBAction func buttonPresed1(_ sender: UIButton!){
        let currentDigit = sender.currentTitle
        number = (number ?? "") +  (currentDigit ?? "")
        if let currentTitle = testField.text{
            let appendDigit = currentTitle + currentDigit!
            testField.text = appendDigit
            //forBugLabel.text = String((Int(number) ?? 0)+4)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
   }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
//    func fetcText() -> Int{
//        if let currentTitle = testField.text,
//            let number = Int (currentTitle){
//            return number
//        }
//        return 0
//    }

}

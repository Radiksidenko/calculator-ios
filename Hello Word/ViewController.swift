//
//  ViewController.swift
//  Hello Word
//
//  Created by Radomyr Sidenko on 10.02.2018.
//  Copyright © 2018 Radomyr Sidenko. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    ////////////////////////////
    @IBOutlet var testButtonUI: UIButton!
    ////////////////////////////
    
    
    
    @IBOutlet weak var testField: UITextField!
    var currentNuber: Int = 0
    
    var action:String? //var action:String = ""

    @IBAction func celarBut(_ sender: Any) {
        testField.text = ""
    }
    @IBAction func clearLast(_ sender: Any) {
        testField.text = String (describing:
         testField.text?.dropLast() ?? "")
    }
    
    
    @IBAction func equal(_ sender: Any) {
        if(action == "plus"){
            testField.text = String (fetcText() + currentNuber)
        }else if(action == "minus"){
            testField.text = String (currentNuber - fetcText())
        }
        
    }
    @IBAction func plus(_ sender: Any) {
        currentNuber = fetcText()
        testField.text = ""
        action = "plus"
    }
    
    @IBAction func minus(_ sender: Any) {
        currentNuber = fetcText()
        testField.text = ""
        action = "minus"
    }
    
    func fetcText() -> Int{
        if let currentTitle = testField.text,
            let number = Int (currentTitle){
            return number
        }
        return 0
    }
    
    @IBAction func buttonPresed1(_ sender: UIButton!){
        let currentDigit = sender.currentTitle
        
        if let currentTitle = testField.text{
            let appendDigit = currentTitle + currentDigit!
            testField.text = appendDigit
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
   }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}
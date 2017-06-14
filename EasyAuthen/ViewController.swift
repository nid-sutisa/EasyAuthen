//
//  ViewController.swift
//  EasyAuthen
//
//  Created by Student10 on 6/13/2560 BE.
//  Copyright © 2560 Student10. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //Implicit
    var strUser: String?
    var strPassword: String?
    
    
    
    @IBOutlet weak var usernameTextField: UITextField!
    
    
    
    
    @IBOutlet weak var passwordTextField: UITextField!
    
    
    
    
    
    @IBOutlet weak var messageLabel: UILabel!
    
    
    
    @IBAction func loginButtom2(_ sender: Any) {
        
//        messageLabel.text = "  "
        
        //get value form Textfield
        strUser = usernameTextField.text
        strPassword = passwordTextField.text
        
        //show user and pass on console
        print("user ==>  \(strUser!)")
        print("password ==> \(strPassword!)")

        //find count string
        let intUser = strUser?.characters.count
        let intPass = strPassword?.characters.count
        
        print("intUser ==> \(intUser!)")
        print("intPass ==> \(intPass!)")
        
        //call checkSpace
        if checkSpace(myString: strUser!) && checkSpace(myString: strPassword!) {
            print("No Space")
            showMessage(strMessage: " ")
        } else {
        
        print("have space")
        showMessage(strMessage: "please fill user")
            
        }
        
        
        
    } //login buttom
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        
    }//main method
    
    func showMessage(strMessage: String) -> Void {
        messageLabel.text = strMessage
       
    }
    

    func checkSpace (myString: String) -> Bool {

        let intString = myString.characters.count
        var result: Bool = true
 
        if intString == 0 {
            //have space
            result = false
        }
        
        
        return result
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }// didRecieve


} //mainclass


//
//  SignInSubViewController.swift
//  Dropbox
//
//  Created by Kyle Pickering on 9/11/14.
//  Copyright (c) 2014 Kyle Pickering. All rights reserved.
//

import UIKit

class SignInSubViewController: UIViewController, UIActionSheetDelegate {

    @IBOutlet weak var emailAddressField: UITextField!
    @IBOutlet weak var signInButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        emailAddressField.becomeFirstResponder()
        
        signInButton.alpha = 0
        signInButton.enabled = false
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func tapTrouble(sender: AnyObject) {
        view.endEditing(true)
        var sheet: UIActionSheet = UIActionSheet()
        sheet.delegate = self
        sheet.addButtonWithTitle("Forgot Password?")
        sheet.addButtonWithTitle("Single Sign-On")
        sheet.addButtonWithTitle("Cancel")
        sheet.cancelButtonIndex = 2;
        sheet.showInView(self.view)
    }
    
    @IBAction func clickBackNav(sender: AnyObject) {
        navigationController?.popViewControllerAnimated(true)
    }

    @IBAction func onTap(sender: AnyObject) {
        view.endEditing(true)
    }
    @IBAction func emailAddressChanged(sender: AnyObject){
        if emailAddressField.text != nil {
            signInButton.enabled = true
            signInButton.alpha = 1
        } else {
            signInButton.enabled = false
            signInButton.alpha = 0
        }
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue!, sender: AnyObject!) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

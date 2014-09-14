//
//  CreateAccountSubViewController.swift
//  Dropbox
//
//  Created by Kyle Pickering on 9/10/14.
//  Copyright (c) 2014 Kyle Pickering. All rights reserved.
//

import UIKit

class CreateAccountSubViewController: UIViewController, UIActionSheetDelegate {

    @IBOutlet weak var firstNameField: UITextField!
    @IBOutlet weak var createButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        firstNameField.becomeFirstResponder()
        createButton.enabled = false
        createButton.alpha = 0 
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func tapCreateButton(sender: AnyObject) {
        var sheet: UIActionSheet = UIActionSheet();
        let title: String = "Before you can complete your registration, you must accept the Dropbox Terms of Service.";
        sheet.title = title;
        sheet.delegate = self;
        sheet.addButtonWithTitle("I Agree");
        sheet.addButtonWithTitle("View Terms");
        sheet.showInView(self.view);
    }
    
    func actionSheet(sheet: UIActionSheet!, clickedButtonAtIndex buttonIndex: Int) {
        switch buttonIndex {
        case 0:
            // clicked Agree
            performSegueWithIdentifier("createButtonSegue", sender: self)
            
        default:
            performSegueWithIdentifier("termsSegue", sender: self)
        }
    }
    
    @IBAction func clickBackNav(sender: AnyObject) {
        navigationController?.popViewControllerAnimated(true)
    }

    @IBAction func onTap(sender: AnyObject) {
        view.endEditing(true)
    }
    
    @IBAction func nameChanged(sender: AnyObject) {
        if firstNameField.text != nil {
            createButton.enabled = true
            createButton.alpha = 1
        } else {
            createButton.enabled = false
            createButton.alpha = 0
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

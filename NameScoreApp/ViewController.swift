//
//  ViewController.swift
//  NameScoreApp
//
//  Created by 桑古　昌輝 on 2016/02/24.
//  Copyright © 2016年 桑古　昌輝. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func showAlert() {
        // バージョンを調べる
        // バージョンによってアラートが違うため
        let VERSION: Float = (UIDevice.currentDevice().systemVersion as NSString).floatValue
        // version 8.0以上
        if VERSION >= 8.0 {
            let alertController = UIAlertController(title: "Error", message: "Please enter your name", preferredStyle: .Alert)
            let defaultAction = UIAlertAction(title: "OK", style: .Default, handler: nil)
            alertController.addAction(defaultAction)
            self.presentViewController(alertController, animated: true, completion: nil)
        } else {
            let alert = UIAlertView()
            alert.title = "Error"
            alert.message = "Please enter yout name"
            alert.addButtonWithTitle("OK")
            alert.show()
        }
    }
    
    override func shouldPerformSegueWithIdentifier(identifier: String, sender: AnyObject?) -> Bool {
        if identifier == "showResult" {
            if self.textField.text == "" {
                self.showAlert()
                return false
            }
            return true
        }
        return true
    }

    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "showResult" {
            let resultViewController:
            ResultViewController = segue.destinationViewController as! ResultViewController
            
            resultViewController.myName = self.textField.text!
            
        }
    }
}


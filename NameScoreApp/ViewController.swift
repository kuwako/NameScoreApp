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

    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let resultViewController:
        ResultViewController = segue.destinationViewController as! ResultViewController
        
        resultViewController.myName = self.textField.text!
    }
}


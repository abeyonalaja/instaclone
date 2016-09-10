//
//  ViewController.swift
//  Instaclone
//
//  Created by Abideen Onalaja on 10/09/2016.
//  Copyright © 2016 Glow. All rights reserved.
//

import UIKit
import Parse

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let object = PFObject(className: "testObj")
        object["name"] = "Grrr"
        object["lastname"] = "The great"
        object.saveInBackgroundWithBlock { (done:Bool, error:NSError?) in
            if done {
                print("saved")
            } else {
                print(error)
            }
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


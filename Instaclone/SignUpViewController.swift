//
//  SignUpViewController.swift
//  Instaclone
//
//  Created by Abideen Onalaja on 16/09/2016.
//  Copyright © 2016 Glow. All rights reserved.
//

import UIKit

class SignUpViewController: UIViewController {

    @IBOutlet var avaImg: UIImageView!
    @IBOutlet var usernameTxt: UITextField!
    @IBOutlet var passwordTxt: UITextField!
    @IBOutlet var confirmPasswordTxt: UITextField!
    @IBOutlet var fullNameTxt: UITextField!
    @IBOutlet var bioTxt: UITextField!
    @IBOutlet var webTxt: UITextField!
    
    @IBOutlet weak var signUpBtn: UIButton!
    @IBOutlet weak var cancelBtn: UIButton!
    
    
    @IBOutlet var scrollView: UIScrollView!
    var scrollViewHeight : CGFloat = 0
    
    var keyboard = CGRect();
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func signUpBtnClick(_ sender: AnyObject) {
    }

    @IBAction func cancaleBtnClick(_ sender: AnyObject) {
        self.dismiss(animated: true, completion: nil)
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

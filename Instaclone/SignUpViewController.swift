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
        scrollView.bounds = CGRect(x: 0, y: 0, width: Int(self.view.frame.width), height: Int(self.view.frame.height))
        
        scrollView.contentSize.height = scrollView.frame.size.height
        scrollViewHeight = scrollView.frame.size.height
        
        
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillShow(_:)), name: .UIKeyboardWillShow, object: nil)
        
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillHide(_:)), name: .UIKeyboardWillHide, object: nil)

        let hideTap = UITapGestureRecognizer(target: self, action: #selector(SignUpViewController.hideKeyboardTap))
        hideTap.numberOfTapsRequired = 1
        self.view.isUserInteractionEnabled = true
        self.view.addGestureRecognizer(hideTap)
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
    
    func hideKeyboardTap() {
        self.view.endEditing(true)
    }
    
    func showKeyboard() {
        print("Fuck that guy")
    }

    func hideKeyboard() {
        print("Fuck that guy")
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    
    func keyboardWillShow(_ notification: NSNotification) {
        print("Will Sjhow")
        keyboard = (notification.userInfo?[UIKeyboardFrameEndUserInfoKey]  as! NSValue).cgRectValue
        
        UIView.animate(withDuration: 0.4) { 
            self.scrollView.frame.size.height = self.scrollViewHeight - self.keyboard.height
        }
    }
    
    func keyboardWillHide(_ notification: NSNotification) {
        print("Hide KEYBOARD")
        
        UIView.animate(withDuration: 0.4) {
            self.scrollView.frame.size.height = self.view.frame.height
        }
    }
    
}

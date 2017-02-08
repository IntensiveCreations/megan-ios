//
//  LoginController.swift
//  megan
//
//  Created by tony on 2/8/17.
//  Copyright © 2017 megan. All rights reserved.
//

import Foundation
// import Lock
import Firebase
import FirebaseAuthUI
import FBSDKLoginKit
import SwaggerClient

class LoginViewController: UIViewController {

    @IBAction func onLogginButtonTouchUpInside(_ sender: UIButton) {
        /*
        let controller = A0Lock.shared().newLockViewController()
        controller?.closable = true
        controller?.onAuthenticationBlock = { profile, token in
            // Do something with token  profile. e.g.: save them.
            // Lock will not save these objects for you.
            SwaggerClientAPI.customHeaders["Authorization"] = "Bearer " + token!.idToken
            let request = DefaultAPI.userItemApiGetWithRequestBuilder()
            request.execute({ response, error in
                if (response != nil) {
                    controller?.dismiss(animated: true, completion: nil)
                }
            });
            // Don't forget to dismiss the Lock controller
            
        }
        A0Lock.shared().present(controller, from: self)
        */
        let authUI = FUIAuth.defaultAuthUI()
        let authViewController = authUI?.authViewController()
        self.present(authViewController!, animated: true, completion: nil)
        
    }
    
    
    @IBAction func btn2(_ sender: UIButton) {

        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        let token = appDelegate.token;
        
        SwaggerClientAPI.customHeaders["Authorization"] = "Bearer " + token;
        let request = DefaultAPI.userItemApiGetWithRequestBuilder()
        request.execute({ response, error in
            if (response != nil) {
                //controller?.dismiss(animated: true, completion: nil)
            }
        });

    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

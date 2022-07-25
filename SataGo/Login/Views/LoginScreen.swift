//
//  LoginScreen.swift
//  SataGo
//
//  Created by Abdallah Ehab on 20/07/2022.
//

import UIKit

class LoginScreen: UIViewController {

    @IBOutlet weak var loginButton: UIButton!
    @IBOutlet weak var usernameView: UIView!
    @IBOutlet weak var passwordView: UIView!
    @IBOutlet weak var faceView: UIView!
    @IBOutlet weak var googleView: UIView!
    
    
    @IBOutlet weak var emailTF: UITextField!
    @IBOutlet weak var passwordTF: UITextField!
    
    
    
    @IBOutlet weak var loginDetailsInfoLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureUIViews()

    }
    
    @IBAction func goToHomeScreen(_ sender: UIButton) {
        navigationController?.pushViewController(HomeController(), animated: true)
    }
    
    
    @IBAction func loginByGoogle(_ sender: UIButton) {
        navigationController?.pushViewController(SelectLocation(), animated: true)
    }
    
    
    @IBAction func loginByFacebook(_ sender: UIButton) {
    }
    
    
    @IBAction func goToRegisterScreen(_ sender: UIButton) {
        navigationController?.pushViewController(RegisterScreen(), animated: true)
    }
    
    
    @IBAction func recoverPassword(_ sender: UIButton) {
        navigationController?.pushViewController(ForgetPassword(), animated: true)
    }
    
    
    func configureUIViews(){
        navigationController?.navigationBar.tintColor = .black
        loginButton.layer.cornerRadius  = 0.5 * loginButton.bounds.size.width
        loginButton.clipsToBounds       = true
        
        let customeUIViews = [usernameView,passwordView,googleView,faceView]
        
        for customeUIViews in customeUIViews {
            customeUIViews?.changeTextFaildShapeWith(cornerRadius:SGConstant.SGradius,
                                                     borderColor: SGConstant.SGborderClor,
                                                     borderWidth: SGConstant.SGborderWidth)
        }
        googleView.layer.borderColor    = UIColor.red.cgColor
        faceView.layer.borderColor      = UIColor.black.cgColor
        
    }


}


//
//  RegisterScreen.swift
//  SataGo
//
//  Created by Abdallah Ehab on 20/07/2022.
//

import UIKit

class RegisterScreen: UIViewController {

    @IBOutlet weak var emailView: UIView!
    @IBOutlet weak var passwordView: UIView!
    @IBOutlet weak var enterButton: UIButton!
    @IBOutlet weak var googleView: UIView!
    @IBOutlet weak var faceView: UIView!
    
    @IBOutlet weak var nameTF: UITextField!
    @IBOutlet weak var phoneTf: UITextField!
    
    
    @IBOutlet weak var createAccountLabel: UILabel!
    
    @IBOutlet weak var registerInfoLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureUIViews()

    }

    @IBAction func goToRegistrationSteps(_ sender: UIButton) {
        navigationController?.pushViewController(ConfirmAccount(), animated: true)

        
    }
    
    @IBAction func facebookRegister(_ sender: UIButton) {
    }
    
    
    @IBAction func googleRegister(_ sender: UIButton) {
    }
    
    func configureUIViews(){
        enterButton.layer.cornerRadius  = 0.5 * enterButton.bounds.size.width
        enterButton.clipsToBounds = true
        
        let customeUIViews = [emailView,passwordView,googleView,faceView]
        
        for customeUIView in customeUIViews {
            customeUIView?.changeTextFaildShapeWith(cornerRadius:SGConstant.SGradius,
                                                    borderColor: SGConstant.SGborderClor,
                                                    borderWidth: SGConstant.SGborderWidth)
        }
        googleView.layer.borderColor    = UIColor.red.cgColor
        faceView.layer.borderColor      = UIColor.black.cgColor
        
    }

    
}

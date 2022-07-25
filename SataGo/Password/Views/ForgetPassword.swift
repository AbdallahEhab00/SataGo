//
//  ForgetPassword.swift
//  SataGo
//
//  Created by Abdallah Ehab on 20/07/2022.
//

import UIKit

class ForgetPassword: UIViewController {

    @IBOutlet weak var emaillView: UIView!
    @IBOutlet weak var emailTF: UITextField!
    @IBOutlet weak var enterButton: UIButton!
    
    @IBOutlet weak var recoverPassLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        configureUIViews()

    }
    
    @IBAction func goToRecoveryPassScreen(_ sender: UIButton) {
        let VC = ConfirmAccount()
        VC.isUserForgetPass = true
        navigationController?.pushViewController(VC, animated: true)
    }
    
    
    func configureUIViews(){
        enterButton.layer.cornerRadius  = 0.5 * enterButton.bounds.size.width
        enterButton.clipsToBounds = true
        
        emaillView.changeTextFaildShapeWith(cornerRadius: SGConstant.SGradius,
                                            borderColor: SGConstant.SGborderClor,
                                            borderWidth: SGConstant.SGborderWidth)
        
    }


}

//
//  ConfirmAccount.swift
//  SataGo
//
//  Created by Abdallah Ehab on 20/07/2022.
//

import UIKit

class ConfirmAccount: UIViewController {

    @IBOutlet weak var activeAccountLabel: UILabel!
    @IBOutlet weak var msgInfoLabel: UILabel!
    
    @IBOutlet weak var enterButton: UIButton!
    @IBOutlet weak var resendCodeLabel: UILabel!
    
    
    var isUserForgetPass = false

    override func viewDidLoad() {
        super.viewDidLoad()
        enterButton.layer.cornerRadius = 0.5 * enterButton.bounds.width
        enterButton.clipsToBounds = true
        navigationController?.navigationBar.tintColor = .black
    }

    @IBAction func goToCompleteRegister(_ sender: UIButton) {
        
        if isUserForgetPass {
            navigationController?.pushViewController(NewPasswordVC(), animated: true)
        }else{
            navigationController?.pushViewController(CompleteRegister(), animated: true)
        }
        
    }
    
}


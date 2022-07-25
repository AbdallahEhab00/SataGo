//
//  CompleteRegister.swift
//  SataGo
//
//  Created by Abdallah Ehab on 20/07/2022.
//

import UIKit

class CompleteRegister: UIViewController {

    @IBOutlet weak var completeRegisterLabel: UILabel!
    @IBOutlet weak var emaillView: UIView!
    @IBOutlet weak var passwordView: UIView!
    @IBOutlet weak var phoneView: UIView!
    @IBOutlet weak var enterButton: UIButton!
    
    
    @IBOutlet weak var email: UITextField!
    @IBOutlet weak var passwordTF: UITextField!
    @IBOutlet weak var phoneTF: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureUIViews()

    }

    @IBAction func goToHomeScreen(_ sender: UIButton) {
    }
    
    
    func configureUIViews(){
        enterButton.layer.cornerRadius  = 0.5 * enterButton.bounds.size.width
        enterButton.clipsToBounds = true
        
        let customeView = [emaillView,passwordView,phoneView]
        
        for customeView in customeView {
            customeView?.changeTextFaildShapeWith(cornerRadius:SGConstant.SGradius,
                                                  borderColor: SGConstant.SGborderClor,
                                                  borderWidth: SGConstant.SGborderWidth)
        }
        
    }

}

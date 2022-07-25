//
//  NewPasswordVC.swift
//  SataGo
//
//  Created by Abdallah Ehab on 20/07/2022.
//

import UIKit

class NewPasswordVC: UIViewController {

    @IBOutlet weak var newPassView: UIView!
    @IBOutlet weak var confirmPassView: UIView!
    @IBOutlet weak var saveButton: UIButton!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureUIViews()

    }
    
    

    @IBAction func saveChanges(_ sender: UIButton) {
        
    }
    
    func configureUIViews(){
        title = "New Password"

        navigationController?.navigationBar.tintColor = .black
        saveButton.layer.cornerRadius  = SGConstant.SGradius
        
        newPassView.changeTextFaildShapeWith(cornerRadius: SGConstant.SGradius,
                                             borderColor: SGConstant.SGborderClor,
                                             borderWidth: SGConstant.SGborderWidth)
        
        confirmPassView.changeTextFaildShapeWith(cornerRadius: SGConstant.SGradius,
                                                 borderColor: SGConstant.SGborderClor,
                                                 borderWidth: SGConstant.SGborderWidth)

    }
    

}

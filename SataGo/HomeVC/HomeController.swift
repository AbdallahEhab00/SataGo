//
//  HomeController.swift
//  SataGo
//
//  Created by Abdallah Ehab on 21/07/2022.
//

import UIKit
import GoogleMaps

class HomeController: UIViewController {

    @IBOutlet weak var userMapView: UIView!
    
    
    private var GSMMap = GMSMapView()

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupView {
            GSMMap.animate(toZoom: 15)
        }
    
    }
    
   
    

}

extension HomeController: GMSMapViewDelegate{
    
    
    
    func setupView(callBack: () -> Void) {
        GSMMap.delegate = self
        setupMapViews()
        callBack()
    }
    
    
    func setupMapViews(){
        GSMMap.translatesAutoresizingMaskIntoConstraints = false
        userMapView.insertSubview(GSMMap, at: 0)
        NSLayoutConstraint.activate([
            GSMMap.topAnchor.constraint(equalTo: userMapView.topAnchor, constant: 0),
            GSMMap.leftAnchor.constraint(equalTo: userMapView.leftAnchor, constant: 0),
            GSMMap.rightAnchor.constraint(equalTo: userMapView.rightAnchor, constant: 0),
            GSMMap.bottomAnchor.constraint(equalTo: userMapView.bottomAnchor, constant: 0),
        ])
    }
    
    
}

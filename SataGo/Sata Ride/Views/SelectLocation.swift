//
//  SelectLocation.swift
//  SataGo
//
//  Created by Abdallah Ehab on 21/07/2022.
//

import UIKit

class SelectLocation: UIViewController {

    @IBOutlet weak var sourceLocationView: UIView!
    @IBOutlet weak var destinationLocationView: UIView!
    
    @IBOutlet weak var sourceLocationTF: UITextField!
    @IBOutlet weak var destinationLocationTF: UITextField!
    
    
    @IBOutlet weak var collectionView: UICollectionView!
    @IBOutlet weak var placesTableView: UITableView!
    
    let cellIdentifier = "SpecificDestinationCell"

    override func viewDidLoad() {
        super.viewDidLoad()
        setupNibs()
        configureUIViews()
    }
    
    func configureUIViews(){
        navigationController?.navigationBar.tintColor = .black
     
        sourceLocationView.changeTextFaildShapeWith(cornerRadius: SGConstant.SGradius,
                                                    borderColor: SGConstant.SGborderClor,
                                                    borderWidth: SGConstant.SGborderWidth)
        
        destinationLocationView.changeTextFaildShapeWith(cornerRadius: SGConstant.SGradius,
                                                         borderColor: SGConstant.SGborderClor,
                                                         borderWidth: SGConstant.SGborderWidth)
    }

    func setupNibs(){
        //setup Quick Destination CollectionView
        collectionView.delegate    = self
        collectionView.dataSource  = self
        collectionView.register(UINib(nibName: cellIdentifier, bundle: nil), forCellWithReuseIdentifier: cellIdentifier)
        
        //setup Places TableView
        placesTableView.delegate   = self
        placesTableView.dataSource = self
        placesTableView.registerNib(cell: PlacesCell.self)

    }
    
    
}

extension SelectLocation: UICollectionViewDelegate,UICollectionViewDataSource{
    
   
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 5
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellIdentifier, for: indexPath) as! SpecificDestinationCell
        
        return cell
    }
    
    
}

extension SelectLocation: UITableViewDelegate,UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeue() as PlacesCell
        return cell
    }
    
  
    
}

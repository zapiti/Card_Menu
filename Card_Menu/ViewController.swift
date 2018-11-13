//
//  ViewController.swift
//  Card_Menu
//
//  Created by Nathan Ranghel on 12/11/18.
//  Copyright © 2018 Nathan Ranghel. All rights reserved.
//

import UIKit


class ViewController: UIViewController {
    
    fileprivate var filtered = [String]()
    fileprivate var filterring = false
    
    lazy var qualquercoisai = CardViewController()
 
 
  
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = UIColor.white
        title = "Countries"
        
        self.navigationController?.navigationBar.prefersLargeTitles = true
        
   
        
        
            let layout: UICollectionViewFlowLayout = UICollectionViewFlowLayout()
        layout.minimumInteritemSpacing = 0
        layout.minimumLineSpacing = 8
         let cardCollection = CardViewController(collectionViewLayout: layout)
        
    
        self.view.addSubview(cardCollection.view)

    }
  
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}





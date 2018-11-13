//
//  CardViewController.swift
//  Card_Menu
//
//  Created by Nathan Ranghel on 12/11/18.
//  Copyright © 2018 Nathan Ranghel. All rights reserved.
//

import UIKit

fileprivate let cardReuseIdentifier = "CardCell"
fileprivate let headerId = "CollectionReusableView"


class CardViewController: UICollectionViewController, UICollectionViewDelegateFlowLayout {
    
    var selectedRow = 0
    
    var cards: [Card] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = UIColor.white
        title = "Countries"
        
        self.navigationController?.navigationBar.prefersLargeTitles = true
        
        
     
      
        collectionView?.backgroundColor = UIColor.white
       
        collectionView!.register(CardViewCollectionCell.self, forCellWithReuseIdentifier: cardReuseIdentifier)
        collectionView!.register(CollectionReusableView.self, forSupplementaryViewOfKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: headerId)
        
        setupCards()
    }
    
    
    
    override func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        let headerView = collectionView.dequeueReusableSupplementaryView(ofKind: kind,
                                                                         withReuseIdentifier: headerId,
                                                                         for: indexPath) as! CollectionReusableView
        return headerView
    }
    func setupCards() {
        
        let card1 = Card(title: "Mario", detail: "Mario", image: UIImage(named: "test")!, viewController: CardViewController.self)
        let card2 = Card(title: "Mario", detail: "Mario", image: UIImage(named: "test")!, viewController: CardViewController.self)
        let card3 = Card(title: "Mario", detail: "Mario", image: UIImage(named: "test")!, viewController: CardViewController.self)
        let card4 = Card(title: "Mario", detail: "Mario", image: UIImage(named: "test")!, viewController: CardViewController.self)
        let card5 = Card(title: "Mario", detail: "Mario", image: UIImage(named: "test")!, viewController: CardViewController.self)
        let card6 = Card(title: "Mario", detail: "Mario", image: UIImage(named: "test")!, viewController: CardViewController.self)
        let card7 = Card(title: "Mario", detail: "Mario", image: UIImage(named: "test")!, viewController: CardViewController.self)
        let card8 = Card(title: "Mario", detail: "Mario", image: UIImage(named: "test")!, viewController: CardViewController.self)
        let card9 = Card(title: "Mario", detail: "Mario", image: UIImage(named: "test")!, viewController: CardViewController.self)
        let card10 = Card(title: "Mario", detail: "Mario", image: UIImage(named: "test")!, viewController: CardViewController.self)
        cards = [card1,card2,card3,card4,card5,card6,card7,card8,card9,card10]
        
        collectionView?.reloadData()
    }
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return cards.count
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let paddingSpace = 20
        var width = (collectionView.frame.size.width / 2) - CGFloat(paddingSpace)
        if width > 187.5 {
            let qtdNecessario = (collectionView.frame.size.width / 187.5).rounded(.down)
            let newWidth = (collectionView.frame.size.width / qtdNecessario) - 20
            width = newWidth
        }
        let height = CGFloat(150)
        return CGSize(width: width, height: height)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForHeaderInSection section: Int) -> CGSize {
        return CGSize(width: 0, height: 55)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 16, left: 16, bottom: 16, right: 16)
    }
    
    
    override func collectionView(_ collectionView: UICollectionView, didHighlightItemAt indexPath: IndexPath) {
        let cell = collectionView.cellForItem(at: indexPath)
        cell?.alpha = 0.5
    }
    
    override func collectionView(_ collectionView: UICollectionView, didUnhighlightItemAt indexPath: IndexPath) {
        let cell = collectionView.cellForItem(at: indexPath)
        cell?.alpha = 1
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cardReuseIdentifier, for: indexPath) as! CardViewCollectionCell
        cell.card = cards[indexPath.row]
        return cell
    }
    
    override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
    }
    
    
    class CollectionReusableView: UICollectionReusableView {
        
        let viewColor: UIView = {
            let view = UIView()
            view.backgroundColor = UIColor.green
            
            view.translatesAutoresizingMaskIntoConstraints = false
            return view
        }()
        
        override init(frame: CGRect) {
            super.init(frame: frame)
            
            addSubview(viewColor)
            viewColor.leftAnchor.constraint(equalTo: leftAnchor).isActive = true
            viewColor.rightAnchor.constraint(equalTo: rightAnchor).isActive = true
            viewColor.topAnchor.constraint(equalTo: topAnchor, constant: -500).isActive = true
            viewColor.bottomAnchor.constraint(equalTo: bottomAnchor, constant: 100).isActive = true
        }
        
        required init?(coder aDecoder: NSCoder) {
            fatalError("init(coder:) has not been implemented")
        }
    }

    
}

//
//  CardViewCollectionCell.swift
//  Card_Menu
//
//  Created by Nathan Ranghel on 12/11/18.
//  Copyright © 2018 Nathan Ranghel. All rights reserved.
//

import Foundation
import UIKit

class CardViewCollectionCell : UICollectionViewCell {
    
    var card: Card! {
        didSet {
            iconImageView.image = card.image
            titleLabel.text = card.title
            detailTextView.text = card.detail
        }
    }
    
    let iconImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    let titleLabel: UILabel = {
        let label = UILabel()
        label.minimumScaleFactor = 0.5
        label.numberOfLines = 2
        label.textColor = UIColor.black
        label.textAlignment = .center
        label.font = UIFont.systemFont(ofSize: 17, weight: .medium)
        label.adjustsFontSizeToFitWidth = true
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let detailTextView: UITextView = {
        let label = UITextView()
        label.textColor = UIColor.gray
        label.textContainerInset = UIEdgeInsets.zero
        label.textContainer.lineFragmentPadding = 0
        label.isUserInteractionEnabled = false
        label.font = UIFont.systemFont(ofSize: 16)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let lineView: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor.gray
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    var rightTitleLabel: NSLayoutConstraint!
    var leftTitleLabel: NSLayoutConstraint!
    
    override func prepareForReuse() {
        super.prepareForReuse()
        
        iconImageView.tintColor = UIColor.blue
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        layer.zPosition = 2
        layer.cornerRadius = 10
        layer.masksToBounds = true
        backgroundColor = UIColor.gray
        
        
        addSubview(iconImageView)
        iconImageView.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        iconImageView.topAnchor.constraint(equalTo: topAnchor, constant: 32).isActive = true
        iconImageView.widthAnchor.constraint(equalToConstant: 50).isActive = true
        iconImageView.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
        addSubview(titleLabel)
        titleLabel.centerXAnchor.constraint(equalTo: iconImageView.centerXAnchor).isActive = true
        titleLabel.topAnchor.constraint(equalTo: iconImageView.bottomAnchor, constant: 8).isActive = true
        titleLabel.leftAnchor.constraint(equalTo: leftAnchor, constant: 16).isActive = true
        titleLabel.rightAnchor.constraint(equalTo: rightAnchor, constant: -16).isActive = true
        
        titleLabel.widthAnchor.constraint(equalTo: titleLabel.widthAnchor).isActive = true
        titleLabel.heightAnchor.constraint(equalTo: titleLabel.heightAnchor).isActive = true
        
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}


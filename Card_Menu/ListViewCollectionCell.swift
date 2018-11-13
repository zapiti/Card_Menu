//
//  ListViewCollectionCell.swift
//  Card_Menu
//
//  Created by Nathan Ranghel on 12/11/18.
//  Copyright © 2018 Nathan Ranghel. All rights reserved.
//

import Foundation
import UIKit

class ListViewCollectionCell: UICollectionViewCell {
    
    var card: Card! {
        didSet {
            iconImageView.image = card.image//.withRenderingMode(.alwaysTemplate)
            titleLabel.text = card.title
            detailTextView.text = card.detail
        }
    }
    
    let iconImageView: UIImageView = {
        let imageView = UIImageView()
        //        imageView.tintColor = UIColor.baseBlue
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    let titleLabel: UILabel = {
        let label = UILabel()
        label.minimumScaleFactor = 0.5
        //   label.textColor = UIColor.gray
        label.font = UIFont.systemFont(ofSize: 17, weight: .medium)
        label.adjustsFontSizeToFitWidth = true
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    
    let detailTextView: UITextView = {
        let label = UITextView()
        label.backgroundColor = UIColor.clear
        // label.textColor = UIColor.gray
        label.textContainerInset = UIEdgeInsets.zero
        label.textContainer.lineFragmentPadding = 0
        label.isUserInteractionEnabled = false
        label.font = UIFont.systemFont(ofSize: 16)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        layer.zPosition = 2
        layer.cornerRadius = 10
        layer.masksToBounds = true
        
        //        layer.borderWidth = 0.1
        //        layer.borderColor = UIColor.line.cgColor
        backgroundColor = UIColor.white
        
        addSubview(iconImageView)
        iconImageView.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        iconImageView.leftAnchor.constraint(equalTo: leftAnchor, constant: 16).isActive = true
        iconImageView.widthAnchor.constraint(equalToConstant: 30).isActive = true
        iconImageView.heightAnchor.constraint(equalToConstant: 30).isActive = true
        
        addSubview(titleLabel)
        titleLabel.leftAnchor.constraint(equalTo: iconImageView.rightAnchor, constant: 16).isActive = true
        titleLabel.rightAnchor.constraint(equalTo: rightAnchor, constant: -8).isActive = true
        titleLabel.topAnchor.constraint(equalTo: topAnchor, constant: 26).isActive = true
        titleLabel.widthAnchor.constraint(equalTo: titleLabel.widthAnchor).isActive = true
        titleLabel.heightAnchor.constraint(equalTo: titleLabel.heightAnchor).isActive = true
        
        addSubview(detailTextView)
        detailTextView.leftAnchor.constraint(equalTo: iconImageView.rightAnchor, constant: 16).isActive = true
        detailTextView.rightAnchor.constraint(equalTo: rightAnchor, constant: -8).isActive = true
        detailTextView.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 2).isActive = true
        detailTextView.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -8).isActive = true
        
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

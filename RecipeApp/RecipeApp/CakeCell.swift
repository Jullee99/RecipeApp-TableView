//
//  CakeCell.swift
//  RecipeApp
//
//  Created by DCS on 24/06/21.
//  Copyright © 2021 DCS. All rights reserved.
//

import UIKit

class CakeCell: UITableViewCell {
    
    lazy var backView: UIView = {
        let view = UIView(frame: CGRect(x: 10, y: 6, width: self.frame.width - 20, height: 110))
        view.backgroundColor = .white
        return view
    }()
    
    lazy var userImage: UIImageView = {
        let userImage = UIImageView(frame: CGRect(x: 4, y: 5, width: 108, height: 100))
        userImage.contentMode = .scaleAspectFill
        return userImage
    }()
    
    lazy var namelbl: UILabel = {
        let lbl = UILabel(frame: CGRect(x: 150, y: 8, width: backView.frame.width - 116, height: 60))
        lbl.font = UIFont.boldSystemFont(ofSize: 18)
        lbl.textAlignment = .left
        lbl.numberOfLines = 4
        return lbl
    }()
    
    lazy var descriptionlbl: UILabel = {
        let lbl = UILabel(frame: CGRect(x: 120, y: 42, width: backView.frame.width - 116, height: 30))
        lbl.font = UIFont.boldSystemFont(ofSize: 18)
        lbl.textAlignment = .left
        return lbl
    }()

    override func awakeFromNib() {
       super.awakeFromNib()
        
   }
    
    override func layoutSubviews() {
        contentView.backgroundColor = UIColor.clear
        backgroundColor = UIColor.clear
        backView.layer.cornerRadius = 10
        backView.clipsToBounds = true
        userImage.layer.cornerRadius = 54
        userImage.clipsToBounds = true
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        addSubview(backView)
        backView.addSubview(userImage)
        backView.addSubview(namelbl)
        backView.addSubview(descriptionlbl)
        //Configure the view for the selected state
    }

}

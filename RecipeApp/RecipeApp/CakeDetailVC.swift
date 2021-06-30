//
//  CakeDetailVC.swift
//  RecipeApp
//
//  Created by DCS on 29/06/21.
//  Copyright © 2021 DCS. All rights reserved.
//

import UIKit

class CakeDetailVC: UIViewController {

    //@IBOutlet weak var desclbl: UILabel!
    
    //@IBOutlet weak var detailimage: UIImageView!
    
    //@IBOutlet weak var detaillbl: UILabel!
    
    var image = UIImage()
    var lbl = ""
    var desc = ""
    
    private let myLabelName:UILabel = {
        let label = UILabel()
        label.textAlignment = .center
        label.font = UIFont.boldSystemFont(ofSize: 20)
        return label
    }()
    
    
    private let myImageView:UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFill
        imageView.clipsToBounds = true
        return imageView
    }()
    
    private let myTextViewDesc:UITextView = {
        let textView = UITextView()
        textView.textAlignment = .center
        return textView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Cake Details "
        view.backgroundColor = .white
        myLabelName.text = lbl
        myImageView.image = image
        myTextViewDesc.text = desc
        view.addSubview(myLabelName)
        view.addSubview(myImageView)
        view.addSubview(myTextViewDesc)
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        myLabelName.frame = CGRect(x: 10, y: 100, width: view.width - 20, height: 20)
        myImageView.frame = CGRect(x: 10, y: myLabelName.bottom + 30, width: view.width - 20, height: 260)
        myTextViewDesc.frame = CGRect(x: 10, y: myImageView.bottom + 20, width: view.width - 20, height: view.height - 30)
    }
}

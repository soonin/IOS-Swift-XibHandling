//
//  SubView.swift
//  IOS-Swift-XibHandling
//
//  Created by Pooya on 2018-10-22.
//  Copyright © 2018 Pooya. All rights reserved.
//

import UIKit

@objc protocol SubViewDelegate {
    func didTapOnMe( name : String , showMe : String)
}

class SubView: UIView {

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var textView: UITextView!
    @IBOutlet weak var buttonView: UIButton!

    var subViewDelegate : SubViewDelegate!
    
    override func awakeFromNib() {
        
        imageView.layer.cornerRadius = 15
        textView.layer.cornerRadius = 15
        buttonView.layer.cornerRadius = 15
        imageView.backgroundColor = UIColor.white
        textView.backgroundColor = UIColor.white
        buttonView.backgroundColor = UIColor.white
        imageView.layer.masksToBounds = true
        textView.layer.masksToBounds = true
        buttonView.layer.masksToBounds = true
        imageView.tag = 1
        
    }
    
    @IBAction func btnAct(_ sender: Any) {
        let nameStr = String(format:"%d",imageView.tag)
        subViewDelegate.didTapOnMe(name:  nameStr , showMe: textView.text )
    }
    
    func subViewXibInit(imageName: String, text: String, buttonName: String){
        imageView.image = UIImage(named: imageName)
        textView.text = text
        buttonView.setTitle(buttonName, for: .normal)
        print("imageName \(imageName) text \(text) button \(buttonName)")
    }
    
}

//
//  TableViewCell2.swift
//  XibTableViewCell
//
//  Created by Vattanac on 11/30/18.
//  Copyright © 2018 vattanac. All rights reserved.
//

import UIKit

class TableViewCell2: UITableViewCell {

    @IBOutlet weak var smallProfile: UIImageView!
    @IBOutlet weak var hour: UILabel!
    @IBOutlet weak var share: UILabel!
    @IBOutlet weak var comment: UILabel!
    @IBOutlet weak var mainview: UIImageView!
    @IBOutlet weak var LikeButton: UIButton!
    var isLiked = false
    @IBOutlet weak var location: UILabel!
    @IBOutlet weak var like: UILabel!
    @IBOutlet weak var privatcyIcon: UIImageView!
    @IBOutlet weak var des: UILabel!
    @IBOutlet weak var myLabel: UILabel!
    @IBOutlet weak var postpicture: UIImageView!
    
    @IBOutlet weak var textFieldd: UITextField!
    override func awakeFromNib() {
        
        popUpView.isHidden = true
        popUpView.layer.cornerRadius = 5
        //popUpView.layer.masksToBounds = true
        popUpView.backgroundColor = .white
        
        popUpView.layer.masksToBounds = false
        popUpView.layer.shadowOffset = CGSize(width: 0, height: 1)
        popUpView.layer.shadowRadius = 2;
        popUpView.layer.shadowOpacity = 0.3;

        
        super.awakeFromNib()
        textFieldd.layer.masksToBounds = true
        textFieldd.layer.cornerRadius = textFieldd.bounds.height/2
        textFieldd.layer.borderWidth = 0.2
        textFieldd.backgroundColor = UIColor(red: 227/255, green: 227/255, blue: 227/255, alpha: 0.3)
        textFieldd.placeholder = "  Write a comment..."
    }
    
    @IBAction func likeButton(_ sender: Any) {
        
        
        if(isLiked == false){
            LikeButton.setImage(#imageLiteral(resourceName: "likea"), for: .normal)
            isLiked = true
            
        }else if(isLiked == true){
            LikeButton.setImage(#imageLiteral(resourceName: "likefil"), for: .normal)
            isLiked = false
        }
        
    }
    
    @IBOutlet weak var dotButton: UIButton!
    
    @IBOutlet weak var popUpView: UIView!
    @IBAction func PressButtonDot(_ sender: Any) {
        
        if(popUpView.isHidden == true){
            dotButton.setImage(#imageLiteral(resourceName: "dotBlue"), for: .normal)
            popUpView.isHidden = false
        }else{
            dotButton.setImage(#imageLiteral(resourceName: "dot"), for: .normal)
            popUpView.isHidden = true
        }
        
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        var touch: UITouch? = touches.first
        //location is relative to the current view
        // do something with the touched point
        if touch?.view != popUpView {
            popUpView.isHidden = true
            if(popUpView.isHidden == true){
                dotButton.setImage(#imageLiteral(resourceName: "dot"), for: .normal)
                //popUpView.isHidden = false
                
            }
        }
       
    }
    
    
}

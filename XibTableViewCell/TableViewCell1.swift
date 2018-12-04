//
//  TableViewCell1.swift
//  XibTableViewCell
//
//  Created by Vattanac on 11/30/18.
//  Copyright © 2018 vattanac. All rights reserved.
//

import UIKit
import Foundation
class TableViewCell1: UITableViewCell {
    
    var isLiked = false
    @IBOutlet weak var mainView: UIImageView!
    @IBOutlet weak var myLabel: UILabel!
    @IBOutlet weak var privatcyIcon: UIImageView!
    
    @IBOutlet weak var popUpView: UIView!
    @IBOutlet weak var location: UILabel!
    @IBOutlet weak var textFieldd: UITextField!
    @IBOutlet weak var hour: UILabel!
    @IBOutlet weak var dec: UILabel!
    @IBOutlet weak var LikeButton: UIButton!
    
    @IBOutlet weak var smallProfile: UIImageView!
    @IBOutlet weak var comment: UILabel!
    @IBOutlet weak var like: UILabel!
    @IBOutlet weak var share: UILabel!
    @IBAction func likeButton(_ sender: Any) {
        
        
        if(isLiked == false){
            LikeButton.setImage(#imageLiteral(resourceName: "likea"), for: .normal)
            isLiked = true
            //cell.like = like - 1 
            
        }else if(isLiked == true){
            LikeButton.setImage(#imageLiteral(resourceName: "like"), for: .normal)
            isLiked = false
        }
        
    }
    override func awakeFromNib() {
        
        super.awakeFromNib()
        
        popUpView.isHidden = true
        popUpView.layer.cornerRadius = 5
        //popUpView.layer.masksToBounds = true
        popUpView.backgroundColor = .white
        
        
        popUpView.layer.masksToBounds = false
        popUpView.layer.shadowOffset = CGSize(width: 0, height: 1)
        popUpView.layer.shadowRadius = 2;
        popUpView.layer.shadowOpacity = 0.3;
        
        textFieldd.layer.masksToBounds = true
        textFieldd.layer.cornerRadius = textFieldd.bounds.height/2
        textFieldd.layer.borderWidth = 0.2
        textFieldd.backgroundColor = UIColor(red: 227/255, green: 227/255, blue: 227/255, alpha: 0.3)
        textFieldd.placeholder = "Write a comment..."
    }
    
   
    @IBOutlet weak var dotButton: UIButton!
    
    @IBAction func PressButtonDot(_ sender: Any) {
      
            if(popUpView.isHidden == true){
                dotButton.setImage(#imageLiteral(resourceName: "dotblue"), for: .normal)
                popUpView.isHidden = false
            }else{
                dotButton.setImage(#imageLiteral(resourceName: "dot"), for: .normal)
                popUpView.isHidden = true
            }
        
    }
}

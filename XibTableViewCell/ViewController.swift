//
//  ViewController.swift
//  XibTableViewCell
//
//  Created by Vattanac on 11/30/18.
//  Copyright © 2018 vattanac. All rights reserved.
//

import UIKit
struct cellData{
    var cell:Int!
    var imageProfile:UIImage!
    var userName:String!
    var postImage:UIImage!
    var des:String!
    var privatcyIcon:UIImage!
    var likeAmount:Int!
    var commentAmount:Int!
    var shareAmount:Int!
    var hour:Int!
    var location:String!
}
class TableViewController: UITableViewController {
    
    
    @IBOutlet var tableview: UITableView!
    var arraylist = [cellData]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
       
        
        arraylist = [cellData(cell: 1, imageProfile: #imageLiteral(resourceName: "crush"), userName: "Bopha Chnas", postImage:nil, des: "I'm silly and funny", privatcyIcon: #imageLiteral(resourceName: "public"),likeAmount:243,commentAmount:430,shareAmount:455,hour:2,location:"· Takéo ·"),
                     
                     cellData(cell: 1, imageProfile: #imageLiteral(resourceName: "v"), userName: "Vattanac Sim", postImage:nil, des: "Follow your heart", privatcyIcon: #imageLiteral(resourceName: "key"),likeAmount:500,commentAmount:430,shareAmount:455,hour:4,location:"· Kondal ·"),
                     cellData(cell: 2, imageProfile: #imageLiteral(resourceName: "v"), userName: "Vattanac Sim", postImage:#imageLiteral(resourceName: "kh"), des: "Spring Framework remains as popular today as it was when I first used it 12 years back. How is this possible in the incredibly dynamic world where architectures have completely changed?", privatcyIcon: #imageLiteral(resourceName: "acc"),likeAmount:345,commentAmount:40,shareAmount:455,hour:5,location:"· Batdombong ·"),
                     cellData(cell: 1, imageProfile: #imageLiteral(resourceName: "v"), userName: "Vattanac Sim", postImage:nil, des: "Thing Take Time!!", privatcyIcon: #imageLiteral(resourceName: "public"),likeAmount:554,commentAmount:168,shareAmount:455,hour:16,location:"· kompot ·"),
                     cellData(cell: 2, imageProfile: #imageLiteral(resourceName: "v"), userName: "Vattanac Sim", postImage:#imageLiteral(resourceName: "vot"), des: "Firebase gives you the tools to develop high-quality apps, grow your user base, and earn more money. We cover the essentials so you can monetize your business and focus on your users.", privatcyIcon: #imageLiteral(resourceName: "acc"),likeAmount:19,commentAmount:30,shareAmount:455,hour:13,location:"· koh kong ·"),
                      cellData(cell: 1, imageProfile: #imageLiteral(resourceName: "crush"), userName: "Bopha Chnas", postImage:nil, des: "This my homework", privatcyIcon: #imageLiteral(resourceName: "public"),likeAmount:500,commentAmount:788,shareAmount:455,hour:23,location:"· kep ·")
        ]
        
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arraylist.count
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if arraylist[indexPath.row].cell == 1{
            let cell = Bundle.main.loadNibNamed("TableViewCell1", owner: self, options: nil)?.first as! TableViewCell1
            cell.mainView.image = arraylist[indexPath.row].imageProfile
            cell.myLabel.text = arraylist[indexPath.row].userName
            cell.dec.text = arraylist[indexPath.row].des
            cell.privatcyIcon.image = arraylist[indexPath.row].privatcyIcon
            cell.smallProfile.image = arraylist[indexPath.row].imageProfile
            cell.like.text = String(arraylist[indexPath.row].likeAmount)
            cell.comment.text = String(arraylist[indexPath.row].commentAmount)
            cell.share.text = String(arraylist[indexPath.row].shareAmount)
            cell.hour.text = String(arraylist[indexPath.row].hour)
            cell.location.text = arraylist[indexPath.row].location
            
            return cell
        }else if arraylist[indexPath.row].cell == 2 {
            let cell = Bundle.main.loadNibNamed("TableViewCell2", owner: self, options: nil)?.first as! TableViewCell2
            
            
            
            cell.mainview.image = arraylist[indexPath.row].imageProfile
            cell.myLabel.text = arraylist[indexPath.row].userName
            cell.des.text = arraylist[indexPath.row].des
            cell.postpicture.image = arraylist[indexPath.row].postImage
            cell.privatcyIcon.image = arraylist[indexPath.row].privatcyIcon
            
            cell.des.lineBreakMode = .byWordWrapping
            cell.des.numberOfLines = 0
            
            cell.smallProfile.image = arraylist[indexPath.row].imageProfile
            cell.like.text = String(arraylist[indexPath.row].likeAmount)
            cell.comment.text = String(arraylist[indexPath.row].commentAmount)
            cell.share.text = String(arraylist[indexPath.row].shareAmount)
            cell.hour.text = String(arraylist[indexPath.row].hour)
            cell.location.text = arraylist[indexPath.row].location
            
            return cell
            
        }else {
            let cell = Bundle.main.loadNibNamed("TableViewCell1", owner: self, options: nil)?.first as! TableViewCell1
            cell.mainView.image = arraylist[indexPath.row].imageProfile
            cell.myLabel.text = arraylist[indexPath.row].userName
            return cell
        }
        
    }
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if arraylist[indexPath.row].cell == 1{
            return 210
        }else if arraylist[indexPath.row].cell == 2{
            return 500
        }else{
            return 210
        }
    }
}


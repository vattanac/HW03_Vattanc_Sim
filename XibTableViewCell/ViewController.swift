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
    
}
class TableViewController: UITableViewController {
    
    
    var arraylist = [cellData]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        arraylist = [cellData(cell: 1, imageProfile: #imageLiteral(resourceName: "v"), userName: "Vattanac Sim", postImage:nil, des: "Crush         Err Erry crush", privatcyIcon: #imageLiteral(resourceName: "public")),
                     
                     cellData(cell: 1, imageProfile: #imageLiteral(resourceName: "v"), userName: "Vattanac Sim", postImage:nil, des: "This my homework", privatcyIcon: #imageLiteral(resourceName: "key")),
                     cellData(cell: 2, imageProfile: #imageLiteral(resourceName: "v"), userName: "Vattanac Sim", postImage:#imageLiteral(resourceName: "kh"), des: "Firebase gives you the tools to develop high-quality apps, grow your user base, and earn more money. We cover the essentials so you can monetize your business and focus on your users.", privatcyIcon: #imageLiteral(resourceName: "key"))
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
            return 225  
        }else if arraylist[indexPath.row].cell == 2{
            return 380
        }else{
            return 225
        }
    }
}


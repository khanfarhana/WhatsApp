//
//  ViewController.swift
//  WhatsApp
//
//  Created by Apple on 10/03/21.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    @IBOutlet weak var edit: UIButton!
    @IBOutlet weak var tv: UITableView!
    @IBOutlet weak var img3: UIButton!
    @IBOutlet weak var seg: UISegmentedControl!
    let stts = ["","Recent updates","Viewed updates"]
    let arr = ["Farhana","Neha","Kamal","Parth","Virat","Raina","Zayn","Zayesha","Mom","Dad","Faa","Deepika"]
    let  msg = ["Hi","Hello","How Are you","Where you being","hey","Farhana","Bye","Take Care","Goodnight","Good Morning","C ya","Hi"]
    let time = ["1:55","05:06","13:19","18:12","23:10","00:59","06:01","19:08","06:01","10:19","Yesterday","28/08/2019"]
    let time2 = ["Today,17:55","Today,05:06","Today,13:19","Today,18:12","Today,03:10","Today,12:59","Today,06:01"]
    let time3 = ["Today,17:55","Today,05:06","Today,13:19","Today,18:12","Today,03:10","Today,12:59","Today,06:01","Yesterday,19:08","Yesterday,06:01","Yesterday,10:19","Yesterday,12:09","Yesterday,19:08"]
    let img = ["3.jpg","1.jpeg","4.jpg","5.jpeg","6.jpeg","7.jpeg","8.jpg","9.png","10.jpg","9.png","5.jpeg"]
    let img1 = ["call.png","video.png","call.png","video.png","call.png","video.png","call.png","video.png","call.png","video.png","call.png"]
    let calling = ["incoming","outgoing","outgoing","missed","incoming","outgoing","missed","incoming","outgoing","missed","incoming","outgoing","missed"]
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if seg.selectedSegmentIndex == 1
        {
            if section == 0
            {
                return 1
            }
            if section == 1
            {
                return arr.count/2
            }
            if section == 2
            {
                return arr.count-1
            }
    }
        return img.count
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        if seg.selectedSegmentIndex == 1
        {
            return stts.count
        }
       return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell") as! CustomTVC
        if seg.selectedSegmentIndex == 0
       {
            cell.img.layer.borderWidth = 0
            cell.desc.isHidden = false
        cell.imgbtn.isHidden = true
           cell.img.image = UIImage(named: "\(img[indexPath.row])")
           cell.img.layer.cornerRadius = 30
           cell.lb1.text = "\(arr[indexPath.row])"
           cell.desc.text = "\(msg[indexPath.row])"
           cell.time.text = "\(time[indexPath.row])"
           cell.time.isHidden = false
           cell.imgbtn.isHidden = true
            cell.imgcv.isHidden = true
            
            cell.calling.isHidden = true
            cell.lb2.isHidden = true
            self.img3.backgroundColor = UIColor.clear
           self.img3.setBackgroundImage(UIImage(named: "chat.png"), for: .normal)
           self.view.addSubview(img3)
           self.img3.isHidden = false
            self.edit.isHidden = true
            if indexPath.row == 0{
                cell.imgcv.isHidden = false
                cell.imgcv.image = UIImage(named: "pin")
                
            }
            if indexPath.row == 1{
                cell.imgcv.isHidden = false
                cell.imgcv.image = UIImage(named: "pin")
            }
            if indexPath.row == 5{
                cell.calling.isHidden = false
                cell.lb2.isHidden = false
                cell.desc.isHidden = true
                cell.calling.image = UIImage(named: "double")
                cell.lb2.text = "farhana"
            }
            if indexPath.row == 3{
                cell.calling.isHidden = false
                cell.lb2.isHidden = false
                cell.desc.isHidden = true
                cell.calling.image = UIImage(named: "double")
                cell.lb2.text = " hi faa"
            }
            if indexPath.row == 4{
                cell.calling.isHidden = false
                cell.lb2.isHidden = false
                cell.desc.isHidden = true
                cell.calling.image = UIImage(named: "single")
                cell.lb2.text = "hello"
            }}
       if seg.selectedSegmentIndex == 1
       {
           self.img3.isHidden = false
        self.img3.setBackgroundImage(UIImage(named: "camera.png"), for: .normal)
           cell.img.layer.cornerRadius = 30
        cell.calling.isHidden = true
        cell.lb2.isHidden = true
        cell.desc.isHidden = false
        self.edit.isHidden = false
        self.edit.setBackgroundImage(UIImage(named: "edit"), for: .normal)
           // cell.imgadd.isHidden = true
        cell.imgcv.isHidden = true
           cell.time.isHidden = true
           if indexPath.section == 0
           {
               
               cell.imgbtn.isHidden = false
               cell.img.image = UIImage(named: "2.jpg")
               cell.lb1.text = "My Status"
               cell.desc.text = "Tap to add status update"
            cell.imgbtn.layer.cornerRadius =  12.5
               cell.imgbtn.clipsToBounds = true
           }
           if indexPath.section == 1
           {
               cell.img.image = UIImage(named: "\(img[indexPath.row])")
               cell.lb1.text = "\(arr[indexPath.row])"
               cell.desc.text = "\(time2[indexPath.row])"
            if indexPath.section == 1
            {
                cell.img.layer.borderWidth = 2
                cell.img.layer.borderColor = UIColor.green.cgColor
            }
           }
           if indexPath.section == 2
           {
            cell.img.layer.borderWidth = 0
                cell.imgbtn.isHidden = true
               cell.img.image = UIImage(named: "\(img[indexPath.row])")
               cell.lb1.text = "\(arr[indexPath.row])"
               cell.desc.text = "\(time3[indexPath.row])"
           }
       }
       if seg.selectedSegmentIndex == 2
       {
        cell.img.layer.borderWidth = 0
           self.img3.isHidden = false
           cell.imgbtn.isHidden = true
        cell.imgcv.isHidden = false
        self.img3.backgroundColor = UIColor.clear
        self.img3.setBackgroundImage(UIImage(named: "addcall"), for: .normal)
           self.view.addSubview(img3)
           //cell.imgbtn.isHidden = false
            cell.time.isHidden = true
        cell.calling.isHidden = false
            cell.lb1.text = arr[indexPath.row]
        cell.calling.image = UIImage(named: "\(calling[indexPath.row])")
        cell.desc.isHidden = true
        cell.lb2.isHidden = false
           cell.lb2.text = time3[indexPath.row]
           cell.imgcv.image = UIImage(named: "\(img1[indexPath.row])")
        self.edit.isHidden = true
       }
       return cell
    }
    @IBAction func egment(_ sender: UISegmentedControl) {
        tv.reloadData()
    }
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let header = tableView.dequeueReusableCell(withIdentifier: "header") as! HeaderTVC
        header.lb1.text = "\(stts[section])"
        if seg.selectedSegmentIndex == 0
        {
            header.isHidden = true
            return header
        }
        if seg.selectedSegmentIndex == 1
        {
            if section == 0
            {
            header.isHidden = true
            return header
            }

        }
        return header
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
 if section == 0
 {
    return CGFloat(0.1)
    
        }
        return 50
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }


}


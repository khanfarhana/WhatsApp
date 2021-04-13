//
//  CustomTVC.swift
//  WhatsApp
//
//  Created by Apple on 10/03/21.
//

import UIKit

class CustomTVC: UITableViewCell {

    @IBOutlet weak var desc: UILabel!
    @IBOutlet weak var lb1: UILabel!
    @IBOutlet weak var lb2: UILabel!
    @IBOutlet weak var time: UILabel!
    @IBOutlet weak var img: UIImageView!
    @IBOutlet weak var imgcv: UIImageView!
    @IBOutlet weak var calling: UIImageView!
    
    @IBOutlet weak var imgbtn: UIButton!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

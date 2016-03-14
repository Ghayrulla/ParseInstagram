//
//  FeedViewCell.swift
//  ParseInstagram
//
//  Created by Gary Ghayrat on 3/14/16.
//  Copyright © 2016 Gary Ghayrat. All rights reserved.
//
import UIKit
import Parse
import ParseUI

class FeedViewCell: UITableViewCell {



    @IBOutlet weak var postImageView: PFImageView!
    @IBOutlet weak var caption: UILabel!
    
    var Post: PFObject! {
        didSet {
            self.postImageView.file = Post["media"] as? PFFile
            self.postImageView.loadInBackground()
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
}
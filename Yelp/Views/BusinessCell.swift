//
//  BusinessCell.swift
//  Yelp
//
//  Created by user142219 on 9/18/18.
//  Copyright © 2018 Timothy Lee. All rights reserved.
//

import UIKit

class BusinessCell: UITableViewCell {
    
    @IBOutlet weak var thumbnview: UIImageView!
    @IBOutlet weak var namelabel: UILabel!
    @IBOutlet weak var distancelabel: UILabel!
    @IBOutlet weak var reviewscountlabel: UILabel!
    @IBOutlet weak var ratingimageview: UIImageView!
    @IBOutlet weak var addressLabel: UILabel!
    @IBOutlet weak var catalabel: UILabel!
    
    var business: Business! {
        didSet {
            namelabel.text = business.name
            thumbnview.setImageWith(business.imageURL!)
            catalabel.text = business.categories
            addressLabel.text = business.address
            reviewscountlabel.text = "\(business.reviewCount!) Reviews"
            ratingimageview.image = business.ratingImage
            distancelabel.text = business.distance
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        thumbnview.layer.cornerRadius = 3
        thumbnview.clipsToBounds = true
        
        namelabel.preferredMaxLayoutWidth = namelabel.frame.size.width
    }

    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        namelabel.preferredMaxLayoutWidth = namelabel.frame.size.width
        
    }
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

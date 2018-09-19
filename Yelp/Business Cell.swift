//
//  Business Cell.swift
//  Yelp
//
//  Created by user144166 on 9/17/18.
//  Copyright © 2018 Timothy Lee. All rights reserved.
//

import UIKit

class Business_Cell: UITableViewCell {
    @IBOutlet weak var thumbImageView: UIImageView!
    @IBOutlet weak var categoriesLabel: UILabel!
    @IBOutlet weak var addressLabel: UILabel!
    @IBOutlet weak var reviewsCountLabel: UILabel!
    @IBOutlet weak var ratingImageView: UIImageView!
    @IBOutlet weak var distancelabel: UILabel!
    @IBOutlet weak var NameLabel: UILabel!
    
    var business: Business! {
        didSet {
            NameLabel.text = business.name
            thumbImageView.setImageWithURL(business.imageURL)
            categoriesLabel.text = business.categories
            addressLabel.text = business.address
            reviewsCountLabel.text = "\(business.reviewCount!)
            Reviews"
            ratingImageView.setImageWithURL(business.ratingImageURL)
            
            distancelabel.text = business.distance
            
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

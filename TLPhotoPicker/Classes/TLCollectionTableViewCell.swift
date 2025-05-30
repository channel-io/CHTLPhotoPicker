//
//  TLCollectionTableViewCell.swift
//  TLPhotosPicker
//
//  Created by wade.hawk on 2017. 5. 3..
//  Copyright © 2017년 wade.hawk. All rights reserved.
//

import UIKit

open class TLCollectionTableViewCell: UITableViewCell {
    @IBOutlet open var thumbImageView: UIImageView!
    @IBOutlet open var titleLabel: UILabel!
    @IBOutlet open var subTitleLabel: UILabel!
    open var bgColor: UIColor = .defaultBackgroundColor {
        didSet {
            self.backgroundColor = self.bgColor
            self.contentView.backgroundColor = self.bgColor
        }
    }
    
    override open func awakeFromNib() {
        super.awakeFromNib()   
        if #available(iOS 11.0, *) {
            self.thumbImageView.accessibilityIgnoresInvertColors = true
        }
        
        self.backgroundColor = self.bgColor
        self.contentView.backgroundColor = self.bgColor
    }
}

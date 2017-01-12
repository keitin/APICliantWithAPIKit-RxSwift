//
//  BlogCell.swift
//  APICliantNext
//
//  Created by 松下慶大 on 2017/01/12.
//  Copyright © 2017年 matsushita keita. All rights reserved.
//

import UIKit
import SDWebImage

class BlogCell: UITableViewCell {
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var blogImageView: UIImageView!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        layoutImageView()
        layoutLabel()
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func fillWith(blog: Blog) {
        titleLabel.text = blog.title
        blogImageView.sd_setImageWithURL(NSURL(string: blog.imageURL))
    }
    
    private func layoutImageView() {
        blogImageView.contentMode = UIViewContentMode.ScaleAspectFill
        blogImageView.layer.masksToBounds = true
    }
    
    private func layoutLabel() {
        titleLabel.textColor = UIColor.whiteColor()
    }
    
}

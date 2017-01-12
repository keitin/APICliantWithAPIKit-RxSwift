//
//  Blog.swift
//  APICliantNext
//
//  Created by 松下慶大 on 2017/01/12.
//  Copyright © 2017年 matsushita keita. All rights reserved.
//

import Foundation
import APIKit
import SwiftyJSON

struct Blog {
    
    let title: String
    let imageURL: String
    
    init(json: JSON) {
        self.title = json["title"].string!
        self.imageURL = json["image"]["url"].string!
    }

    static func map(object: AnyObject) -> [Blog] {
        let json = JSON(object)
        var blogs: [Blog] = []
        for blogJSON in json["blogs"].array! {
            let blog = Blog(json: blogJSON["blog"])
            blogs.append(blog)
        }
        return blogs
    }
    
}

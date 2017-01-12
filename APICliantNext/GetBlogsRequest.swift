//
//  API.swift
//  APICliantNext
//
//  Created by 松下慶大 on 2017/01/12.
//  Copyright © 2017年 matsushita keita. All rights reserved.
//

import Foundation
import APIKit

struct GetBlogsRequest: BroccoliRequestType {
    
    typealias Response = [Blog]
    
    var method: HTTPMethod {
        return .GET
    }
    
    var path: String {
        return "/api/blogs"
    }
    
    var parameters: AnyObject? {
        return [
            "page": self.page,
            "user_id": self.userId
        ]
    }
    
    var userId: Int
    var page: Int
    
    init(userId: Int, page: Int) {
        self.userId = userId
        self.page = page
    }
    
    func responseFromObject(object: AnyObject, URLResponse: NSHTTPURLResponse) throws -> [Blog] {
        return Blog.map(object)
    }
}

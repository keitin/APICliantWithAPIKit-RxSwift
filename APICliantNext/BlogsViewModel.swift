//
//  BlogsViewModel.swift
//  APICliantNext
//
//  Created by 松下慶大 on 2017/01/12.
//  Copyright © 2017年 matsushita keita. All rights reserved.
//

import Foundation
import RxSwift
import APIKit

class BlogsViewModel {
    
    let blogs: Variable<[Blog]> = Variable([])
    
    func getBlogsInBackground(userId: Int, page: Int) {
        let request = GetBlogsRequest(userId: userId, page: page)
        Session.sendRequest(request) { result in
            switch result {
            case .Success(let blogs):
                self.blogs.value = blogs

            case .Failure(let error):
                print("error: \(error)")
            }
        }
    }
    
}
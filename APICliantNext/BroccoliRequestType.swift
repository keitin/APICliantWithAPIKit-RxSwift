//
//  BroccoliRequestType.swift
//  APICliantNext
//
//  Created by 松下慶大 on 2017/01/12.
//  Copyright © 2017年 matsushita keita. All rights reserved.
//

import Foundation
import APIKit

protocol BroccoliRequestType: RequestType {
}

extension BroccoliRequestType {
    var baseURL: NSURL {
        return NSURL(string: "http://52.68.152.185")!
    }
}
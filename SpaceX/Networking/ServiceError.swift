//
//  ServiceError.swift
//  SpaceX
//
//  Created by Kfir Breger on 23/01/2021.
//

import Foundation
import Alamofire

enum ServiceError: Error {
    case network
    
    init(error:AFError) {
        self = .network
    }
}

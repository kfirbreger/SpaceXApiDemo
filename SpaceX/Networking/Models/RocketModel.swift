//
//  RocketModel.swift
//  SpaceX
//
//  Created by Kfir Breger on 24/01/2021.
//

import Foundation

struct RocketModel: Decodable {
    
    let images: [String]?
    let name: String?
    
    enum CodingKeys: String, CodingKey {
        case images = "flickr_images"
        case name
    }
}

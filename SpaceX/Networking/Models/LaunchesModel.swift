//
//  LaunchesModel.swift
//  SpaceX
//
//  Created by Kfir Breger on 23/01/2021.
//

import Foundation

struct LaunchesModel: Decodable {

    let flightNumber: Int?
    let name: String?
    let date: String?
    let details: String?
    let succes: Bool?
    let links: LinkModel?
    
    enum CodingKeys: String, CodingKey {
        case flightNumber = "flight_number"
        case name
        case date = "date_local"
        case details
        case succes
        case links
    }
}

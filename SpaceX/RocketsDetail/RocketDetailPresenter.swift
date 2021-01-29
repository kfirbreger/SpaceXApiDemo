//
//  RocketDetailPresenter.swift
//  SpaceX
//
//  Created by Kfir Breger on 27/01/2021.
//

import Foundation

struct RocketDetailPresenter {
    
    let image: String
    let name: String
    let information: String
    
    init(with model:RocketModel) {
        self.image = model.images?.first ?? ""
        self.name = model.name ?? ""
        self.information = model.information ?? ""

    }
}

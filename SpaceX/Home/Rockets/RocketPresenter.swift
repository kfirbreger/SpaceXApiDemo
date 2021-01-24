//
//  RocketPresenter.swift
//  SpaceX
//
//  Created by Kfir Breger on 24/01/2021.
//

import Foundation

struct RocketPresenter: Identifiable {

    let id = UUID()
    let image: String
    let name: String
    
    init(with model: RocketModel) {
        self.image = model.images?.first ?? ""
        self.name = model.name ?? ""
    }
}

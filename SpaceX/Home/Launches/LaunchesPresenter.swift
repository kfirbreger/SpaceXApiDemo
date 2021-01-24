//
//  LaunchesPresenter.swift
//  SpaceX
//
//  Created by Kfir Breger on 23/01/2021.
//

import Foundation

struct LaunchesPresenter: Identifiable {
    
    let id = UUID()
    let image: String
    let name: String
    let date: String
 
    init(with model: LaunchesModel) {
        self.image = model.links?.patch?.small ?? ""
        self.name = model.name ?? ""
        self.date = model.date ?? ""
    }
}

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
        guard let modelDate = model.date else {
            self.date = ""
            return
        }
        let df = DateFormatter()
        df.dateFormat = "yyyy-MM-dd'T'HH:mm:ssZZZZZ"
        df.locale = Locale(identifier: "en_US_POSIX")
        guard let launchDate = df.date(from: modelDate) else {
            self.date = ""
            return
        }
        df.dateFormat = "yyyy-MM-dd"
        self.date = df.string(from: launchDate)
        
    }
}

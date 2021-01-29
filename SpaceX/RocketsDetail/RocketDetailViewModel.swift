//
//  RocketDetailViewModel.swift
//  SpaceX
//
//  Created by Kfir Breger on 27/01/2021.
//

import Foundation

final class RocketDetailViewModel: ObservableObject {
    
    @Published var presenter: RocketDetailPresenter?
    
    init() {
        
    }
    
    init(with model: RocketModel) {
        self.presenter = RocketDetailPresenter(with: model)
        
    }
}

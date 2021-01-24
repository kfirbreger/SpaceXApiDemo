//
//  LaunchesDetailViewModel.swift
//  SpaceX
//
//  Created by Kfir Breger on 24/01/2021.
//

import Foundation

final class LaunchesDetailViewModel: ObservableObject {
    
    @Published var presenter: LaunchesDetailPresenter?
    
    init() {
        
    }
    
    init(with model: LaunchesModel) {
        self.presenter = LaunchesDetailPresenter(with: model)
    }
}

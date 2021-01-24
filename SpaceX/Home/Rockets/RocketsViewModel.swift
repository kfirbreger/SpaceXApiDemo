//
//  RocketsViewModel.swift
//  SpaceX
//
//  Created by Kfir Breger on 24/01/2021.
//

import Foundation
import Combine

final class RocketViewModel: NSObject, ObservableObject {
    
    private var task: Cancellable? = nil
    private var rockets: [RocketModel] = []
    
    @Published var presenters: [RocketPresenter] = []
    
    func onAppear() {
        self.task = Service.standard.get(path: .rockets, resposeType: [RocketModel].self)
            .map { [weak self] in
                self?.rockets = $0
                return $0.map { RocketPresenter(with: $0)}
            }
            .sink(receiveCompletion: { _ in }, receiveValue: { [weak self] (presenters) in
                self?.presenters = presenters
            })
    }
}

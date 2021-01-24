//
//  Service.swift
//  SpaceX
//
//  Created by Kfir Breger on 23/01/2021.
//

import Foundation
import Alamofire
import Combine

final class Service {
    
    private let baseUrl: String = "https://api.spacexdata.com/v4/"
    public static let standard: Service = Service()
    
    func get<T: Decodable>(path: Endpoint, resposeType: T.Type) -> AnyPublisher<T, ServiceError> {
        AF.request(self.baseUrl + path.rawValue, method: .get)
            .publishDecodable(type: resposeType)
            .value()
            .mapError(ServiceError.init(error:))
            .eraseToAnyPublisher()
    }
}

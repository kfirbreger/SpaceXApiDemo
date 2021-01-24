//
//  RocketCell.swift
//  SpaceX
//
//  Created by Kfir Breger on 24/01/2021.
//

import SwiftUI
import Kingfisher

struct RocketCell: View {
    
    private var presenter: RocketPresenter
    private var geometryProxy: GeometryProxy!
    init(presenter: RocketPresenter, geometryProxy: GeometryProxy) {
        self.presenter = presenter
        self.geometryProxy = geometryProxy
    }
    var body: some View {
        VStack(spacing: 16) {
            KFImage(URL(string: self.presenter.image))
                .cancelOnDisappear(true)
                .resizable()
                .frame(width: self.geometryProxy.size.width - 32, height: 200)
            Text(self.presenter.name)
        }
    }
}

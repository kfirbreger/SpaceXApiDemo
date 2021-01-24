//
//  LaunchesCell.swift
//  SpaceX
//
//  Created by Kfir Breger on 24/01/2021.
//

import SwiftUI
import Kingfisher


struct LaunchesCell: View {
    
    private var presenter: LaunchesPresenter!
    
    init(presenter: LaunchesPresenter) {
        self.presenter = presenter
    }
    
    var body: some View {
        HStack(alignment: .top, spacing: 16) {
            KFImage(URL(string: self.presenter.image))
                .cancelOnDisappear(true)
                .resizable()
                .frame(width: 128, height: 128)
            VStack(spacing: 16) {
                Text(self.presenter.name)
                Text(self.presenter.date)
            }
        }
    }
}


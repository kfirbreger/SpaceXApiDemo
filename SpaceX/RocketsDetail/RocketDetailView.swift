//
//  RocketDetailView.swift
//  SpaceX
//
//  Created by Kfir Breger on 27/01/2021.
//

import SwiftUI
import Kingfisher


struct RocketDetailView: View {
    
    @ObservedObject var viewModel: RocketDetailViewModel = RocketDetailViewModel()
    
    var body: some View {
        
        GeometryReader { geom in
            ScrollView {
                VStack(spacing: 16) {
                    KFImage(URL(string: self.viewModel.presenter?.image ?? ""))
                        .cancelOnDisappear(true)
                        .resizable()
                        .frame(width: geom.size.width - 32, height: 200)
                    Text(self.viewModel.presenter?.name ?? "")
                    Text(self.viewModel.presenter?.information ?? "")
                    HStack {
                        Text("Type:")
                        Text(self.viewModel.presenter?.rocketType ?? "unknown")
                    }
                    HStack {
                        Text("Cost per Launch")
                        Text(String(self.viewModel.presenter?.costPerLaunch ?? 0))
                    }
                }
                .padding(EdgeInsets(top: 0, leading: 16, bottom: 0, trailing: 16))
            }
        }
    }
}

struct RocketDetailView_Previews: PreviewProvider {
    static var previews: some View {
        RocketDetailView()
    }
}

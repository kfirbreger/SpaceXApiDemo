//
//  RocketsView.swift
//  SpaceX
//
//  Created by Kfir Breger on 24/01/2021.
//

import SwiftUI

struct RocketsView: View {
    
    @ObservedObject private var viewModel: RocketViewModel = RocketViewModel()
    
    var body: some View {
        GeometryReader { geom in
            NavigationView {
                ZStack {
                    List(self.viewModel.presenters) { item in
                        RocketCell(presenter: item, geometryProxy: geom).onTapGesture(perform: { self.viewModel.itemSelected(at: item)})
                    }.onAppear(perform: {
                        self.viewModel.onAppear()
                    }).listStyle(PlainListStyle())
                    NavigationLink(
                        destination: RocketDetailView(viewModel: self.viewModel.selecetedViewModel),
                        isActive: self.$viewModel.navigateToDetail,
                        label: {
                            EmptyView()
                        })
                }
            }.navigationBarTitle("Rockets", displayMode: .inline)
        }
    }
}

struct RocketsView_Previews: PreviewProvider {
    static var previews: some View {
        RocketsView()
    }
}

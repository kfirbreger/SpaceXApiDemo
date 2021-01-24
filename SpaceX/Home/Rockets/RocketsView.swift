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
                        RocketCell(presenter: item, geometryProxy: geom)
                    }.onAppear(perform: {
                        self.viewModel.onAppear()
                    }).listStyle(PlainListStyle())
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

//
//  HomeContentView.swift
//  SpaceX
//
//  Created by Kfir Breger on 24/01/2021.
//

import SwiftUI

struct HomeContentView: View {
    var body: some View {
        TabView {
            LaunchesView()
                .tabItem {
                    Image(systemName: "burst")
                    Text("Launches")
                }.tag(0)
            RocketsView()
                .tabItem {
                    Image(systemName: "location.north.line")
                    Text("Rockets")
                }.tag(1)
        }
    }
}

struct HomeContentView_Previews: PreviewProvider {
    static var previews: some View {
        HomeContentView()
    }
}

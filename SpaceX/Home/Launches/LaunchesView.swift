//
//  LaunchesView.swift
//  SpaceX
//
//  Created by Kfir Breger on 23/01/2021.
//

import SwiftUI

struct LaunchesView: View {
    
    @ObservedObject var viewModel: LaunchesViewModel = LaunchesViewModel()
    
    var body: some View {
        NavigationView {
            ZStack {
                List(self.viewModel.presenters) { item in
                    LaunchesCell(presenter: item).onTapGesture(perform: {
                        self.viewModel.itemSelected(at: item)
                    })
                }.onAppear(perform: {
                    self.viewModel.onAppear()
                }).listStyle(PlainListStyle())
                NavigationLink(
                    destination: LaunchesDetailView(viewModel: self.viewModel.selectedViewModel),
                    isActive: self.$viewModel.navigateToDetail,
                    label: {
                        EmptyView()
                })
            }.navigationBarTitle("Launches", displayMode: .inline)
        }
        
    }
}

struct LaunchesView_Previews: PreviewProvider {
    static var previews: some View {
        LaunchesView()
    }
}

//
//  HomeView.swift
//  DesignPattern-Viper
//
//  Created by Luminous Latte on 28/10/2024.
//

import SwiftUI

struct HomeView: View {
    @ObservedObject var presenter: HomePresenter
    
    var body: some View {
        List(presenter.items) { item in
            Text(item.name)
        }
        .onAppear {
            presenter.viewDidLoad()
        }
        .navigationTitle("Home")
    }
}

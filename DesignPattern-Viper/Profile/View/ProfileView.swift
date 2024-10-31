//
//  ProfileView.swift
//  DesignPattern-Viper
//
//  Created by Luminous Latte on 28/10/2024.
//

import SwiftUI

struct ProfileView: View {
    @ObservedObject var presenter: ProfilePresenter
    
    var body: some View {
        Text(presenter.userName)
            .font(.largeTitle)
            .onAppear {
                presenter.viewDidLoad()
            }
            .navigationTitle("Profile")
    }
}

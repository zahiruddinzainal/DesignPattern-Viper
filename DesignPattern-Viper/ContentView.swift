//
//  ContentView.swift
//  DesignPattern-Viper
//
//  Created by Luminous Latte on 28/10/2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            NavigationView {
                HomeView(presenter: createHomePresenter())
            }
            .tabItem {
                Label("Home", systemImage: "house")
            }
            
            NavigationView {
                ProfileView(presenter: createProfilePresenter())
            }
            .tabItem {
                Label("Profile", systemImage: "person")
            }
        }
    }

    // Helper functions to create presenters and their interactors
    private func createHomePresenter() -> HomePresenter {
        let presenter = HomePresenter()
        let interactor = HomeInteractor()
        interactor.output = presenter
        presenter.interactor = interactor
        return presenter
    }

    private func createProfilePresenter() -> ProfilePresenter {
        let presenter = ProfilePresenter()
        let interactor = ProfileInteractor()
        interactor.output = presenter
        presenter.interactor = interactor
        return presenter
    }
}

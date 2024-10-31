//
//  Home.swift
//  DesignPattern-Viper
//
//  Created by Luminous Latte on 28/10/2024.
//


import Foundation

class HomePresenter: ObservableObject {
    @Published var items: [Item] = []
    var interactor: HomeInteractorInput!

    func viewDidLoad() {
        interactor.fetchItems()
    }
}

extension HomePresenter: HomeInteractorOutput {
    func didFetchItems(_ items: [Item]) {
        self.items = items
    }
}

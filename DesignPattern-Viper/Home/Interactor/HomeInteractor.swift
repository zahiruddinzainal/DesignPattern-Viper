//
//  HomeInteractor.swift
//  DesignPattern-Viper
//
//  Created by Luminous Latte on 28/10/2024.
//

import Foundation

protocol HomeInteractorInput {
    func fetchItems()
}

protocol HomeInteractorOutput: AnyObject {
    func didFetchItems(_ items: [Item])
}

class HomeInteractor: HomeInteractorInput {
    weak var output: HomeInteractorOutput?
    
    func fetchItems() {
        // Simulate a network delay
        DispatchQueue.global().asyncAfter(deadline: .now() + 1) {
            let items = (1...10).map { index in
                Item(id: index, name: "Item \(index) - \(UUID().uuidString.prefix(6))")
            }
            DispatchQueue.main.async {
                self.output?.didFetchItems(items)
            }
        }
    }
}

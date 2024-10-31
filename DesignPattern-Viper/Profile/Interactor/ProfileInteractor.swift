//
//  ProfileInteractor.swift
//  DesignPattern-Viper
//
//  Created by Luminous Latte on 28/10/2024.
//

import Foundation

protocol ProfileInteractorInput {
    func fetchUser()
}

protocol ProfileInteractorOutput: AnyObject {
    func didFetchUser(_ user: User)
}

class ProfileInteractor: ProfileInteractorInput {
    weak var output: ProfileInteractorOutput?
    
    func fetchUser() {
        // Simulate a network delay
        DispatchQueue.global().asyncAfter(deadline: .now() + 1) {
            let user = User(name: "User - \(UUID().uuidString.prefix(6))")
            DispatchQueue.main.async {
                self.output?.didFetchUser(user)
            }
        }
    }
}


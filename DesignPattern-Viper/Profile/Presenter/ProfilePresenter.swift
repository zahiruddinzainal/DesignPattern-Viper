//
//  ProfilePresenter.swift
//  DesignPattern-Viper
//
//  Created by Luminous Latte on 28/10/2024.
//

import Foundation

class ProfilePresenter: ObservableObject {
    @Published var userName: String = ""
    var interactor: ProfileInteractorInput!

    func viewDidLoad() {
        interactor.fetchUser()
    }
}

extension ProfilePresenter: ProfileInteractorOutput {
    func didFetchUser(_ user: User) {
        self.userName = user.name
    }
}

//
//  ViewModel.swift
//  Prueba_SKD
//
//  Created by Mikel Valle on 31/1/24.
//

import Foundation

protocol LoginActionDelegate {
    func didLoginSuccecss()
}

class LoginViewModel: ObservableObject {
    var loginDelegate: LoginActionDelegate?
    
    func login() {
        loginDelegate?.didLoginSuccecss()
    }
}

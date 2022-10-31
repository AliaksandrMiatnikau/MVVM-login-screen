//
//  User.swift
//  MVVM project
//
//  Created by Aliaksandr Miatnikau on 18.10.22.
//

import Foundation

struct User {
    let login: String?
    let password: String?
}

extension User {
    static var logins = [
        User(login: "login", password: "password")
    ]
}

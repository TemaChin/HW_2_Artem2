//
//  Auth.swift
//  HomeWork_2_AppScreens
//
//  Created by Артем Станкевич on 18.10.2020.
//

import UIKit

/// данные авторизации
public class Auth {
    var login: String?
    var password: String?
    
    public init (_ login: String, _ password: String) {
        self.login = login
        self.password = password
    }
}

let auth = Auth("Vasja", "12345")




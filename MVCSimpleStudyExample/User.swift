//
//  User.swift
//  MVCSimpleStudyExample
//
//  Created by Julio Cesar Pereira on 19/04/24.
//

import Foundation

struct User {
    let firstName, lastName, email: String
    let age: Int
    let location: Location
}

struct Location {
    let lat: Double
    let lng: Double
}

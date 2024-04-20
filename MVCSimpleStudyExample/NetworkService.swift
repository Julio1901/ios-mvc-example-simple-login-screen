//
//  NetworkService.swift
//  MVCSimpleStudyExample
//
//  Created by Julio Cesar Pereira on 19/04/24.
//

import Foundation

//Simulate network request
class NetworkService {
    static let shared = NetworkService()
    private init() {}
    
    //Simulate localstorage
    private var user: User?
    
    func login(email: String, password: String, completion: @escaping(Bool) -> Void) {
        DispatchQueue.global().async {
            //Simulate request delay
            sleep(2)
            DispatchQueue.main.async {
                if email == "test@test.com" && password == "password"{
                    self.user = User(firstName: "Julio", lastName: "Pereira", email: "test@test.com", age: 27, location: Location(lat: 2.1231, lng: -6.34234))
                    completion(true)
                }else{
                    self.user = nil
                    completion(false)
                }
            }
        }
    }
    
    func getLoggedInUser () -> User {
        return user!
    }
}


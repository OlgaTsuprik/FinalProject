//
//  profile.swift
//  WeekFM
//
//  Created by Оля on 04.03.2021.
//

import Foundation

struct PropertyKey {
    static let name = "Name"
    static let password = "Password"
    static let age = "Age"
    static let sex = "Sex"
}

enum SexType: String {
    case male
    case female
}

struct UserProfile: Codable {
    
    // MARK: Variables
    let name: String
    let password: String
    let age: Int
}

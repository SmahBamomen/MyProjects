//
//  ProfileModel.swift
//  Profile
//
//  Created by samah on 28/01/1444 AH.
//

import Foundation

struct ProfileModel : Identifiable{
    var id:  String = UUID().uuidString
    var aboutMe : String
    var email : String
    var githubLink : String
    var phoneNum : Int
}


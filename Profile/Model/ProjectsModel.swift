//
//  ProjectsModel.swift
//  Profile
//
//  Created by samah on 28/01/1444 AH.
//

import Foundation

struct ProjectsModel : Identifiable{
    var id:  String = UUID().uuidString
    var appLogo : String
    var imageURL : String
    var projectDescription : String
    var projectName : String
    var teamNames : String
    var tools : String
}

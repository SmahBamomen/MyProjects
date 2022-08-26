//
//  ExperienceModel.swift
//  Profile
//
//  Created by samah on 28/01/1444 AH.
//

import Foundation
struct ExperienceModel : Identifiable{
    var id:  String = UUID().uuidString
    var logo : String
    var companyName : String
    var startDate : String
    var endDate : String
    var positions : String
}


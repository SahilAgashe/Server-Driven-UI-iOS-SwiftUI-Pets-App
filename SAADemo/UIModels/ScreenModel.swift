//
//  ScreenModel.swift
//  SAADemo
//
//  Created by SAHIL AMRUT AGASHE on 13/08/24.
//

import Foundation

enum ComponentType: String, Decodable {
    case featuredImage
}

struct ScreenModel: Decodable {
    let pageTitle: String
    let components: [ComponentModel]
}

struct ComponentModel: Decodable {
    let type: ComponentType
    let data: [String: String]
}

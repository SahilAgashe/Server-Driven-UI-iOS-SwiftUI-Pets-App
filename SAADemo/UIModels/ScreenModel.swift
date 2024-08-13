//
//  ScreenModel.swift
//  SAADemo
//
//  Created by SAHIL AMRUT AGASHE on 13/08/24.
//

import Foundation

enum ComponentError: Error {
    case decodingError
}

enum ComponentType: String, Decodable {
    case featuredImage
}

struct ComponentModel: Decodable {
    let type: ComponentType
    let data: [String: String]
}

// MARK: - ScreenModel
struct ScreenModel: Decodable {
    let pageTitle: String
    let components: [ComponentModel]
}

extension ScreenModel {
    func buildComponents() throws -> [UIComponent] {
        var components: [UIComponent] = []
        
        for component in self.components {
            switch component.type {
            case .featuredImage:
                guard let uiModel: FeaturedImageUIModel = component.data.decode() else {
                    throw ComponentError.decodingError
                }
                components.append(FeaturedImageComponent(uiModel: uiModel))
            }
        }
        
        return components
    }
}

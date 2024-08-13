//
//  FeatureImageComponent.swift
//  SAADemo
//
//  Created by SAHIL AMRUT AGASHE on 13/08/24.
//

import SwiftUI

struct FeaturedImageComponent: UIComponent {
    var uniqueId: String {
        ComponentType.featuredImage.rawValue
    }
    
    func render() -> AnyView {
        AnyView(Text("FeaturedImageComponent"))
    }
}

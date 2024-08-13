//
//  FeatureImageComponent.swift
//  SAADemo
//
//  Created by SAHIL AMRUT AGASHE on 13/08/24.
//

import SwiftUI

struct FeaturedImageComponent: UIComponent {
    
    let uiModel: FeaturedImageUIModel
    
    var uniqueId: String {
        UUID().uuidString
    }
    
    func render() -> AnyView {
        AsyncImage(url: uiModel.imageUrl) { image in
            image.resizable()
                .aspectRatio(contentMode: .fill)
        } placeholder: {
            ProgressView()
        }.toAnyView()
    }
}

//
//  UIComponent.swift
//  SAADemo
//
//  Created by SAHIL AMRUT AGASHE on 13/08/24.
//

import SwiftUI

protocol UIComponent {
    var uniqueId: String { get }
    func render() -> AnyView
}

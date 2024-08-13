//
//  ContentView.swift
//  SAADemo
//
//  Created by SAHIL AMRUT AGASHE on 11/08/24.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject private var vm: PetListViewModel
    
    init() {
        _vm = StateObject(wrappedValue: PetListViewModel(service: Webservice()))
    }
    
    var body: some View {
        NavigationView {
            ScrollView {
                ForEach(vm.components, id: \.uniqueId) { component in
                    component.render()
                }
                
            }.task {
                await vm.load()
            }
            .navigationTitle("Pets")
        }
    }
}

#Preview {
    ContentView()
}

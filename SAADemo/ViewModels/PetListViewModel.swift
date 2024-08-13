//
//  PetListViewModel.swift
//  SAADemo
//
//  Created by SAHIL AMRUT AGASHE on 13/08/24.
//

import Foundation

@MainActor
class PetListViewModel: ObservableObject {
    private var service: Webservice
    @Published var components = [UIComponent]()
    
    init(service: Webservice) {
        self.service = service
    }
    
    func load() async {
        do {
            let screenModel = try await service.load(resource: Constants.Urls.petListing)
            components = try screenModel.buildComponents()
        } catch {
            print(error)
        }
        
    }
}

//
//  Dictionary+Extension.swift
//  SAADemo
//
//  Created by SAHIL AMRUT AGASHE on 13/08/24.
//

import Foundation

extension Dictionary where Dictionary.Key : Encodable, Dictionary.Value: Encodable {
    
    func decode<T: Decodable>() -> T? {
//        guard let data = try? JSONSerialization.data(withJSONObject: self, options: .prettyPrinted) else {
//            return nil
//        }
        let data = try! JSONEncoder().encode(self)
        return try? JSONDecoder().decode(T.self, from: data)
    }
}

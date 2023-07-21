//
//  Decoders.swift
//  MovieBoxAPI
//
//  Created by İrem Onart on 20.07.2023.
//

import Foundation

public enum Decoders {
     static let plainDateDecoder: JSONDecoder = {
//        2023-06-30
        let decoder = JSONDecoder()
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy-MM-dd"
        decoder.dateDecodingStrategy = .formatted(dateFormatter)
        return decoder
        
    }()
}

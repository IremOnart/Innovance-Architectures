//
//  ResourceLoader.swift
//  MovieBox
//
//  Created by İrem Onart on 24.07.2023.
//

import Foundation
import Utility
import MovieBoxAPI

class ResourceLoader {
    
    enum AlbumResource: String {
        case album1
        case album2
        case album3
    }
    
    static func loadMovie(resource: AlbumResource) throws -> Albums {
        let bundle = Bundle.test
        let url = try bundle.url(forResource: resource.rawValue, withExtension: "json").unwrap()
        let data = try Data(contentsOf: url)
        let decoder = Decoders.plainDateDecoder
        let movie = try decoder.decode(Albums.self, from: data)
        return movie
    }
}

private extension Bundle {
    class Dummy { }
    static let test = Bundle(for: Dummy.self)
    
}

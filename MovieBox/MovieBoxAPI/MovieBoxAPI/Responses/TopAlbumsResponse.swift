//
//  TopAlbumsResponse.swift
//  MovieBoxAPI
//
//  Created by İrem Onart on 20.07.2023.
//

import Foundation

public struct TopAlbumResponses: Decodable{
    
    let results: [Albums]
    
    private enum RootCodingKeys: String, CodingKey {
        case feed
    }
    
    enum FeedCodingKeys: CodingKey {
        case results
    }
    
    init(results: ([Albums])){
        self.results = results
    }
    
    public init(from decoder: Decoder) throws {
        let rootContainer = try decoder.container(keyedBy: RootCodingKeys.self)
        let feedContainer = try rootContainer.nestedContainer(keyedBy: FeedCodingKeys.self, forKey: .feed)
        self.results = try feedContainer.decode([Albums].self, forKey: .results)
    }
    
    
    
}

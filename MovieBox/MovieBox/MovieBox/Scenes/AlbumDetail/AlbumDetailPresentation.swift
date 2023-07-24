//
//  AlbumDetailPresentation.swift
//  MovieBox
//
//  Created by İrem Onart on 24.07.2023.
//

import Foundation
import MovieBoxAPI

struct AlbumDetailPresentation {
    let title: String
    let artistName: String
    let genre: String
}

extension AlbumDetailPresentation {
//    init(album: Albums) {
//        self.init(title: album.name, artistName: album.artistName, releaseDate: album.releaseDate)
//    }
    init(album: Albums) {
        self.init(title: album.name, artistName: album.name, genre: album.genres.map({ $0.name }).joined(separator: ", "))
    }
}

//
//  MoviePresentation.swift
//  MovieBox
//
//  Created by İrem Onart on 21.07.2023.
//

import Foundation
import MovieBoxAPI

struct AlbumPresentation {
    let title: String
    let detail: String
}


extension AlbumPresentation {
    init(album: Albums) {
        self.init(title: album.name, detail: album.artistName)
    }
}


//
//  MoviePresentation.swift
//  MovieBox
//
//  Created by İrem Onart on 21.07.2023.
//

import Foundation
import MovieBoxAPI

final class AlbumPresentation: NSObject {
    let title: String
    let detail: String
    
    init(title: String, detail: String) {
        self.title = title
        self.detail = detail
        super.init()
    }
}


extension AlbumPresentation {
    convenience init(album: Albums) {
        self.init(title: album.name, detail: album.artistName)
    }
}


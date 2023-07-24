//
//  AlbumDetail.swift
//  MovieBox
//
//  Created by İrem Onart on 24.07.2023.
//

import Foundation
import UIKit

final class AlbumDetailView: UIView {
    @IBOutlet weak var albumTitleLabel: UILabel!
    
    @IBOutlet weak var artistNameLabel: UILabel!
    
    @IBOutlet weak var genreLabel: UILabel!
}

extension AlbumDetailView: AlbumDetailViewProtocol {
    
    func updateAlbumDetail(_ albumDetail: AlbumDetailPresentation) {
        albumTitleLabel.text = albumDetail.title
        artistNameLabel.text = albumDetail.artistName
        genreLabel.text = DateFormatter().string(from: albumDetail.releaseDate)
    }
}

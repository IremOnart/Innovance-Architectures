//
//  AlbumDetailViewModel.swift
//  MovieBox
//
//  Created by İrem Onart on 24.07.2023.
//

import Foundation
import MovieBoxAPI

final class AlbumDetailViewModel: AlbumDetailViewModelProtocol {
    
    weak var delegate: AlbumDetailViewModelDelegate?
    private let presentation: AlbumDetailPresentation
    
    init(album: Albums) {
        self.presentation = AlbumDetailPresentation(album: album)
    }
    
    func load() {
        delegate?.showDetail(presentation)
    }
}

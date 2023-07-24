//
//  AlbumDetailContracts.swift
//  MovieBox
//
//  Created by İrem Onart on 24.07.2023.
//

import Foundation

protocol AlbumDetailViewModelDelegate: AnyObject {
    func showDetail(_ presentation: AlbumDetailPresentation)
}

protocol AlbumDetailViewModelProtocol {
    var delegate: AlbumDetailViewModelDelegate? { get set }
    func load()
}

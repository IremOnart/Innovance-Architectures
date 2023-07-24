//
//  AlbumListContracts.swift
//  MovieBox
//
//  Created by İrem Onart on 21.07.2023.
//

import Foundation


protocol AlbumListViewModelProtocol{
    var delegate: AlbumListViewModelDelegate? { get set }
    func load()
    func selectAlbum(at index: Int)
}

enum AlbumListViewModelOutput: Equatable{
    case updateTitle(String)
    case showAlbumList([AlbumPresentation])
}

enum AlbumListViewRoute{
    case detail(AlbumDetailViewModelProtocol)
}

protocol AlbumListViewModelDelegate: AnyObject{
    func handleViewModelOutput(_ output: AlbumListViewModelOutput)
    func navigate(to route: AlbumListViewRoute)
}


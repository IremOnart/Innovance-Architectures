//
//  AlbumListContracts.swift
//  MovieBox
//
//  Created by İrem Onart on 21.07.2023.
//

import Foundation


protocol AlbumListViewProtocol: class {
    
    var delegate: AlbumListViewDelegate? { get set }
    func updateAlbumList(_ albumList: [AlbumPresentation])
//    Deprecated->
    //func setLoading(_ isloading: Bool)
}

protocol AlbumListViewDelegate: class {
    func didSelectAlbum(at index: Int)
         
}

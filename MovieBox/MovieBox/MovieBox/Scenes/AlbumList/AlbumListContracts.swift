//
//  AlbumListContracts.swift
//  MovieBox
//
//  Created by İrem Onart on 21.07.2023.
//

import Foundation


@objc protocol AlbumListViewProtocol: AnyObject {
    
    var delegate: AlbumListViewDelegate? { get set }
    func updateAlbumList(_ albumList: [AlbumPresentation])
//    Deprecated->
    //func setLoading(_ isloading: Bool)
}

@objc protocol AlbumListViewDelegate: AnyObject {
    func didSelectAlbum(at index: Int)
         
}

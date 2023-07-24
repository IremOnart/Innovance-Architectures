
//  AlbumListBuilder.swift
//  MovieBox
//
//  Created by İrem Onart on 21.07.2023.


import Foundation
import UIKit
import MovieBoxAPI


final class AlbumListBuilder {
    
    static func make() -> AlbumListViewController {
        let storyboard = UIStoryboard(name: "AlbumList", bundle: nil)
        let viewController = storyboard.instantiateViewController(withIdentifier: "AlbumList") as! AlbumListViewController
        viewController.viewModel = AlbumListViewModel(service: app.service)
        return viewController
    }
}

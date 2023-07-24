//
//  AlbumDetailBuilder.swift
//  MovieBox
//
//  Created by İrem Onart on 24.07.2023.
//

import Foundation

import UIKit
import MovieBoxAPI

final class AlbumDetailBuilder {
    
    static func make(with viewModel: AlbumDetailViewModelProtocol) -> AlbumDetailViewController {
        
        let storyboard = UIStoryboard(name: "AlbumDetail", bundle: nil)
        let viewController = storyboard.instantiateViewController(withIdentifier: "AlbumDetailViewController") as! AlbumDetailViewController
        viewController.viewModel = viewModel
        return viewController
    }
}

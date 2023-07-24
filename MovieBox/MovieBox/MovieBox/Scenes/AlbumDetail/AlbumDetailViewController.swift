//
//  AlbumDetailViewController.swift
//  MovieBox
//
//  Created by İrem Onart on 24.07.2023.
//

import Foundation
import UIKit
import MovieBoxAPI

final class AlbumDetailViewController: UIViewController{
    
    
    @IBOutlet weak var albumTitleLabel: UILabel!
    @IBOutlet weak var artistNameLabel: UILabel!
    @IBOutlet weak var genreLable: UILabel!
    
    var viewModel: AlbumDetailViewModelProtocol!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        viewModel.delegate = self
        viewModel.load()
    }
}

extension AlbumDetailViewController: AlbumDetailViewModelDelegate {
    
    func showDetail(_ presentation: AlbumDetailPresentation) {
        albumTitleLabel.text = presentation.title
        artistNameLabel.text = presentation.artistName
        genreLable.text = presentation.genre
    }
}

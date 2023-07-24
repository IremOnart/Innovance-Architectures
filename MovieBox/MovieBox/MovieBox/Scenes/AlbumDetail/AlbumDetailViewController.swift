//
//  AlbumDetailViewController.swift
//  MovieBox
//
//  Created by İrem Onart on 24.07.2023.
//

import Foundation
import UIKit
import MovieBoxAPI

final class AlbumDetailViewController: UIViewController {
    
    @IBOutlet var customView: AlbumDetailView!
    
    var album: Albums!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        customView.updateAlbumDetail(AlbumDetailPresentation(album: album))
    }
}

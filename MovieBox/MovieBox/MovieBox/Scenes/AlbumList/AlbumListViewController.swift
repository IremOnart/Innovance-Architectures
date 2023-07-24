//
//  AlbumListViewController.swift
//  MovieBox
//
//  Created by İrem Onart on 21.07.2023.
//

import Foundation
import UIKit
import MovieBoxAPI

final class AlbumListViewController: UIViewController {
    
    
    @IBOutlet var customView: AlbumListViewProtocol!
    var service: TopAlbumsServiceProtocol?
    private var albumList: [Albums] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Albums"
        customView.delegate = self
        service?.fetchTopAlbum{ [weak self] result in
                   
                   guard let self = self else { return }
                   
                   switch result {
                   case .success(let value):
                       self.albumList = value.results
                       let albumPresentations = value.results.map(AlbumPresentation.init)
                       self.customView.updateAlbumList(albumPresentations)
                   case .failure(let error):
                       print(error)
                   }
                   
                
               }
        }
    
}

extension AlbumListViewController : AlbumListViewDelegate{
    func didSelectAlbum(at index: Int) {
       let album = albumList[index]
        let albumDetailViewController = AlbumDetailBuilder.make(with: album)
        show(albumDetailViewController, sender: nil)
    }
    
    
}

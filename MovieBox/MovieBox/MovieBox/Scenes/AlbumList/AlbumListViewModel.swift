//
//  AlbumListViewModel.swift
//  MovieBox
//
//  Created by İrem Onart on 24.07.2023.
//

import Foundation
import MovieBoxAPI

final class AlbumListViewModel: AlbumListViewModelProtocol {

    var delegate: AlbumListViewModelDelegate?
    private let service: TopAlbumsServiceProtocol
    private var albums = [Albums]()
    
    init(service: TopAlbumsServiceProtocol){
        self.service = service
    }
    
    func load() {
        notify(.updateTitle("Albums"))
        service.fetchTopAlbum{ [weak self] result in
                   
                   guard let self = self else { return }
            
                   switch result {
                   case .success(let response):
                       self.albums = response.results
                       let presenatations = response.results.map({ AlbumPresentation(album: $0) })
                       self.notify(.showAlbumList(presenatations))
                   case .failure(let error):
                       print(error)
                   }
                   
                
               }
    }
    
    func selectAlbum(at index: Int) {
        let album = albums[index]
        let viewModel = AlbumDetailViewModel(album: album)
        delegate?.navigate(to: .detail(viewModel))
    }
    
    private func notify(_ output: AlbumListViewModelOutput){
        delegate?.handleViewModelOutput(output)
    }
    
    
}

//
//  MovieBoxTests.swift
//  MovieBoxTests
//
//  Created by İrem Onart on 24.07.2023.
//

import XCTest
@testable import MovieBoxAPI
@testable import MovieBox


final class MovieBoxTests: XCTestCase {
    
    private var view: MockView!
    private var viewModel: AlbumListViewModel!
    private var service: MockTopAlbumsService!
    
    
    override func setUpWithError() throws {
        service = MockTopAlbumsService()
        viewModel = AlbumListViewModel(service: service)
        view = MockView()
        viewModel.delegate = view
    }

    func testAlbumList() throws {
        let album1 = try ResourceLoader.loadMovie(resource: .album1)
        let album2 = try ResourceLoader.loadMovie(resource: .album2)
        service.albums = [album1, album2]
        
        viewModel.load()
        
        XCTAssertEqual(view.outputs.count, 4)
        
        
        switch try view.outputs.element(at: 0){
        case .updateTitle(_):
            break
        default:
            XCTFail("first output should be 'updateTitle'")
        }
        
       
        
        
        let expectedAlbums = [album1, album2].map({ AlbumPresentation(album: $0) })
               XCTAssertEqual(try view.outputs.element(at: 3), .showAlbumList(expectedAlbums))
        
        
        func testNavigation() throws {
                // Given:
            let album1 = try ResourceLoader.loadMovie(resource: .album1)
            let album2 = try ResourceLoader.loadMovie(resource: .album2)
            service.albums = [album1, album2]
                viewModel.load()
                view.reset()
                
                // When:
            viewModel.selectAlbum(at: 0)
                
                // Then:
                XCTAssertTrue(view.detailRouteCalled)
            }
    

}

private final class MockTopAlbumsService: TopAlbumsServiceProtocol {
    var albums = [Albums]()
    
    func fetchTopAlbum(completion: @escaping (MovieBoxAPI.Result<MovieBoxAPI.TopAlbumResponses>) -> Void) {
        completion(.success(TopAlbumResponses(results: albums)))
    }
    
  
}

    private class MockView: AlbumListViewModelDelegate{
       
    var outputs = [AlbumListViewModelOutput]()
        
        
    var detailRouteCalled: Bool = false
            
    func reset() {
            outputs.removeAll()
            detailRouteCalled = false
    }
    func handleViewModelOutput(_ output: AlbumListViewModelOutput) {
        outputs.append(output)
        }
        
        func navigate(to route: MovieBox.AlbumListViewRoute) {
            switch route {
            case .detail:
                detailRouteCalled = true
            }
        }
    
}
    
   
        
}
    
        
    

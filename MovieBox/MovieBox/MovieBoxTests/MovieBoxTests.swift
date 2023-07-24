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
    
    private var service: MockService!
    private var view: MockAlbumListView!
    var controller: AlbumListViewController!

    override func setUpWithError() throws {
        service = MockService()
        view = MockAlbumListView()
        controller = AlbumListViewController()
        
        controller.customView = view
        controller.service = service
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testAlbumList() throws {
        
        let movie1 = try ResourceLoader.loadMovie(resource: .movie1)
        service.albums = [movie1]
        
        controller.loadViewIfNeeded()
        
        XCTAssertEqual(view.albumList?.count, 1)
        XCTAssertEqual(try view.albumList?.element(at: 0).title, movie1.name)
    }

}

private final class MockService: TopAlbumsServiceProtocol {
    var albums = [Albums]()
    
    func fetchTopAlbum(completion: @escaping (MovieBoxAPI.Result<MovieBoxAPI.TopAlbumResponses>) -> Void) {
        completion(.success(TopAlbumResponses(results: albums)))
    }
    
  
}

private final class MockAlbumListView: AlbumListViewProtocol{
    
    
    var delegate: MovieBox.AlbumListViewDelegate?
    var albumList: [AlbumPresentation]?
    
    func updateAlbumList(_ albumList: [MovieBox.AlbumPresentation]) {
        self.albumList = albumList
    }
    
    
}

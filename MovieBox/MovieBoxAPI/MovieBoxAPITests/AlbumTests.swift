//
//  AlbumTests.swift
//  MovieBoxAPITests
//
//  Created by İrem Onart on 20.07.2023.
//

import XCTest
@testable import MovieBoxAPI

final class AlbumTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    
    func testParsing() throws {
        
        
        let bundle = Bundle(for: AlbumTests.self)
        guard let url = bundle.url(forResource: "album", withExtension: "json") else {
            print("u failed")
            return
        }
        let data = try Data(contentsOf: url)
        let decoder = Decoders.plainDateDecoder
        let album = try decoder.decode(Albums.self, from: data)
        print(album)
        
        
        
        //"artistName": "Rylo Rodriguez",
        //        "id": "1694584675",
        //        "name": "Been One",
        //        "releaseDate": "2023-06-30",
        //        "kind": "albums",
        //        "artistId": "1315498588",
        //        "artistUrl": "https://music.apple.com/us/artist/rylo-rodriguez/1315498588",
        //        "contentAdvisoryRating": "Explict",
        //        "artworkUrl100": "https://is1-ssl.mzstatic.com/image/thumb/Music116/v4/25/b7/b8/25b7b8c3-c11e-e71e-b88a-cb07dadca6f2/23UMGIM66210.rgb.jpg/100x100bb.jpg",
        //        "genres": [
        //          {
        //            "genreId": "18",
        //            "name": "Hip-Hop/Rap",
        //            "url": "https://itunes.apple.com/us/genre/id18"
        //          },
        //          {
        //            "genreId": "34",
        //            "name": "Music",
        //            "url": "https://itunes.apple.com/us/genre/id34"
        //          }
        //        ],
        //        "url": "https://music.apple.com/us/album/been-one/1694584675"
        
        
        XCTAssertEqual(album.artistName, "Rylo Rodriguez")
        XCTAssertEqual(album.name, "Been One")
        XCTAssertEqual(album.genres.count, 2)
        XCTAssertEqual(album.genres.first?.name, "Hip-Hop/Rap")
        
        
    }
    
    
    
    

}

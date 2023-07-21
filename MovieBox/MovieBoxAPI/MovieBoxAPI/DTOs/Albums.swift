//
//  Albums.swift
//  MovieBoxAPI
//
//  Created by İrem Onart on 20.07.2023.
//
import Foundation

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


public struct Albums: Decodable{
     
    public enum CodingKeys: String, CodingKey {
        case artistName
        case releaseDate
        case name
        case image = "artworkUrl100"
        case url
        case genres
        
    }
    public let artistName: String
    public let releaseDate: Date
    public let name: String
    public let image: URL
    public let url: URL
    public let genres: [Genre]
}

public struct Genre: Decodable {
    public let name: String
}

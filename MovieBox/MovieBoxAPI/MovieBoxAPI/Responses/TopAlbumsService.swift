
import Foundation
import Alamofire



public protocol TopAlbumsServiceProtocol {
    func fetchTopAlbum(completion: @escaping (Result<TopAlbumResponses>) -> Void)
}




public class TopAlbumsService: TopAlbumsServiceProtocol {
    
    public enum Error: Swift.Error {
        case serializationError(internal: Swift.Error)
        case networkError(internal: Swift.Error)
    }
    
    public init() { }
    
    public func fetchTopAlbum(completion: @escaping (Result<TopAlbumResponses>) -> Void) {
        let urlString = "https://rss.applemarketingtools.com/api/v2/us/music/most-played/25/albums.json"
        
        AF.request(urlString).responseData { (response) in
            switch response.result {
            case .success(let data):
                let decoder = Decoders.plainDateDecoder
                do {
                    let response = try decoder.decode(TopAlbumResponses.self, from: data)
                    completion(.success(response))
                } catch {
                    completion(.failure(Error.serializationError(internal: error)))
                }
            case .failure(let error):
                completion(.failure(Error.networkError(internal: error)))
            }
        }
    
    }
}

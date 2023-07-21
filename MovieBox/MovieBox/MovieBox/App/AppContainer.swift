//
//  AppContainer.swift
//  MovieBox
//
//  Created by İrem Onart on 21.07.2023.
//

import Foundation
import MovieBoxAPI

let app = AppContainer()

final class AppContainer {
    
    
    let router = AppRouter()
    let service = TopAlbumsService()
}

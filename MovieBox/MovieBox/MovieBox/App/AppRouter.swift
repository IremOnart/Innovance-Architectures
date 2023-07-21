//
//  AppRouter.swift
//  MovieBox
//
//  Created by İrem Onart on 21.07.2023.
//

import UIKit

final class AppRouter {
    
    let window: UIWindow
    
    init() {
        window = UIWindow(frame: UIScreen.main.bounds)
    }
    
    func start() {
        let viewController = AlbumListBuilder.make()
        let navigationController = UINavigationController(rootViewController: viewController)
        window.rootViewController = navigationController
        window.makeKeyAndVisible()
    }
}

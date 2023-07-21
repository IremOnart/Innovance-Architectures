//
//  AppDelegate.swift
//  MovieBox
//
//  Created by İrem Onart on 21.07.2023.
//

import UIKit

@UIApplicationMain
final class AppDelegate: UIResponder, UIApplicationDelegate {
    
    func application(_ application: UIApplication,
                     didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        app.router.start()
        
        return true
    }
}

//
//  ViewController.swift
//  MovieBox
//
//  Created by İrem Onart on 20.07.2023.
//

import UIKit
import MovieBoxAPI
import Alamofire

class ViewController: UIViewController {

    let service : TopAlbumsServiceProtocol = TopAlbumsService()
    override func viewDidLoad() {
        super.viewDidLoad()
        service.fetchTopAlbum { (result) in
            print(result)
            
        }
    }
}


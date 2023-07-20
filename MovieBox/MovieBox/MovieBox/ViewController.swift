//
//  ViewController.swift
//  MovieBox
//
//  Created by İrem Onart on 20.07.2023.
//

import UIKit
import MovieBoxAPI

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        MovieBoxAPIClient.testRun()
    }
}


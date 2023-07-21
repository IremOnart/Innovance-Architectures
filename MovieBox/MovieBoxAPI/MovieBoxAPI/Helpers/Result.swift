//
//  Result.swift
//  MovieBoxAPI
//
//  Created by İrem Onart on 20.07.2023.
//

import Foundation


public enum Result <Value> {
    case success(Value)
    case failure(Error)
}

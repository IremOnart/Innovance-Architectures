//
//  Optional+Helpers.swift
//  Utility
//
//  Created by İrem Onart on 24.07.2023.
//

import Foundation

import Foundation

public extension Optional {
    
    struct FoundNilWhileUnwrappingError: Error { }
    
    func unwrap() throws -> Wrapped {
        switch self {
        case .some(let wrapped):
            return wrapped
        case .none:
            throw FoundNilWhileUnwrappingError()
        }
    }
}

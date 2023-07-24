//
//  Array+Helpers.swift
//  Utility
//
//  Created by İrem Onart on 24.07.2023.
//

import Foundation

import Foundation

public extension Array {
    
    struct IndexOutOfBoundsError: Error { }
    
    func element(at index: Int) throws -> Element {
        guard index >= 0 && index < self.count else {
            throw IndexOutOfBoundsError()
        }
        return self[index]
    }
}

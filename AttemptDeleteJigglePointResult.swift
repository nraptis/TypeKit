//
//  AttemptDeleteJigglePointResult.swift
//  TypeKit
//
//  Created by Nicholas Raptis on 5/14/25.
//

import Foundation

@frozen public enum AttemptDeleteJigglePointResult {
    case invalid
    case success
    case selectedJiggleRequired
    case selectedJigglePointRequired
    case jigglePointCountUnderflow
}

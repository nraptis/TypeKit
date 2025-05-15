//
//  AttemptDeleteGuidePointResult.swift
//  TypeKit
//
//  Created by Nicholas Raptis on 5/14/25.
//

import Foundation

@frozen public enum AttemptDeleteGuidePointResult {
    case invalid
    case success
    case selectedJiggleRequired
    case selectedGuideRequired
    case selectedGuidePointRequired
    case guidePointCountUnderflow
}

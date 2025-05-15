//
//  AttemptUpdateJigglePointResult.swift
//  TypeKit
//
//  Created by Nicholas Raptis on 5/14/25.
//

import Foundation
import MathKit

@frozen public enum AttemptUpdateJigglePointResult {
    public struct UpdateJigglePointData {
        public let jiggleIndex: Int
        public let controlPointIndex: Int
        public let controlPointData: ControlPointData
        public init(jiggleIndex: Int,
                    controlPointIndex: Int,
                    controlPointData: ControlPointData) {
            self.jiggleIndex = jiggleIndex
            self.controlPointIndex = controlPointIndex
            self.controlPointData = controlPointData
        }
    }
    case invalid
    case success(UpdateJigglePointData)
    case selectedJiggleRequired
    case selectedJigglePointRequired
    
}

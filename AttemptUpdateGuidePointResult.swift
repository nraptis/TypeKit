//
//  AttemptUpdateGuidePointResult.swift
//  TypeKit
//
//  Created by Nicholas Raptis on 5/14/25.
//

import Foundation
import MathKit

@frozen public enum AttemptUpdateGuidePointResult {
    public struct UpdateGuidePointData {
        public let jiggleIndex: Int
        public let guideIndex: Int
        public let guideControlPointIndex: Int
        public let controlPointData: ControlPointData
        public init(jiggleIndex: Int, guideIndex: Int, guideControlPointIndex: Int, controlPointData: ControlPointData) {
            self.jiggleIndex = jiggleIndex
            self.guideIndex = guideIndex
            self.guideControlPointIndex = guideControlPointIndex
            self.controlPointData = controlPointData
        }
    }
    case invalid
    case success(UpdateGuidePointData)
    case selectedJiggleRequired
    case selectedGuideRequired
    case selectedGuidePointRequired
    case selectedTanRequired
    
}

//
//  WeightCurveHash.swift
//  Yo Mamma Be Ugly
//
//  Created by Nick Raptis on 7/13/24.
//
//  Verified on 11/9/2024 by Nick Raptis
//

import Foundation
import WeightCurveKit

public struct WeightCurveHash: Equatable {
    
    public init() {
        
    }
    
    public var frameWidth: Float = 0.0
    public var frameHeight: Float = 0.0
    public var paddingH: Float = 0.0
    public var paddingV: Float = 0.0
    public var weightCurveControlPointStart = WeightCurveControlPointHash()
    public var weightCurveControlPoints = [WeightCurveControlPointHash]()
    public var weightCurveControlPointEnd = WeightCurveControlPointHash()
    
    public mutating func change(frameWidth: Float,
                                frameHeight: Float,
                                paddingH: Float,
                                paddingV: Float,
                                weightCurveControlPointStart: WeightCurveControlPoint,
                                owningList: [some WeightCurveControlPointOwning],
                                owningListCount: Int,
                                weightCurveControlPointEnd: WeightCurveControlPoint) {
        
        self.frameWidth = frameWidth
        self.frameHeight = frameHeight
        
        self.paddingH = paddingH
        self.paddingV = paddingV
        
        self.weightCurveControlPointStart.change(normalizedTanDirection: weightCurveControlPointStart.normalizedTanDirection,
                                                 normalizedTanMagnitudeIn: weightCurveControlPointStart.normalizedTanMagnitudeIn,
                                                 normalizedTanMagnitudeOut: weightCurveControlPointStart.normalizedTanMagnitudeOut,
                                                 isManualHeightEnabled: weightCurveControlPointStart.isManualHeightEnabled,
                                                 normalizedHeightFactor: weightCurveControlPointStart.normalizedHeightFactor,
                                                 isManualTanHandleEnabled: weightCurveControlPointStart.isManualTanHandleEnabled)
        
        if weightCurveControlPoints.count != owningListCount {
            weightCurveControlPoints = [WeightCurveControlPointHash](repeating: WeightCurveControlPointHash(),
                                                                     count: owningListCount)
        }
        
        for guideIndex in 0..<owningListCount {
            let owner = owningList[guideIndex]
            let weightCurveControlPoint = owner.weightCurveControlPoint
            weightCurveControlPoints[guideIndex].change(normalizedTanDirection: weightCurveControlPoint.normalizedTanDirection,
                                                        normalizedTanMagnitudeIn: weightCurveControlPoint.normalizedTanMagnitudeIn,
                                                        normalizedTanMagnitudeOut: weightCurveControlPoint.normalizedTanMagnitudeOut,
                                                        isManualHeightEnabled: weightCurveControlPoint.isManualHeightEnabled,
                                                        normalizedHeightFactor: weightCurveControlPoint.normalizedHeightFactor,
                                                        isManualTanHandleEnabled: weightCurveControlPoint.isManualTanHandleEnabled)
        }
        
        self.weightCurveControlPointEnd.change(normalizedTanDirection: weightCurveControlPointEnd.normalizedTanDirection,
                                               normalizedTanMagnitudeIn: weightCurveControlPointEnd.normalizedTanMagnitudeIn,
                                               normalizedTanMagnitudeOut: weightCurveControlPointEnd.normalizedTanMagnitudeOut,
                                               isManualHeightEnabled: weightCurveControlPointEnd.isManualHeightEnabled,
                                               normalizedHeightFactor: weightCurveControlPointEnd.normalizedHeightFactor,
                                               isManualTanHandleEnabled: weightCurveControlPointEnd.isManualTanHandleEnabled)
        
    }
    
}


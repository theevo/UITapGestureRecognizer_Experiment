//
//  CGPointExtension.swift
//  UITapGestureRecognizer_Experiment
//
//  Created by Theo Vora on 4/14/20.
//  Copyright © 2020 Joy Bending. All rights reserved.
//

import UIKit.UITapGestureRecognizer

extension CGPoint {
    func prettyPrint() -> String {
        return "\(self.x.truncateAfterTwoPlaces()), \(self.y.truncateAfterTwoPlaces())"
    }
}


extension CGFloat {
    func truncateAfterTwoPlaces() -> CGFloat {
        let places: CGFloat = 2.0
        return CGFloat(floor(pow(10.0, places) * self)/pow(10.0, places))
    }
}

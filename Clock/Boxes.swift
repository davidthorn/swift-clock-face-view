//
//  Boxes.swift
//  Clock
//
//  Created by Thorn, David on 12.05.20.
//  Copyright © 2020 David Thorn. All rights reserved.
//

import UIKit

public struct Boxes {

    let topleft: CGRect
    let topright: CGRect
    let bottomleft: CGRect
    let bottomright: CGRect
    let rect: CGRect

    public init(rect: CGRect) {
        self.rect = rect
        topleft = CGRect(x: 0, y: 0, width: rect.width / 2, height: rect.height / 2)
        topright = CGRect(x: rect.midX, y: 0, width: rect.width / 2, height: rect.height / 2)
        bottomleft = CGRect(x: 0, y: rect.midY, width: rect.width / 2, height: rect.height / 2)
        bottomright = CGRect(x: rect.midX, y: rect.midY, width: rect.width / 2, height: rect.height / 2)
    }

    public func angleInDegrees(point: CGPoint) -> CGFloat {
        var angle: CGFloat = 0

        if topleft.contains(point) {
            angle = 270

            let adjacent = rect.midX - point.x
            let opposite = rect.midY - point.y
            let hyp = sqrt((adjacent * adjacent) + (opposite * opposite))
            let radians = opposite / hyp
            var degrees = radians * (180 / .pi)

            if degrees > 45 {
                degrees = 45
                degrees += (45 - (adjacent / hyp) * (180 / .pi))
            }

            angle += degrees
            if angle >= 360 {
                angle = 0
            }

        }

        if topright.contains(point) {
            let adjacent = rect.midY - point.y
            let opposite = point.x - rect.midX
            let hyp = sqrt((adjacent * adjacent) + (opposite * opposite))
            let radians = opposite / hyp
            var degrees = radians * (180 / .pi)

            if degrees > 45 {
                degrees = 45
                degrees += (45 - (adjacent / hyp) * (180 / .pi))
            }

            angle += degrees

        }

        if bottomleft.contains(point) {
            angle = 180

            let adjacent = rect.midX - point.x
            let opposite = point.y - rect.midY
            let hyp = sqrt((adjacent * adjacent) + (opposite * opposite))
            let radians = opposite / hyp
            var degrees = radians * (180 / .pi)

            if degrees > 45 {
                degrees = (adjacent / hyp) * (180 / .pi)
            } else {
                degrees = 45 - degrees
                degrees += 45
            }

            angle += degrees
        }

        return angle
    }
}

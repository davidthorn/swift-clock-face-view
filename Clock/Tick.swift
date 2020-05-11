//
//  Tick.swift
//  ClockFace
//
//  Created by Thorn, David on 11.05.20.
//  Copyright © 2020 David Thorn All rights reserved.
//

import UIKit

public struct Tick {

    public let type: TickType
    public let number: CGFloat
    public let totalTickets: CGFloat
    public let radius: CGFloat
   
    public var radians: CGFloat {
        (angle / 180) * .pi
    }

    public var angle: CGFloat {
        ((360 / totalTickets) * number) - 90
    }

    public func startPoint(center: CGPoint) -> CGPoint {
        let x = center.x + (radius - type.length) * cos(radians)
        let y = center.y + (radius - type.length) * sin(radians)
        return .init(x: x, y: y)
    }

    public func endPoint(center: CGPoint) -> CGPoint {
        let x = center.x + type.length * cos(radians)
        let y = center.y + type.length * sin(radians)
        return .init(x: x, y: y)
    }

    public func draw(in rect: CGRect) {
        type.color.setStroke()
        let bezier = UIBezierPath()
        let start = CGPoint(x: rect.midX, y: rect.midY)
        let point = startPoint(center: start)
        bezier.move(to: point)
        bezier.addLine(to: endPoint(center: point))
        bezier.lineWidth = type.width
        bezier.stroke()
        bezier.close()
    }

}

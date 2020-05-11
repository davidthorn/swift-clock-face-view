//
//  Clock.swift
//  ClockFace
//
//  Created by Thorn, David on 11.05.20.
//  Copyright © 2020 David Thorn All rights reserved.
//

import UIKit

public struct Clock {

    private(set) var ticks: [Tick]

    public init(ticks: [Tick]) {
        self.ticks = ticks
    }

    public func draw(in rect: CGRect) {
        ticks.forEach { tick in
            tick.draw(in: rect)
        }
    }

    public init(hours: Int, radius: CGFloat) {

        ticks = (1...(hours * 4)).enumerated().map { data -> Tick in
            if data.offset % 4 == 0 {
                return Tick(
                    type: .hour,
                    number: CGFloat(data.offset / 4),
                    totalTickets: CGFloat(hours),
                    radius: radius
                )
            } else {
                return Tick(
                    type: .fifth,
                    number: CGFloat(data.offset),
                    totalTickets: CGFloat(hours * 4),
                    radius: radius
                )
            }
        }
    }

}

//
//  ClockFaceTests.swift
//  ClockFaceTests
//
//  Created by Thorn, David on 11.05.20.
//  Copyright © 2020 David Thorn All rights reserved.
//

import XCTest
@testable import Clock

class ClockFaceTests: XCTestCase {

    func test_tick() {
        let tick = Tick(type: .fifth, number: 1, totalTickets: 12, radius: 100)

        let angle = CGFloat((360 / 12) * 1) - 90
        XCTAssertEqual(tick.angle, angle)
        XCTAssertEqual(angle, -60)

        let radians = CGFloat((angle / 180.0) * .pi)
        XCTAssertEqual(tick.radians, radians)

        let start = CGRect(x: 0, y: 0, width: 10, height: 10)

        let x1 = start.origin.x + 0 * cos(radians)
        let y1 = start.origin.y + 0 * sin(radians)

        let x2 = x1 + 7 * cos(radians)
        let y2 = y1 + 7 * sin(radians)
//
//        XCTAssertEqual(tick.startPoint(center: start.origin), CGPoint(x: x1, y: y1))
//        XCTAssertEqual(tick.endPoint(center: start.origin), CGPoint(x: x2, y: y2))

    }

}

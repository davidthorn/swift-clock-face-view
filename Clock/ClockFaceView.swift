//
//  ClockFaceView.swift
//  Clock
//
//  Created by Thorn, David on 11.05.20.
//  Copyright © 2020 David Thorn. All rights reserved.
//

import UIKit

public final class ClockFaceView: UIView {

    private(set) var hours: Int = 24
    private(set) var radius: CGFloat = 0

    public init(hours: Int, radius: CGFloat) {
        self.hours = hours
        self.radius = radius
        super.init(frame: .zero)
    }

    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }

    public override func draw(_ rect: CGRect) {
        let clock = Clock(hours: hours, radius: radius)
        clock.draw(in: rect)
    }

}

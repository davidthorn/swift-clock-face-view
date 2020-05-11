//
//  TickType.swift
//  ClockFace
//
//  Created by Thorn, David on 11.05.20.
//  Copyright © 2020 David Thorn All rights reserved.
//

import UIKit

public enum TickType {

    case fifth

    case hour

    public var length: CGFloat {
        switch self {
        case .fifth:
            return 5
        case .hour:
            return 8
        }
    }

    public var width: CGFloat {
        switch self {
        case .fifth:
            return 1.5
        case .hour:
            return 3
        }
    }

    public var color: UIColor {
        switch self {
        case .fifth:
            return UIColor.red.withAlphaComponent(1.0)
        case .hour:
            return UIColor.blue.withAlphaComponent(1.0)
        }
    }
}

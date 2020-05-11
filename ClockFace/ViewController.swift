//
//  ViewController.swift
//  ClockFace
//
//  Created by Thorn, David on 11.05.20.
//  Copyright © 2020 David Thorn All rights reserved.
//

import UIKit
import Clock

//class View: UIView {
//
//    override func draw(_ rect: CGRect) {
//        let clock = Clock(hours: 10, radius: 100)
//        clock.draw(in: rect)
//    }
//}

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white

        let myView = ClockFaceView(hours: 7, radius: (view.bounds.width / 2) * 0.9)
        myView.backgroundColor = .white
        myView.frame = view.bounds
        myView.autoresizingMask = [.flexibleWidth , .flexibleHeight]
        view.addSubview(myView)
    }

}


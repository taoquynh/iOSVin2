//
//  ViewController.swift
//  Wave
//
//  Created by Taof on 11/14/19.
//  Copyright © 2019 Taof. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.layer.addSublayer(shapeLayer)
        startDisplayLink()
    }
    
    private var displayLink: CADisplayLink?
    private var startTime: CFAbsoluteTime?
    
    /// The `CAShapeLayer` that will contain the animated path
    
    private let shapeLayer: CAShapeLayer = {
        let _layer = CAShapeLayer()
        _layer.strokeColor = UIColor.lightGray.cgColor
        _layer.fillColor = UIColor.clear.cgColor
        _layer.lineWidth = 3
        return _layer
    }()
    
    override func viewDidDisappear(_ animated: Bool) {
        stopDisplayLink()
    }
    
    /// Start the display link
    
    private func startDisplayLink() {
        startTime = CFAbsoluteTimeGetCurrent()
        displayLink?.invalidate()
        displayLink = CADisplayLink(target: self, selector:#selector(handleDisplayLink(_:)))
        displayLink?.add(to: RunLoop.current, forMode: RunLoop.Mode.common)
    }
    
    /// Stop the display link
    
    private func stopDisplayLink() {
        displayLink?.invalidate()
        displayLink = nil
    }
    
    /// Handle the display link timer.
    ///
    /// - Parameter displayLink: The display link.
    
    @objc func handleDisplayLink(_ displayLink: CADisplayLink) {
        let elapsed = CFAbsoluteTimeGetCurrent() - startTime!
        shapeLayer.path = wave(at: elapsed).cgPath
    }
    
    /// Create the wave at a given elapsed time.
    ///
    /// You should customize this as you see fit.
    ///
    /// - Parameter elapsed: How many seconds have elapsed.
    /// - Returns: The `UIBezierPath` for a particular point of time.
    
    private func wave(at elapsed: Double) -> UIBezierPath {
        let centerY = view.bounds.height / 2
        let amplitude = CGFloat(50) - abs(fmod(CGFloat(elapsed), 3) - 1.5) * 40
        
        func f(_ x: Int) -> CGFloat {
            return sin(((CGFloat(x) / view.bounds.width) + CGFloat(elapsed)) * 4 * .pi) * amplitude + centerY
        }
        
        let path = UIBezierPath()
        path.move(to: CGPoint(x: 0, y: f(0)))
        for x in stride(from: 0, to: Int(view.bounds.width + 9), by: 10) {
            path.addLine(to: CGPoint(x: CGFloat(x), y: f(x)))
        }
        
        return path
    }
}


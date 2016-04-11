//
//  BezierPathsView.swift
//  Dropit
//
//  Created by Danila Bustamante on 11/04/16.
//  Copyright © 2016 Francisco Aso. All rights reserved.
//

import UIKit

class BezierPathsView: UIView {

    private var bezierPaths = [String:UIBezierPath]()
    
    func setPath(path : UIBezierPath?, named name : String) {
        bezierPaths[name] = path
        setNeedsDisplay()
    }
    
    override func drawRect(rect: CGRect) {
        for (_, path) in bezierPaths {
            path.stroke()
        }
    }
}

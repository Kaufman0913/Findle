//
//  RadialGradient.swift
//  Findle
//
//  Created by ISOP on 6/26/19.
//  Copyright © 2019 ISOP. All rights reserved.
//

import UIKit

@IBDesignable
class RadialGradient: UIView {
    
    @IBInspectable var Insidecolor: UIColor = UIColor.clear
    @IBInspectable var OutsideColor: UIColor = UIColor.clear
    
    override func draw(_ rect: CGRect) {
        
        let colors = [Insidecolor.cgColor, OutsideColor.cgColor] as CFArray
        let gradient = CGGradient(colorsSpace: nil, colors: colors, locations: nil)
        
        let screenSize: CGRect = UIScreen.main.bounds
        let screenHeight = screenSize.height
        let startPoint = CGPoint(x: 0, y: 0)
        let endPoint = CGPoint(x: 0, y: screenHeight)
        
        UIGraphicsGetCurrentContext()!.drawLinearGradient(gradient!, start: startPoint, end: endPoint, options: CGGradientDrawingOptions.drawsBeforeStartLocation)
    }
}

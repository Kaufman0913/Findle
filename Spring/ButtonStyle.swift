//
//  ButtonStyle.swift
//  Findle
//
//  Created by ISOP on 6/26/19.
//  Copyright © 2019 ISOP. All rights reserved.
//

import UIKit

@IBDesignable
class ButtonStyle: UIButton {
    
    @IBInspectable var shadowColor: UIColor? {
        get{
            if let color = layer.shadowColor {
                return UIColor(cgColor: color)
            }
            return nil
        }
        set {
            if let color = newValue {
                layer.shadowColor = color.cgColor
            } else {
                layer.shadowColor = nil
            }
        }
    }

    @IBInspectable var shadowOpacity: Float {
        get {
            return layer.shadowOpacity
        }
        set {
            layer.shadowOpacity = newValue
        }
    }

    @IBInspectable var shadowOffset: CGPoint {
        get {
            return CGPoint(x: layer.shadowOffset.width, y: layer.shadowOffset.height)
        }
        set {
            layer.shadowOffset = CGSize(width: newValue.x, height: newValue.y)
        }
    }

    @IBInspectable var shadowBlur: CGFloat {
        get {
            return layer.shadowRadius
        }
        set {
            layer.shadowRadius = newValue / 2.0
        }
    }

    @IBInspectable var shadowSpread: CGFloat = 0{
        didSet {
            if shadowSpread == 0 {
                layer.shadowPath = nil
            } else {
                let dx = -shadowSpread
                let rect = bounds.insetBy(dx: dx, dy: dx)
                layer.shadowPath = UIBezierPath(rect: rect).cgPath
            }
        }
    }

    @IBInspectable public var cornerRadius: CGFloat = 0 {
        didSet {
            layer.cornerRadius = cornerRadius
        }
    }

    @IBInspectable public var shadowRadius: CGFloat = 0 {
        didSet {
            layer.shadowRadius = shadowRadius
        }
    }
}

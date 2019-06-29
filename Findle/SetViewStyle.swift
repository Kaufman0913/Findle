//
//  ShadowView.swift
//  Findle
//
//  Created by ISOP on 6/26/19.
//  Copyright © 2019 ISOP. All rights reserved.
//

import UIKit

@IBDesignable
class SetViewStyle: UIButton {
    
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
    
//    override open var isSelected: Bool {
//        didSet {
//            backgroundColor = isSelected ? #colorLiteral(red: 0.7648440003, green: 0.7570490837, blue: 0.7567587495, alpha: 1) : #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
//        }
//    }
//
//    var isOn = false
//
//    override init(frame: CGRect) {
//        super.init(frame: frame)
//        initButton()
//    }
//
//    required init?(coder aDecoder: NSCoder) {
//        super.init(coder: aDecoder)
//        initButton()
//    }
//
//    func initButton() {
//        setTitleColor(Colors.btnPressedColor, for: .normal)
//        addTarget(self, action: #selector(SetViewStyle.buttonPressed), for: .touchDown)
//    }
//
//    @objc func buttonPressed() {
//        activateButton(bool: !isOn)
//    }
//
//    func activateButton(bool: Bool) {
//        isOn = bool
//
//        let color = bool ? Colors.btnPressedColor : .clear
//        let titleColor = bool ? .white : Colors.btnPressedColor
//
//        setTitleColor(titleColor, for: .normal)
//        backgroundColor = color
//    }
    
//    var cornerRadiusValue: CGFloat = 0
//    var corners: UIRectCorner = []
//
//    @IBInspectable public var cornerRadius : CGFloat {
//        get {
//            return cornerRadiusValue
//        }
//        set {
//            cornerRadiusValue = newValue
//        }
//    }
//
//    @IBInspectable public var topLeft : Bool {
//        get {
//            return corners.contains(.topLeft)
//        }
//        set {
//            setCorner(newValue: newValue, for: .topLeft)
//        }
//    }
//
//    @IBInspectable public var topRight : Bool {
//        get {
//            return corners.contains(.topRight)
//        }
//        set {
//            setCorner(newValue: newValue, for: .topRight)
//        }
//    }
//
//    @IBInspectable public var bottomLeft : Bool {
//        get {
//            return corners.contains(.bottomLeft)
//        }
//        set {
//            setCorner(newValue: newValue, for: .bottomLeft)
//        }
//    }
//
//    @IBInspectable public var bottomRight : Bool {
//        get {
//            return corners.contains(.bottomRight)
//        }
//        set {
//            setCorner(newValue: newValue, for: .bottomRight)
//        }
//    }
//
//    func setCorner(newValue: Bool, for corner: UIRectCorner) {
//        if newValue {
//            addRectCorner(corner: corner)
//        } else {
//            removeRectCorner(corner: corner)
//        }
//    }
//
//    func addRectCorner(corner: UIRectCorner) {
//        corners.insert(corner)
//        updateCorners()
//    }
//
//    func removeRectCorner(corner: UIRectCorner) {
//        if corners.contains(corner) {
//            corners.remove(corner)
//            updateCorners()
//        }
//    }
//
//    func updateCorners() {
//        let path = UIBezierPath(roundedRect: self.bounds, byRoundingCorners: corners, cornerRadii: CGSize(width: cornerRadiusValue, height: cornerRadiusValue))
//        let mask = CAShapeLayer()
//        mask.path = path.cgPath
//        self.layer.mask = mask
//    }
}

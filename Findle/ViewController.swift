//
//  ViewController.swift
//  Findle
//
//  Created by ISOP on 6/26/19.
//  Copyright © 2019 ISOP. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var btnSign: UIButton!
    @IBOutlet weak var btnLogin: UIButton!
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        //kaufman update
        btnSign.roundButton()
        btnLogin.roundButton1()
        
        
    }
    
    //Hide the Navigation Bar
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        
        self.navigationController?.setNavigationBarHidden(true, animated: true)
    }
    
}


extension UIButton {

    func roundButton(){
        let maskPath1 = UIBezierPath(roundedRect: bounds, byRoundingCorners: [.bottomRight], cornerRadii: CGSize(width: 10, height: 10))
        let maskLayer1 = CAShapeLayer()
        maskLayer1.frame = bounds
        maskLayer1.path = maskPath1.cgPath
        layer.mask = maskLayer1

    }

    func roundButton1(){
        let maskPath1 = UIBezierPath(roundedRect: bounds, byRoundingCorners: [.bottomLeft], cornerRadii: CGSize(width: 10, height: 10))
        let maskLayer1 = CAShapeLayer()
        maskLayer1.frame = bounds
        maskLayer1.path = maskPath1.cgPath
        layer.mask = maskLayer1
    }
    
}



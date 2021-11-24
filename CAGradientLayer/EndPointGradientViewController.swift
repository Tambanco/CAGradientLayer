//
//  EndPointGradientViewController.swift
//  CAGradientLayer
//
//  Created by tambanco 🥳 on 24.11.2021.
//

import UIKit

class EndPointGradientViewController: UIViewController {
    
    private let endPointGradient: CAGradientLayer = {
        let layer = CAGradientLayer()
        return layer
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupEndPointGradient()
    }
    
    override func viewDidLayoutSubviews() {
        endPointGradient.frame = self.view.bounds
    }
    
    private func setupEndPointGradient() {
        endPointGradient.colors = [hexStringToUIColor(hex: "#2193b0").cgColor,
                                   hexStringToUIColor(hex: "#6dd5ed").cgColor]
        

//        // - location
//        endPointGradient.locations = [0.4, 0.6]
        
        // - from up-left to down-right
        endPointGradient.startPoint = CGPoint(x: 0,y: 0)
        endPointGradient.endPoint = CGPoint(x: 1,y: 1)
//
//        // - from up-right to down-left
//        endPointGradient.startPoint = CGPoint(x: 1,y: 0)
//        endPointGradient.endPoint = CGPoint(x: 0,y: 1)
        
//        // - from down-left to up-right
//        endPointGradient.startPoint = CGPoint(x: 0,y: 1)
//        endPointGradient.endPoint = CGPoint(x: 1,y: 0)
        
//        // - from down-right to up-left
//        endPointGradient.startPoint = CGPoint(x: 1,y: 1)
//        endPointGradient.endPoint = CGPoint(x: 0,y: 0)
        
        self.view.layer.insertSublayer(endPointGradient, at: 0)
    }
}

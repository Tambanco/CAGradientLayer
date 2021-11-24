//
//  ViewController.swift
//  CAGradientLayer
//
//  Created by tambanco 🥳 on 24.11.2021.
//

import UIKit

class ViewController: UIViewController {
    
    //1 - create layer
    let gradientLayer: CAGradientLayer = {
        let layer = CAGradientLayer()
        return layer
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupGradientBackground()
    }
    
    override func viewDidLayoutSubviews() {
        //4 - setup layer frame
        gradientLayer.frame = self.view.bounds
    }
    
    private func setupGradientBackground() {
        
        //2 - add colors
        gradientLayer.colors = [UIColor.red.cgColor,
                                UIColor.yellow.cgColor,
                                UIColor.green.cgColor,
                                UIColor.blue.cgColor]
        
        //3 - place layer inside parent layer
        self.view.layer.insertSublayer(gradientLayer, at: 0)
    }
}

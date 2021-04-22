//
//  ViewController.swift
//  Traffic light
//
//  Created by Marat on 24.03.2021.
//

import UIKit

enum CurrentColor {
    case red, yellow, green
}

class ViewController: UIViewController {
    
    @IBOutlet weak var redView: UIView!
    @IBOutlet weak var yellowView: UIView!
    @IBOutlet weak var greenView: UIView!
    
    @IBOutlet weak var buttonNext: UIButton!
    
    private var currentLight = CurrentColor.red
    private let lightIsOff: CGFloat = 0.3
    private let lightIsOn: CGFloat = 1
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        buttonNext.layer.cornerRadius = 15
        
        redView.alpha = lightIsOff
        yellowView.alpha = lightIsOff
        greenView.alpha = lightIsOff
        
        print("Размеры сторон вьюшке равен в методе viewDidLoad: \(redView.frame.height)")
    }
    
    override func viewWillLayoutSubviews() {
        redView.layer.cornerRadius = redView.frame.width / 2
        yellowView.layer.cornerRadius = yellowView.frame.width / 2
        greenView.layer.cornerRadius = greenView.frame.width / 2
        
        print("Размеры сторон вьюшке равен в методе viewWillLayoutSubviews: \(redView.frame.height)")
    }
    
    @IBAction func actionButtonStart() {
        if buttonNext.currentTitle == "Start" {
            buttonNext.setTitle("Next", for: .normal)
        }
        
        switch currentLight {
        case .red:
            redView.alpha = lightIsOn
            greenView.alpha = lightIsOff
            currentLight = .yellow
        case .yellow:
            yellowView.alpha = lightIsOn
            redView.alpha = lightIsOff
            currentLight = .green
        default:
            greenView.alpha = lightIsOn
            yellowView.alpha = lightIsOff
            currentLight = .red
        }
    }
    
    
//        if redView.alpha < 1 && yellowView.alpha < 1 && greenView.alpha < 1 {
//            redView.alpha = 1
//            buttonNext.setTitle("Next", for: .normal)
//        } else if redView.alpha == 1 {
//            yellowView.alpha = 1
//            redView.alpha = 0.3
//        } else if yellowView.alpha == 1 {
//            greenView.alpha = 1
//            yellowView.alpha = 0.3
//        } else if greenView.alpha == 1 {
//            redView.alpha = 1
//            greenView.alpha = 0.3
}

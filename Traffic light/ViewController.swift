//
//  ViewController.swift
//  Traffic light
//
//  Created by Marat on 24.03.2021.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var redView: UIView!
    @IBOutlet weak var yellowView: UIView!
    @IBOutlet weak var greenView: UIView!
    @IBOutlet weak var buttonNext: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        buttonNext.layer.cornerRadius = 15
        
        redView.alpha = 0.3
        yellowView.alpha = 0.3
        greenView.alpha = 0.3
        
        redView.layer.cornerRadius = 75
        yellowView.layer.cornerRadius = 75
        greenView.layer.cornerRadius = 75
        
    }
    @IBAction func actionButtonNext(_ sender: UIButton) {
    
        if redView.alpha < 1 && yellowView.alpha < 1 && greenView.alpha < 1 {
            redView.alpha = 1
        } else if redView.alpha == 1 {
            yellowView.alpha = 1
            redView.alpha = 0.3
        } else if yellowView.alpha == 1 {
            greenView.alpha = 1
            yellowView.alpha = 0.3
        } else if greenView.alpha == 1 {
            redView.alpha = 1
            greenView.alpha = 0.3
        }
    }

}

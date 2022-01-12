//
//  ViewController.swift
//  Traffic Lights
//
//  Created by Александр Муратов on 12.01.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var toggleButton: UIButton!

    @IBOutlet var redLightView: UIView!
    @IBOutlet var yellowLightView: UIView!
    @IBOutlet var greenLightView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        makeViewIntoCircle(view: redLightView)
        makeViewIntoCircle(view: yellowLightView)
        makeViewIntoCircle(view: greenLightView)
        
        redLightView.alpha = 0.3
        yellowLightView.alpha = 0.3
        greenLightView.alpha = 0.3
        
        toggleButton.layer.cornerRadius = 10
        // Do any additional setup after loading the view.
    }

    @IBAction func makeButtonAction(_ sender: Any) {
        if redLightView.alpha == 0.30000001192092896 && yellowLightView.alpha == 0.30000001192092896 && greenLightView.alpha == 0.30000001192092896 {
            redLightView.alpha = 1
            toggleButton.setTitle("Next", for: .normal)
        } else if redLightView.alpha == 1 {
            redLightView.alpha = 0.3
            yellowLightView.alpha = 1
        } else if yellowLightView.alpha == 1 {
            yellowLightView.alpha = 0.3
            greenLightView.alpha = 1
        } else if greenLightView.alpha == 1 {
            greenLightView.alpha = 0.3
            redLightView.alpha = 1
        }
    }
    
    func makeViewIntoCircle (view: UIView) {
        view.layer.cornerRadius = view.layer.bounds.width / 2
        view.clipsToBounds = true
    }
}


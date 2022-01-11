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
    
    func makeViewIntoCircle (view: UIView) {
        view.layer.cornerRadius = view.layer.bounds.width / 2
        view.clipsToBounds = true
    }

    @IBAction func makeButtonAction(_ sender: Any) {

    }
    
}


//
//  ViewController.swift
//  HomeWorkLesson2.1
//
//  Created by Богдан Олейник on 04.01.2022.
//

import UIKit

enum CurrentColor {
    case red, yellow, green
}

class ViewController: UIViewController {

    @IBOutlet var redColorView: UIView!
    @IBOutlet var yellowColorView: UIView!
    @IBOutlet var greenColorView: UIView!

    @IBOutlet var startButton: UIButton!
    
    private var currentColor = CurrentColor.red
    private let lightIsOn: CGFloat = 1
    private let lightIsOff: CGFloat = 0.3
    
    override func viewDidLoad() {
        super.viewDidLoad()

        startButton.layer.cornerRadius = 15
        
        redColorView.alpha = lightIsOff
        yellowColorView.alpha = lightIsOff
        greenColorView.alpha = lightIsOff
    }

    override func viewWillLayoutSubviews() {
        redColorView.layer.cornerRadius = redColorView.frame.width / 2
        yellowColorView.layer.cornerRadius = redColorView.frame.width / 2
        greenColorView.layer.cornerRadius = redColorView.frame.width / 2
    }
    
    @IBAction func startButtonPressed() {
        if startButton.currentTitle == "START" {
            startButton.setTitle("NEXT", for: .normal)
        }

        switch currentColor {
        case .red:
            redColorView.alpha = lightIsOn
            greenColorView.alpha = lightIsOff
            currentColor = .yellow
        case .yellow:
            yellowColorView.alpha = lightIsOn
            redColorView.alpha = lightIsOff
            currentColor = .green
        case .green:
            greenColorView.alpha = lightIsOn
            yellowColorView.alpha = lightIsOff
            currentColor = .red
        }
    }
}


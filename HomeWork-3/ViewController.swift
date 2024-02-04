//
//  ViewController.swift
//  HomeWork-3
//
//  Created by Владислав Соколов on 01.02.2024.
//

import UIKit

final class ViewController: UIViewController {

    @IBOutlet var colorView: UIView!
    
    @IBOutlet var redLabel: UILabel!
    @IBOutlet var greenLabel: UILabel!
    @IBOutlet var blueLabel: UILabel!

    @IBOutlet var redSlider: UISlider!
    @IBOutlet var greenSlider: UISlider!
    @IBOutlet var blueSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        colorView.layer.cornerRadius = 10
        
        setupLabel()
        setupSlider()
    }

    @IBAction func actionRedSlider() {
        redLabel.text = String(format: "%.2f", redSlider.value)
        colorMixed()
    }
    
    @IBAction func actionGreenSlider() {
        greenLabel.text = String(format: "%.2f", greenSlider.value)
        colorMixed()
    }
    
    @IBAction func actionBlueSlider() {
        blueLabel.text = String(format: "%.2f", blueSlider.value)
        colorMixed()
    }
    
    private func colorMixed() {
        colorView.backgroundColor = UIColor(red: CGFloat(redSlider.value), green: CGFloat(greenSlider.value), blue: CGFloat(blueSlider.value), alpha: 1.0)
    }
    
    private func setupLabel() {
        redLabel.text = String(format: "%.2f", redSlider.value)
        greenLabel.text = String(format: "%.2f", greenSlider.value)
        blueLabel.text = String(format: "%.2f", blueSlider.value)
    }
    
    private func setupSlider() {
        redSlider.minimumTrackTintColor = .red
        redSlider.maximumTrackTintColor = .white
        
        greenSlider.minimumTrackTintColor = .green
        greenSlider.maximumTrackTintColor = .white
        
        blueSlider.minimumTrackTintColor = .blue
        blueSlider.maximumTrackTintColor = .white
    }
}

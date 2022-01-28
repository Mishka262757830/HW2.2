//
//  ViewController.swift
//  HW2.2
//
//  Created by Mikhail Stepanov on 28.01.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var mainColorView: UIView!
    
    @IBOutlet var redColorValueLabel: UILabel!
    @IBOutlet var greenColorValueLabel: UILabel!
    @IBOutlet var blueColorValueLabel: UILabel!
    
    
    @IBOutlet var redColorSlider: UISlider!
    @IBOutlet var greenColorSlider: UISlider!
    @IBOutlet var blueColorSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        mainColorView.layer.cornerRadius = 5
        
        mainViewColorAdding()
        
        redColorValueLabel.text = String(redColorSlider.value)
        greenColorValueLabel.text = String(greenColorSlider.value)
        blueColorValueLabel.text = String(blueColorSlider.value)
    }

    @IBAction func redColorAddingSlider() {
        redColorValueLabel.text = String(format: "%.2f", redColorSlider.value)
        
        mainViewColorAdding()

    }
    
    @IBAction func greenColorAddingSlider() {
        greenColorValueLabel.text = String(format: "%.2f", greenColorSlider.value)
        
        mainViewColorAdding()

    }
    
    @IBAction func blueColorAddingSlider() {
        blueColorValueLabel.text = String(format: "%.2f", blueColorSlider.value)
        
        mainViewColorAdding()
    }
    
    private func mainViewColorAdding() {
        mainColorView.backgroundColor = UIColor(
            red: CGFloat(redColorSlider.value),
            green: CGFloat(greenColorSlider.value),
            blue: CGFloat(blueColorSlider.value),
            alpha: 1)
    }
    
}


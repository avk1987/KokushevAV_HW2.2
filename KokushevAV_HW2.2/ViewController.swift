//
//  ViewController.swift
//  KokushevAV_HW2.2
//
//  Created by Александр Кокушев on 27.02.2020.
//  Copyright © 2020 Александр Кокушев. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet var redSlider: UISlider!
    @IBOutlet var greenSlider: UISlider!
    @IBOutlet var blueSlider: UISlider!
    
    @IBOutlet var redValue: UILabel!
    @IBOutlet var greenValue: UILabel!
    @IBOutlet var blueValue: UILabel!
    
    @IBOutlet var colorView: UIView!
    
    // viewdidload не нужна, убрал
    
    @IBAction func SliderBeenMoved(_ sender: UISlider) {

        changeColorAndValue(sender: sender)
        
    }

}

// MARK: Change color in view
extension ViewController {
    
    func changeColorAndValue(sender: UISlider) {
        
        switch sender {
        case redSlider:
            redValue.text = String(format: "%.2f", sender.value)
        case greenSlider:
            greenValue.text = String(format: "%.2f", sender.value)
        case blueSlider:
            blueValue.text = String(format: "%.2f", sender.value)
        default:
            break
        }
         
        // FIXME: Найти способ сделать более элегантно
        // не нашел способ исправить только один канал цвета, пришлось брать все цвета из лейбла и применять их к вьюхе.
        let redColor = CGFloat(Double(redValue.text ?? "0") ?? 0)
        let greenColor = CGFloat(Double(greenValue.text ?? "0") ?? 0)
        let blueColor = CGFloat(Double(blueValue.text ?? "0") ?? 0)
        let alphaDefault = CGFloat(1.0)
        
        colorView.backgroundColor = UIColor(red: redColor,
                                            green: greenColor,
                                            blue: blueColor,
                                            alpha: alphaDefault)
    }
    
}

//
//  ViewController.swift
//  KokushevAV_HW2.2
//
//  Created by Александр Кокушев on 27.02.2020.
//  Copyright © 2020 Александр Кокушев. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var redValue: UILabel!
    @IBOutlet var greenValue: UILabel!
    @IBOutlet var blueValue: UILabel!
    @IBOutlet var colorView: UIView!
    
    // viewdidload не нужна, убрал
    
    @IBAction func sliderMoved(_ sender: UISlider, forEvent event: UIEvent) { // убрать uievent
        changeColorAndValue(colorTag: sender.tag, and: sender.value)
    }
    
    
    

}

extension ViewController {

    func changeColorAndValue(colorTag: Int, and value: Float) {
      
        switch colorTag {
        case 0:
            redValue.text = String(format: "%.2f", value)
        case 1:
            greenValue.text = String(format: "%.2f", value)
        case 2:
            blueValue.text = String(format: "%.2f", value)
        default:
            break
        }
        
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

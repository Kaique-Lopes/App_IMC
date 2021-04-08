//
//  ViewController.swift
//  App_IMC
//
//  Created by Kaique Lopes on 07/04/21.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var tfWeight: UITextField!
    @IBOutlet weak var tfHeight: UITextField!
    @IBOutlet weak var lbResult: UILabel!
    @IBOutlet weak var ivResult: UIImageView!
    @IBOutlet weak var viResult: UIView!
    
    var imc: Double = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func calculate(_ sender: Any) {
        if let weight = Double(tfWeight.text!),
           let height = Double(tfHeight.text!) {
            imc = weight / (height * height)
            resultFinal()
        }
    }
    func resultFinal() {
        var result: String = ""
        var image: String = ""
        
        switch imc {
            case 0..<16:
                result = "Magro"
                image = "abaixo"
            case 16..<18.5:
                result = "Abaixo do Peso"
                image = "abaixo"
            case 18.5..<25:
                result = "Obesidade"
                image = "obesidade"
            case 25..<30:
                result = "Sobrepeso"
                image = "sobre"
            default:
                result = "Obesidade"
                image = "obesidade"
        }
        lbResult.text = result
        ivResult.image = UIImage(named: image)
        viResult.isHidden = false
    }

}


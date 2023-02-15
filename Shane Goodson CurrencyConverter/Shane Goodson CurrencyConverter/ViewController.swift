//
//  ViewController.swift
//  Shane Goodson CurrencyConverter
//
//  Created by user231162 on 2/12/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var input: UITextField!
    
    let poundConvert : Double = 0.82
    let markConvert : Double = 1.83191
    let yenConvert : Double = 133.03
    let argConvert : Double = 192.00
    
    @IBOutlet weak var british: UISwitch!
    @IBOutlet weak var argentina: UISwitch!
    @IBOutlet weak var japan: UISwitch!
    @IBOutlet weak var german: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func button(_ sender: UIButton) {
        performSegue(withIdentifier: "next", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if (segue.identifier == "next") {
            let nextStoryboard = segue.destination as? SecondView
            let value = Double(input.text!)
            
            if (british.isOn) {
                nextStoryboard?.bl = "USD to British Pounds:"
                nextStoryboard?.blv = String(format: "%.1f", (value ?? 1.00) * poundConvert)
            }
            else {
                nextStoryboard?.bl = ""
                nextStoryboard?.blv = ""
            }

            if (german.isOn) {
                nextStoryboard?.gl = "USD to Deustche mark:"
                nextStoryboard?.glv = String(format: "%.1f", (value ?? 1.00) * markConvert)
            }
            else {
                nextStoryboard?.gl = ""
                nextStoryboard?.glv = ""
            }

            if (japan.isOn) {
                nextStoryboard?.jl = "USD to Japanese Yen:"
                nextStoryboard?.jlv = String(format: "%.1f", (value ?? 1.00) * yenConvert)
            }
            else {
                nextStoryboard?.jl = ""
                nextStoryboard?.jlv = ""
            }
            
            if (argentina.isOn) {
                nextStoryboard?.al = "USD to Argentine Peso:"
                nextStoryboard?.alv = String(format: "%.1f", (value ?? 1.00) * argConvert)
            }
            else {
                nextStoryboard?.al = ""
                nextStoryboard?.alv = ""
            }
        }
    }
}


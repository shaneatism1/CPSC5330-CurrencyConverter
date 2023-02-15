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
    
    var b : Bool = true
    var g : Bool = true
    var y : Bool = true
    var a : Bool = true
    
    @IBAction func british(_ sender: UISwitch) {
        if (sender.isOn == true){
            b = true
        }
        else{
            b = false
        }
    }
    
    @IBAction func german(_ sender: UISwitch) {
        if (sender.isOn == true){
            g = true
        }
        else{
            g = false
        }
    }
    
    @IBAction func japan(_ sender: UISwitch) {
        if (sender.isOn == true){
            y = true
        }
        else{
            y = false
        }
    }
    
    @IBAction func argentina(_ sender: UISwitch) {
        if (sender.isOn == true){
            a = true
        }
        else{
            a = false
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func button(_ sender: UIButton) {
        performSegue(withIdentifier: "next", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if (segue.identifier == "next") {
            let nextStoryboard = segue.destination as? SecondView
            
            if (b) {
                let value = Double(input.text!)
                nextStoryboard?.bl = "USD to British Pounds:"
                nextStoryboard?.blv = String(format: "%.1f", (value ?? 1.00) * poundConvert)
            }
            else {
                nextStoryboard?.bl = ""
                nextStoryboard?.blv = ""
            }

            if (g) {
                let value = Double(input.text!)
                nextStoryboard?.gl = "USD to Deustche mark:"
                nextStoryboard?.glv = String(format: "%.1f", (value ?? 1.00) * markConvert)
            }
            else {
                nextStoryboard?.gl = ""
                nextStoryboard?.glv = ""
            }

            if (y) {
                let value = Double(input.text!)
                nextStoryboard?.jl = "USD to Japanese Yen:"
                nextStoryboard?.jlv = String(format: "%.1f", (value ?? 1.00) * yenConvert)
            }
            else {
                nextStoryboard?.jl = ""
                nextStoryboard?.jlv = ""
            }
            
            if (a) {
                let value = Double(input.text!)
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


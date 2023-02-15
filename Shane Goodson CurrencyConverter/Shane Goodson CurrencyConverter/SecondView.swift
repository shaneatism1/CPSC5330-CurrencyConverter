//
//  SecondView.swift
//  Shane Goodson CurrencyConverter
//
//  Created by user231162 on 2/14/23.
//

import UIKit

class SecondView: UIViewController {

    @IBOutlet weak var britishLabelValue: UILabel!
    @IBOutlet weak var britishLabel: UILabel!
    
    @IBOutlet weak var germanLabel: UILabel!
    @IBOutlet weak var germanLabelValue: UILabel!
    
    @IBOutlet weak var japanLabel: UILabel!
    @IBOutlet weak var japanLabelValue: UILabel!
    
    @IBOutlet weak var argentineLabel: UILabel!
    @IBOutlet weak var argentineLabelValue: UILabel!
    
    var bl : String = ""
    var gl : String = ""
    var jl : String = ""
    var al : String = ""
    
    var blv : String = ""
    var glv : String = ""
    var jlv : String = ""
    var alv : String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        britishLabel.text = bl
        germanLabel.text = gl
        japanLabel.text = jl
        argentineLabel.text = al
        
        britishLabelValue.text = blv
        germanLabelValue.text = glv
        japanLabelValue.text = jlv
        argentineLabelValue.text = alv
    }
    

    

}

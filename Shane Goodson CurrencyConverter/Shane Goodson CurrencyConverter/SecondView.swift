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
        britishLabel.numberOfLines = 0
        britishLabel.lineBreakMode = NSLineBreakMode.byWordWrapping
        
        germanLabel.text = gl
        germanLabel.numberOfLines = 0
        germanLabel.lineBreakMode = NSLineBreakMode.byWordWrapping
        
        japanLabel.text = jl
        japanLabel.numberOfLines = 0
        japanLabel.lineBreakMode = NSLineBreakMode.byWordWrapping
        
        argentineLabel.text = al
        argentineLabel.numberOfLines = 0
        argentineLabel.lineBreakMode = NSLineBreakMode.byWordWrapping
        
        britishLabelValue.text = blv
        britishLabelValue.numberOfLines = 0
        britishLabelValue.lineBreakMode = NSLineBreakMode.byWordWrapping
        
        germanLabelValue.text = glv
        germanLabelValue.numberOfLines = 0
        germanLabelValue.lineBreakMode = NSLineBreakMode.byWordWrapping
        
        japanLabelValue.text = jlv
        japanLabelValue.numberOfLines = 0
        japanLabelValue.lineBreakMode = NSLineBreakMode.byWordWrapping
        
        argentineLabelValue.text = alv
        argentineLabelValue.numberOfLines = 0
        argentineLabelValue.lineBreakMode = NSLineBreakMode.byWordWrapping
    }
    

    

}

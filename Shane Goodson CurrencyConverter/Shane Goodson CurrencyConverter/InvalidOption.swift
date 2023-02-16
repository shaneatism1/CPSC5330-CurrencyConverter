//
//  InvalidOption.swift
//  Shane Goodson CurrencyConverter
//
//  Created by user231162 on 2/15/23.
//

import UIKit

class InvalidOption: UIViewController {

    @IBOutlet weak var text: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        text.text = "you entered an invalid option"
        text.numberOfLines = 0
        text.lineBreakMode = NSLineBreakMode.byWordWrapping
    }
}

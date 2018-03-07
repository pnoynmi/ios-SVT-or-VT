//
//  BrugadaAlgorithmViewController.swift
//  Is it VT or SVT
//
//  Created by Abraham Salacata on 3/25/17.
//  Copyright © 2017 Abraham Salacata. All rights reserved.
//

import UIKit

class BrugadaAlgorithmViewController: UIViewController {

    
    @IBOutlet weak var BrugadaIntroLabel: UILabel!
    
    
    @IBAction func cancelToPlayersViewController(_ segue:UIStoryboardSegue) {
    }
    
    let BrugadaIntroString = NSMutableAttributedString(string: "First described in 1991, the Brugada algorithm is one of the first and most widely known approaches to analyzing wide compex tachycardias." + "\r\n" + "In the original paper, the algorithm had a sensitivity and specificity of 98.7% and 96.5% respectively (1% of VT and 5% of SVT were misclassified)." + "\r\n" + "It utilizes a stepwise approach, with the diagnosis of ventricular tachycardia (VT) being made when a criterion is met. The diagnosis of SVT with aberrancy is made by exclusion of VT." + "\r\n" + "The 4 steps include:")
    
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        BrugadaIntroString.addAttribute(NSAttributedStringKey.paragraphStyle, value: StandardParagraphStyle, range: NSRange(location: 0, length: BrugadaIntroString.length))
        
        
        BrugadaIntroLabel.attributedText = BrugadaIntroString
       
        
        BrugadaIntroLabel.sizeToFit()
        
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }

}

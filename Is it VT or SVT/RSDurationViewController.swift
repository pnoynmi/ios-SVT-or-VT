//
//  RSDurationViewController.swift
//  Is it VT or SVT
//
//  Created by Abraham Salacata on 4/2/17.
//  Copyright © 2017 Abraham Salacata. All rights reserved.
//

import UIKit

class RSDurationViewController: UIViewController {

    @IBOutlet weak var RSDurationLabel: UILabel!
   
    let RSDurationExplanationText = NSMutableAttributedString(string:"The RS interval is measured from the onset of the R wave to the deepest part of the S, irrespective of the morphology of the tachycardia. If an RS complex is present in more than one precordial lead, the longest RS interval in any precordial lead was measured. In the original paper, an RS interval longer than 100 msec was not observed in any SVT with aberrant conduction and was therefore 100% specific for the diagnosis of VT.")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        RSDurationExplanationText.addAttribute(NSParagraphStyleAttributeName, value: StandardParagraphStyle, range: NSRange(location: 0, length: RSDurationExplanationText.length))
        
         RSDurationLabel.sizeToFit()
        
        RSDurationLabel.attributedText  = RSDurationExplanationText
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
        
    }
    

}

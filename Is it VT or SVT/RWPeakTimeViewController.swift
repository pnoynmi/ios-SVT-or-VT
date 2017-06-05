//
//  RWPeakTimeViewController.swift
//  Is it VT or SVT
//
//  Created by Abraham Salacata on 4/16/17.
//  Copyright © 2017 Abraham Salacata. All rights reserved.
//

import UIKit

class RWPeakTimeViewController: UIViewController {
    
    
    @IBOutlet weak var RSDurationExplanationLabel: UILabel!
    
    
    let RWavePeakTimeText = NSMutableAttributedString (string: "R wave peak time in lead II (RWPT), defined as the QRS duration from the isoelectric line to its first deflection (either positive as in A or negative in B), is significantly wider in patients with VT than in those with SVT. This difference is related to the different conduction velocities that occur in SVTs (using the fast conducting His–Purkinje system) compared to VTs (using the myocardium itself). An RWPT > 50 ms had a sensitivity of 93%, specificity of 99% and a positive predictive value of 98%.")
    

    override func viewDidLoad() {
        super.viewDidLoad()

        
        RSDurationExplanationLabel.sizeToFit()
        
        
        RWavePeakTimeText.addAttribute(NSParagraphStyleAttributeName, value: StandardParagraphStyle, range: NSRange(location: 0, length: RWavePeakTimeText.length)
        )
        
       
        RSDurationExplanationLabel.attributedText = RWavePeakTimeText
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

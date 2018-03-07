//
//  QRSMorphologyViewController.swift
//  Is it VT or SVT
//
//  Created by Abraham Salacata on 4/8/17.
//  Copyright © 2017 Abraham Salacata. All rights reserved.
//

import UIKit

class QRSMorphologyViewController: UIViewController {

    
    @IBOutlet weak var BrugadaQRSMorphologyIntroLabel: UILabel!
    
    @IBOutlet weak var BrugadaQRSMorhologyExplanation: UILabel!
    
    let BrugadaQRSIntroMutableString = NSMutableAttributedString(string: "If a diagnosis of VT is not made after the first three steps, the QRS morphology is analyzed in leads V1, V2 and V6. If both leads have morphology compatible with the VT, the diagnosis of VT is made. SVT is diagnosed by exclusion.")
    
    let BrugadaQRSExplMutableString = NSMutableAttributedString(string: "With a LBBB like QRS, an R wave > 30 milliseconds in durationin or > 60 ms to the nadir of the S wave or a notched S wave in V1 or V2 along with a QS or QR complex in V6 favor a diagnosis of VT. A monophasic R in V6 favors the diagnosis of an SVT (see panel)." + "\r\n" + "With a RBBB like QRS, a monophasic R in V1 along with a QRS R/S ratio < 1 or a monophasic R wave or a QS or QR complex in V6 favor a diagnosis of VT. A triphasic QRS in V1 and a triphasic QRS or QRS with an R/S ratio > 1 in V6 favor the diagnosis of an SVT (see panel).")
    
    override func viewDidLoad() {
        super.viewDidLoad()

        BrugadaQRSIntroMutableString.addAttribute(NSAttributedStringKey.paragraphStyle, value: StandardParagraphStyle, range: NSRange(location: 0, length: BrugadaQRSIntroMutableString.length))
        BrugadaQRSExplMutableString.addAttribute(NSAttributedStringKey.paragraphStyle, value: StandardParagraphStyle, range: NSRange(location: 0, length: BrugadaQRSExplMutableString.length))
        
        BrugadaQRSMorphologyIntroLabel.sizeToFit()
        
        BrugadaQRSMorphologyIntroLabel.attributedText = BrugadaQRSIntroMutableString
        
        BrugadaQRSMorhologyExplanation.attributedText = BrugadaQRSExplMutableString
        
        BrugadaQRSMorhologyExplanation.sizeToFit()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }

    
}

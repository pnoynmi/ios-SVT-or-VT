//
//  AVDissociationViewController.swift
//  Is it VT or SVT
//
//  Created by Abraham Salacata on 4/2/17.
//  Copyright © 2017 Abraham Salacata. All rights reserved.
//

import UIKit

class AVDissociationViewController: UIViewController {

    
    @IBOutlet weak var AVDissociationExplnLabel: UILabel!
    
    
    
   let AVDissociationMutableString = NSMutableAttributedString (string: "With AV or atrioventricular dissociation, the atria and ventricles are activated independently. Identification requires careful examination of the QRS complexes, as the P waves may be difficult to see (panel A and B). At times it may be buried or cause slight deformation of the T wave (second arrow panel A and B) or QRS complex (third arrow panel B). When the atrial rate is the same as the ventricular rate but the P wave is not conducting, the rhythm disturbance is known as isorhythmic AV dissociation. The term complete heart block is used where the atrial rate is greater than the ventricular rate.  AV dissociation can be a benign phenomenon.")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        AVDissociationMutableString.addAttribute(NSParagraphStyleAttributeName, value: StandardParagraphStyle, range: NSRange(location: 0, length: AVDissociationMutableString.length))
        AVDissociationExplnLabel.sizeToFit()
        AVDissociationExplnLabel.attributedText = AVDissociationMutableString
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }

}

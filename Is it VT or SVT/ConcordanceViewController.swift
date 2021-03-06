//
//  ConcordanceViewController.swift
//  Is it VT or SVT
//
//  Created by Abraham Salacata on 4/2/17.
//  Copyright © 2017 Abraham Salacata. All rights reserved.
//

import UIKit

class ConcordanceViewController: UIViewController {
    
    @IBOutlet weak var ConcordanceExplanationLabel: UILabel!
    let ConcordanceExplanation = NSMutableAttributedString(string: "The absence of an RS complex in the precordial leads (V1 - V6) is suggestive of VT. This is illustrated in actual ECG tracings below. In panel A all the complexes are a monophasic R (also called positive concordance); in panel B all the complexes are a monophasic QS (also called negative concordance). In panel C the complexes are a monophasic R in V1 - V5 and QS in lead V6, and not diagnostic of VT. Only the presence of a measurable RS complex or its absence in the precordial leads is helpful.")

    override func viewDidLoad() {
        super.viewDidLoad()

        ConcordanceExplanation.addAttribute(NSAttributedStringKey.paragraphStyle, value: StandardParagraphStyle, range: NSRange(location: 0, length: ConcordanceExplanation.length))
        
        ConcordanceExplanationLabel.sizeToFit()
        
        ConcordanceExplanationLabel.attributedText = ConcordanceExplanation
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    

}

//
//  DiagnosticAlgorithmTableViewController.swift
//  Is it VT or SVT
//
//  Created by Abraham Salacata on 3/25/17.
//  Copyright © 2017 Abraham Salacata. All rights reserved.
//

import UIKit

class DiagnosticAlgorithmTableViewController: UITableViewController {
   
    @IBOutlet weak var DiagnosticAlgorithmExplanationLabel: UILabel!
    
    @IBOutlet weak var BrugadaButton: UIButton!
    
    
    @IBOutlet weak var ACCButton: UIButton!
    
    var DiagnosticAlgorithmsIntroTxt = "The following algorithms can be used to differentiate an SVT with aberrancy from ventricular tachycardia:"
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        let DiagnosticAlgorithmIntroTxtMutableString = NSMutableAttributedString(string: DiagnosticAlgorithmsIntroTxt)
        
        DiagnosticAlgorithmIntroTxtMutableString.addAttribute(NSParagraphStyleAttributeName, value: StandardParagraphStyle, range: NSRange(location: 0, length: DiagnosticAlgorithmIntroTxtMutableString.length))
        DiagnosticAlgorithmExplanationLabel.attributedText = DiagnosticAlgorithmIntroTxtMutableString
    
    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }


    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        // #warning Incomplete implementation, return the number of rows
        return 4
        
    }
    

}

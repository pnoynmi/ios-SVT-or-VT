//
//  ACCAlgorithm TableViewController.swift
//  Is it VT or SVT
//
//  Created by Abraham Salacata on 4/20/17.
//  Copyright © 2017 Abraham Salacata. All rights reserved.
//

import UIKit

class ACCAlgorithm_TableViewController: UITableViewController {
    
    
    @IBAction func cancelToPlayersViewController(_ segue:UIStoryboardSegue) {
    }
    
    
    @IBOutlet weak var ACCIntroLabel: UILabel!
    
    
    @IBOutlet weak var ACCIrreg: UILabel!
    
    
    @IBOutlet weak var Cell1: UIView!
   
   
    @IBOutlet weak var Cell4: UITableViewCell!
    
    
    
    
    
    let ACCIntroTxtMutableString = NSMutableAttributedString(string: "This algorithm which was published as part of the American College of Cardiology's document on the diagnosis and management of supraventricular tachycardia and incorporates features from other algorithms." + "\r\n" + "The first question in a patient with a tachycardia with a wide QRS (duration >120 ms): is the rhythm regular or irregular?")
    
    
    let ACCIrregTxtMutableString = NSMutableAttributedString(string: "The rhythm is probably atrial fibrillation or atrial flutter/atrial tachycardia with variable conduction and an underlying bundle branch block or antegrade conduction over an accessory pathway.")
    
    
    var ACCIntroduction: CGFloat = 140
    
    
    var Cell4Height: CGFloat = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        ACCIntroTxtMutableString.addAttribute(NSAttributedStringKey.paragraphStyle, value: StandardParagraphStyle, range: NSRange(location: 0, length: ACCIntroTxtMutableString.length))
        
        ACCIrregTxtMutableString.addAttribute(NSAttributedStringKey.paragraphStyle, value: StandardParagraphStyle, range: NSRange(location:0, length:ACCIrregTxtMutableString.length))
        
        
        ACCIntroLabel.attributedText = ACCIntroTxtMutableString

        
        ACCIrreg.attributedText = ACCIrregTxtMutableString
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }


    override func numberOfSections(in tableView: UITableView) -> Int {

        return 1
    
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return 4
        
    }


    override func tableView(_ tableView: UITableView, estimatedHeightForRowAt indexPath: IndexPath) -> CGFloat {
        
        return UITableViewAutomaticDimension
        
    }
    
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        if indexPath.row == 3 {
            return Cell4Height
        }

        return UITableViewAutomaticDimension
        
    }// The above code rewrites the height of the cell. The height is encoded as a var that is then called and implemented during reload
    
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath)
    {
        if indexPath.row == 2 && Cell4Height == 0 {
            
            Cell4Height = UITableViewAutomaticDimension
            
        }
            
        else if indexPath.row == 2 && Cell4Height == UITableViewAutomaticDimension {
            
            Cell4Height = 0
        }
        
        
        self.tableView.reloadRows(at: [], with:
            UITableViewRowAnimation.automatic)
     
        
    }

}

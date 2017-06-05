//
//  ACCRegularTableViewController.swift
//  Is it VT or SVT
//
//  Created by Abraham Salacata on 4/22/17.
//  Copyright © 2017 Abraham Salacata. All rights reserved.
//

import UIKit

class ACCRegularTableViewController: UITableViewController {
    
    
    @IBOutlet weak var ACCRegularIntro: UILabel!
    
    
    @IBOutlet weak var ACCVT: UILabel!
        
    
    @IBOutlet weak var ACCRegIntro: UITableViewCell!
    
    
    let ACCRegularIntroTxtMutableString = NSMutableAttributedString(string:"If the QRS complexes are identical to those in sinus rhythm then the rhythm is probably an SVT with an underlying bundle branch block or an AVRT (antidromic AV nodal reciprocating tachycardia)." + "\r\n" + "If QRS complexes are different and the patient has a history of a previous myocardial infarction, then the rhythm is probably VT." + "\r\n" + "If uncertain try vagal maneuvers or i.v. adenosine: Is there 1:1 conduction?")
    
    
    let ACCVTxtMutableString = NSMutableAttributedString(string: "If the ventricular rate is greater than the atrial rate the rhythm is probably ventricular tachycardia. If the atrial rate is greater than the ventricular rate the rhythm is likely to be atrial flutter or an atrial tachycardia.")
    
    
    var Cell4Height: CGFloat = 0
    
    
    var Cell1to1Height: CGFloat = 21
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        ACCRegularIntroTxtMutableString.addAttribute(NSParagraphStyleAttributeName, value: StandardParagraphStyle, range: NSRange(location: 0, length: ACCRegularIntroTxtMutableString.length))
        
      ACCVTxtMutableString.addAttribute(NSParagraphStyleAttributeName, value: StandardParagraphStyle, range: NSRange(location: 0, length: ACCVTxtMutableString.length))
        
        ACCRegularIntro.attributedText = ACCRegularIntroTxtMutableString
        
        ACCVT.attributedText =
ACCVTxtMutableString
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
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
        
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath)
    {
        if indexPath.row == 2 && Cell4Height == 0 {
            Cell4Height = UITableViewAutomaticDimension
            
        }
            
        else if indexPath.row == 2 && Cell4Height == UITableViewAutomaticDimension {
            
            Cell4Height = 0
        }
        
        
        print(ACCRegIntro.bounds.size.height)
        
    
        print(ACCVT.bounds.size.height)
        
        print(ACCVT.bounds.size.width)
        
        
        print(ACCRegularIntro.bounds.size.height)
        
        
        print(ACCRegularIntro.bounds.size.width)
        
        
        self.tableView.reloadRows(at: [], with:
        UITableViewRowAnimation.automatic)
        
    }
}

//
//  VTSVTTableViewController.swift
//  Is it VT or SVT
//
//  Created by Abraham Salacata on 4/30/17.
//  Copyright © 2017 Abraham Salacata. All rights reserved.
//

import UIKit

class VTSVTTableViewController: UITableViewController {
    
    
    
    @IBOutlet weak var MorphologyIntroLabel: UILabel!
    
    
    @IBOutlet weak var SVTRBBBLabel: UILabel!
    
    
    @IBOutlet weak var SVTLBBBLabel: UILabel!
    
    
    @IBOutlet weak var ACCConcordExpl: UILabel!
    
    
    @IBOutlet weak var ACCRSIntervalLabel: UILabel!
    

    @IBOutlet weak var VTLBBB: UILabel!
    

    @IBOutlet weak var VTRBBBLabel: UILabel!
    
    
    let accconcordanceexplanationtextMutableString = NSMutableAttributedString(string:"If there is a 1:1 AV relationship or if the relationship is unknown, analyze the QRS morphology in the precordial leads.")
    
    
    let accsvtrbbbmorphologytextMutableString = NSMutableAttributedString(string: "For a RBBB the diagnostic criteria are an rSR' wave in lead V1 and an RS wave in lead V6, with R wave height greater than S wave depth.")
    
    
    let accsvtlbbbmorphologytextMutableString = NSMutableAttributedString(string:"For a LBBB the diagnostic criteria are:" + "\r\n" + "\u{2022}" + " " + "rS (A) or QS (B) wave in leads V1 and V2" + "\r\n" + "\u{2022}" + " " + "delay to S wave nadir < 70 ms, (red arrow)" + "\r\n" + "\u{2022}" + " " + "R wave and no Q wave in lead V6 (C)")
    
    
    let accconcordanceexplanationMutableString = NSMutableAttributedString(string:"The absence of an RS complex in the precordial leads (V1 -V6). In panel A all the complexes are a monophasic R (positive concordance); in panel B all the complexes are a monophasic QS (negative concordance). In panel C the complexes are monophasic R in V1 - V5 and QS in lead V6, and not consistent with VT.")
    
    
    let accrsintervalexplanationtxttextMutableString = NSMutableAttributedString(string: "The RS interval is measured from the onset of the R wave to the deepest part of the S wave, irrespective of the morphology of the tachycardia. When an RS complex was present in more than one precordial lead, the longest RS interval in any precordial lead was measured.")
    
    
    let acclbbbtxtMutableString = NSMutableAttributedString(string: "An R wave > 30 milliseconds in duration (A) or an R to the nadir of the S wave duration of > 60 ms (B) V1 or a qS (C) or qR (D) complex in V6 favor a diagnosis of VT.")
    
    
    let accrbbbtxtMutableString = NSMutableAttributedString(string: "With a RBBB like QRS, an Rr' (A), qR (B) or Rs (C) pattern in V1 and a frontal plane axis of -90 to +90 degrees.")
    
    
    var SVTCellHeight: CGFloat = 0
    
    
    var VTCellHeight: CGFloat = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        accconcordanceexplanationtextMutableString.addAttribute(NSAttributedStringKey.paragraphStyle, value: StandardParagraphStyle, range: NSRange(location: 0, length: accconcordanceexplanationtextMutableString.length))
        
        accsvtrbbbmorphologytextMutableString.addAttribute(NSAttributedStringKey.paragraphStyle, value: StandardParagraphStyle, range: NSRange(location: 0, length: accsvtrbbbmorphologytextMutableString.length))
        
        
        let BulletStyle = NSMutableParagraphStyle() /* Creates paraStyle that defines the paragraph */
        
        BulletStyle.firstLineHeadIndent = 10
        
        BulletStyle.headIndent = 17
        
        BulletStyle.alignment = NSTextAlignment.left
        
        accsvtlbbbmorphologytextMutableString.addAttribute(NSAttributedStringKey.paragraphStyle, value: BulletStyle, range: NSRange(location: 0, length: accsvtlbbbmorphologytextMutableString.length))
        
        accconcordanceexplanationMutableString.addAttribute(NSAttributedStringKey.paragraphStyle, value: StandardParagraphStyle, range: NSRange(location: 0, length: accconcordanceexplanationMutableString.length))
        
        accrsintervalexplanationtxttextMutableString.addAttribute(NSAttributedStringKey.paragraphStyle, value: StandardParagraphStyle, range: NSRange(location: 0, length: accrsintervalexplanationtxttextMutableString.length))
        
        acclbbbtxtMutableString.addAttribute(NSAttributedStringKey.paragraphStyle, value: StandardParagraphStyle, range: NSRange(location: 0, length: acclbbbtxtMutableString.length))
        
        accrbbbtxtMutableString.addAttribute(NSAttributedStringKey.paragraphStyle, value: StandardParagraphStyle, range: NSRange(location: 0, length: accrbbbtxtMutableString.length))
        
        
        MorphologyIntroLabel.attributedText = accconcordanceexplanationtextMutableString
        
        
        SVTRBBBLabel.attributedText = accsvtrbbbmorphologytextMutableString
        
        
        SVTLBBBLabel.attributedText = accsvtlbbbmorphologytextMutableString
        
        
        ACCConcordExpl.attributedText = accconcordanceexplanationMutableString
        
        
        ACCRSIntervalLabel.attributedText = accrsintervalexplanationtxttextMutableString
        
        
        VTLBBB.attributedText = acclbbbtxtMutableString
        
        
        VTRBBBLabel.attributedText = accrbbbtxtMutableString
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 5
    }

    override func tableView(_ tableView: UITableView, estimatedHeightForRowAt indexPath: IndexPath) -> CGFloat {
        
        return UITableViewAutomaticDimension
    
    }
    
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        if indexPath.row == 2 {
            
            return SVTCellHeight
            
        }
        
        else if indexPath.row == 4 {
            
            return VTCellHeight
        }
        
        
        return UITableViewAutomaticDimension
        
    }
    
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath)
    {
        if indexPath.row == 1 && SVTCellHeight == 0 {
            
            SVTCellHeight = UITableViewAutomaticDimension
            
            VTCellHeight = 0
            
        }
            
        else if indexPath.row == 1 && SVTCellHeight == UITableViewAutomaticDimension {
            
            SVTCellHeight = 0
            
            VTCellHeight = 0
        }
        
        else if indexPath.row == 3 && VTCellHeight == 0 {
            
            VTCellHeight = UITableViewAutomaticDimension
            
            SVTCellHeight = 0
            
        }
        
        else if indexPath.row == 3 && VTCellHeight == UITableViewAutomaticDimension{
            
            VTCellHeight = 0
            
            SVTCellHeight = 0
            
        }
        
        self.tableView.reloadRows(at: [], with:
            UITableViewRowAnimation.automatic)
        
        
    }
    
    
}

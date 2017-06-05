//
//  DisclaimerViewController.swift
//  Is it VT or SVT
//
//  Created by Abraham Salacata on 3/24/17.
//  Copyright © 2017 Abraham Salacata. All rights reserved.
//

import UIKit

class DisclaimerViewController: UIViewController {
    
    @IBOutlet weak var DisclaimerLabel: UILabel!
    
    let FinalString = NSMutableAttributedString() /* This creates a string that joins the 2 mutable strings */
    
    let BulletString = NSMutableAttributedString (string: "\n" + "\u{2022}" + "the accuracy and reliability cannot be guaranteed;" + "\n" + "\u{2022}" + "no one approach is foolproof or completely accurate;" + "\n" + "\u{2022}" + "this app should be used only as a guide. Clinicians should use judgement and individualize care for each patient.")
    
    let DisclaimerStringMutableString = NSMutableAttributedString(string: "This app is designed to assist clinicians in evaluating wide complex tachycardias (WCT). Several widely used approaches are gathered in this app. By clicking Agree the user accepts that:") /* Create the text and initialize the variable. \n is the newline character in swift and u{2022} is the unicode for a bullet */

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let paraStyle = NSMutableParagraphStyle() /* Creates paraStyle that defines the paragraph */
        
        paraStyle.firstLineHeadIndent = 10 /* The first line of a paragraph is moved back by the stated number of points */
        
        paraStyle.headIndent = 0 /* The succeeding lines of a paragraph is moved back by the stated number of points. The offset is placed to allign the texts after the text bullet */
        
        paraStyle.alignment = NSTextAlignment.left
        
        let BulletStyle = NSMutableParagraphStyle() /* Creates paraStyle that defines the paragraph */
        
        BulletStyle.firstLineHeadIndent = 20
        
        BulletStyle.headIndent = 27
        
        BulletStyle.alignment = NSTextAlignment.left
        
        DisclaimerStringMutableString.addAttribute(NSParagraphStyleAttributeName, value: paraStyle, range: NSRange(location: 0, length: DisclaimerStringMutableString.length))
        
        BulletString.addAttribute(NSParagraphStyleAttributeName, value: BulletStyle, range: NSRange(location: 0, length: BulletString.length))
        
        FinalString.append(DisclaimerStringMutableString)
        
        FinalString.append(BulletString) /* This append creates a string from 2 mutable strings */
        
        DisclaimerLabel.attributedText = FinalString

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

//
//  PopupViewController.swift
//  VCCustomPopupSample
//
//  Created by Mantosh Kumar on 30/07/24.
//

import UIKit

class PopupViewController: UIViewController {

    @IBOutlet weak var viewHightConst: NSLayoutConstraint!
    @IBOutlet weak var myDataLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()

        // you can change label text based on your requirment
        let stringValue = "Leap running app tracks all key stats, distance, time, speed, calories burned, elevation, Leap running app tracks all key stats, distance, time, speed, calories burned, elevation, Leap running app tracks all key stats, distance, time, speed, calories burned, elevation,"
    
        let font = UIFont(name: "Helvetica", size: 12.0)
        var viewViewHeight = heightForView1(text: stringValue, font: font!, width: myDataLabel.layer.frame.width)
        myDataLabel.text = stringValue
        let totalOtherHeight = 246
        print("viewHeight \(viewViewHeight)")
        viewHightConst.constant = CGFloat(totalOtherHeight) + viewViewHeight
    
    }
    // Option -1
    func heightForView(text: String, font: UIFont, width: CGFloat) -> CGFloat{
        let label: UILabel = UILabel(frame: CGRectMake(0, 0, width, CGFloat.greatestFiniteMagnitude))
        label.numberOfLines = 0
        label.lineBreakMode = NSLineBreakMode.byWordWrapping
        label.font = font
        label.text = text

        label.sizeToFit()
        return label.frame.height
    }
                
    // Option -2
    func heightForView1(text: String, font: UIFont, width: CGFloat) -> CGFloat {
        var currentHeight: CGFloat!
        
        let label = UILabel(frame: CGRect(x: 0, y: 0, width: width, height: CGFloat.greatestFiniteMagnitude))
        label.text = text
        label.font = font
        label.numberOfLines = 0
        label.sizeToFit()
        label.lineBreakMode = .byWordWrapping
        
        currentHeight = label.frame.height
        label.removeFromSuperview()
        return currentHeight
    }
    
    @IBAction func cancelAction(_ sender: Any) {
        self.dismiss(animated: true)
    }
    
}

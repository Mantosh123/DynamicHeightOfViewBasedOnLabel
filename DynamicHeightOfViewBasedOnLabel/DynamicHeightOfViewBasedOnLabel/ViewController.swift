//
//  ViewController.swift
//  DynamicHeightOfViewBasedOnLabel
//
//  Created by Mantosh Kumar on 11/08/24.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func showpopupAction(_ sender: Any) {
        
        let storyboard = UIStoryboard(name: "Main", bundle: .main)
        let vCtr = storyboard.instantiateViewController(withIdentifier: "PopupViewController")
        vCtr.modalPresentationStyle = .overCurrentContext
        present(vCtr, animated: true)
    }
}


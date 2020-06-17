//
//  ViewController.swift
//  CubeTheme
//
//  Created by gg19910817 on 06/17/2020.
//  Copyright (c) 2020 gg19910817. All rights reserved.
//

import UIKit
import CubeTheme

class ColorViewController: UIViewController {
    
    @IBOutlet weak var iButton: UIButton!
    @IBOutlet weak var iView: UIView!
    @IBOutlet weak var iSwitch: UISwitch!
    @IBOutlet weak var headline: UILabel!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var bodyLabel: UILabel!
    @IBOutlet weak var detailLabel: UILabel!
    @IBOutlet weak var TipsLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        iButton.tintColor = Theme.color.primary
        iSwitch.onTintColor = Theme.color.primary
        iSwitch.thumbTintColor = Theme.color.disable
        
        view.backgroundColor = Theme.color.viewController
        
        iView.backgroundColor = Theme.color.input
        
        
        Theme.style(headline, "headline")
        Theme.style(titleLabel, "title")
        Theme.style(bodyLabel, "body")
        Theme.style(detailLabel, "detail")
        Theme.style(TipsLabel, "tips")
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}


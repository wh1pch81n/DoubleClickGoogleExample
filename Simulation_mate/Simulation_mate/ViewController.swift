//
//  ViewController.swift
//  Simulation_mate
//
//  Created by Derrick  Ho on 9/17/16.
//  Copyright © 2016 Derrick  Ho. All rights reserved.
//

import UIKit
import Mate
import DFP
import GoogleMobileAds

class ViewController: UIViewController {

	@IBOutlet weak var bannerView: DFPBannerView!
	
	override func viewDidLoad() {
		super.viewDidLoad()
		// Do any additional setup after loading the view, typically from a nib.
		
		Mate().salute()
		DFP.doit()
		//print(DFPRequest.sdkVersion())
		bannerView.adUnitID = "/6499/example/banner"
		bannerView.rootViewController = self
		bannerView.load(DFPRequest())
	}

	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
		// Dispose of any resources that can be recreated.
	}


}


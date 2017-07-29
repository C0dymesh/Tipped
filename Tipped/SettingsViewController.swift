//
//  SettingsViewController.swift
//  Tipped
//
//  Created by Cody Meshberger on 7/29/17.
//  Copyright © 2017 Cody Meshberger. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {

    @IBOutlet weak var defaultTipControl: UISegmentedControl!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func viewWillAppear(_ animated: Bool) {
        let defaults = UserDefaults.standard
        let tipAmountDefault = defaults.integer(forKey: "DefaultTipAmount")
        defaultTipControl.selectedSegmentIndex = tipAmountDefault
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func defaultTipAmountChanged(_ sender: Any) {
        // Set the default tip amount as a UserDefault value
        let defaults = UserDefaults.standard
        defaults.set(defaultTipControl.selectedSegmentIndex, forKey: "DefaultTipAmount")
        defaults.synchronize()
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

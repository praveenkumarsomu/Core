//
//  ViewController.swift
//  Core
//
//  Created by venp63 on 4/7/20.
//  Copyright © 2020 UOB. All rights reserved.
//

import UIKit
import ModuleA
import ModuleB

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func launchModuleA(_ sender: Any) {
        let storyBoard = UIStoryboard(name: "ModuleAStoryBoard", bundle: Bundle(for: ModuleALandingViewController.classForCoder()))
        if let landingVC = storyBoard.instantiateInitialViewController() {
            self.present(landingVC, animated: true) {
                
            }
        }
    }
    @IBAction func launchModuleB(_ sender: Any) {
        let storyBoard = UIStoryboard(name: "ModuleBStoryBoard", bundle: Bundle(for: ModuleBLandingViewController.classForCoder()))
        if let landingVC = storyBoard.instantiateInitialViewController() {
            self.present(landingVC, animated: true) {
                
            }
        }
    }
    @IBAction func launchModuleBFromA(_ sender: Any) {
        
    }
    @IBAction func launchModuleAFromB(_ sender: Any) {
    }
}


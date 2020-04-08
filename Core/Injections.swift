//
//  Injections.swift
//  Core
//
//  Created by venp63 on 4/8/20.
//  Copyright © 2020 UOB. All rights reserved.
//

import Foundation
import ModuleA
import ModuleB
import Base_Core

class Injections {
    class func writeInjections() {
        container.register(UIViewController.self, name: "ModuleAScreenTwoViewController", factory: { _ in
            let moduleAStoryBoard = UIStoryboard(name: "ModuleAStoryBoard", bundle: Bundle(for: ModuleAScreenOneViewController.classForCoder()))
            return moduleAStoryBoard.instantiateViewController(withIdentifier: "ModuleAScreenTwoViewController")
        })
        container.register(UIViewController.self, name: "ModuleBScreenOneViewController", factory: { _ in
            let moduleAStoryBoard = UIStoryboard(name: "ModuleBStoryBoard", bundle: Bundle(for: ModuleBScreenOneViewController.classForCoder()))
            return moduleAStoryBoard.instantiateViewController(withIdentifier: "ModuleBScreenOneViewController")
        })
    }
}

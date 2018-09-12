//
//  ViewController.swift
//  Carthage Auto Checkout
//
//  Created by Tobias Ottenweller on 11.09.18.
//  Copyright © 2018 Tobias Ottenweller. All rights reserved.
//

import UIKit
import KeychainAccess

class ViewController: UIViewController {

    override func viewDidAppear(_ animated: Bool) {

        super.viewDidAppear(animated)

        let keychain = Keychain()
        keychain["test"] = "value"
        print(keychain["test"] ?? "no value")
    }
}


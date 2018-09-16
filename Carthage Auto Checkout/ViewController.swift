//
//  ViewController.swift
//  Carthage Auto Checkout
//
//  Created by Tobias Ottenweller on 11.09.18.
//  Copyright © 2018 Tobias Ottenweller. All rights reserved.
//

import UIKit
import KeychainAccess
import Result

class ViewController: UIViewController {

    override func viewDidAppear(_ animated: Bool) {

        super.viewDidAppear(animated)

        let keychain = Keychain()
        keychain["test"] = "value"
        print(keychain["test"] ?? "no value in keychain")

        let result = Result<Int, NSError>(value: 0)
        print(result.value ?? "no value in result")
    }
}


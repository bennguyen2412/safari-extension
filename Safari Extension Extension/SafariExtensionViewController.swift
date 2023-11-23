//
//  SafariExtensionViewController.swift
//  Safari Extension Extension
//
//  Created by tsnanh on 23/11/2023.
//

import SafariServices

class SafariExtensionViewController: SFSafariExtensionViewController {
    
    static let shared: SafariExtensionViewController = {
        let shared = SafariExtensionViewController()
        shared.preferredContentSize = NSSize(width:320, height:240)
        return shared
    }()

}

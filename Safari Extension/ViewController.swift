//
//  ViewController.swift
//  Safari Extension
//
//  Created by tsnanh on 23/11/2023.
//

import Cocoa
import SafariServices
import WebKit
import SwiftUI

let extensionBundleIdentifier = "dev.tsnanh.Safari-Extension.Extension"

class ViewController: NSViewController, WKNavigationDelegate, WKScriptMessageHandler {
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    let myView = NSHostingView(rootView: MainView())
    myView.translatesAutoresizingMaskIntoConstraints = false
    
    self.view.addSubview(myView)
    NSLayoutConstraint.activate([
      myView.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 0),
      myView.bottomAnchor.constraint(equalTo: self.view.bottomAnchor, constant: 0),
      myView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 0),
      myView.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: 0),
    ])
  }
  
  func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
    SFSafariExtensionManager.getStateOfSafariExtension(withIdentifier: extensionBundleIdentifier) { (state, error) in
      guard let state = state, error == nil else {
        // Insert code to inform the user that something went wrong.
        return
      }
      
      DispatchQueue.main.async {
        if #available(macOS 13, *) {
          webView.evaluateJavaScript("show(\(state.isEnabled), true)")
        } else {
          webView.evaluateJavaScript("show(\(state.isEnabled), false)")
        }
      }
    }
  }
  
  func userContentController(_ userContentController: WKUserContentController, didReceive message: WKScriptMessage) {
    if (message.body as! String != "open-preferences") {
      return;
    }
    
    SFSafariApplication.showPreferencesForExtension(withIdentifier: extensionBundleIdentifier) { error in
      DispatchQueue.main.async {
        NSApplication.shared.terminate(nil)
      }
    }
  }
  
}

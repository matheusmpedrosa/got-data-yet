//
//  ViewController.swift
//  got data yet
//
//  Created by Matheus Pedrosa on 24/05/21.
//

import UIKit
import Reachability

class ViewController: BaseViewController {

    let reachability = try! Reachability()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureView()
        checkConnection()
    }
    
    private func checkConnection() {
        switch reachability.connection {
        case .cellular:
            print("celullar")
        case .wifi:
            print("wifi")
        default:
            print("unavailable")
        }
    }

}

extension ViewController: ViewConfiguration {
    func buildViewHierarchy() {
        
    }
    
    func setupConstraints() {
        
    }
    
    func updateLayoutConstraints() {
        
    }
}


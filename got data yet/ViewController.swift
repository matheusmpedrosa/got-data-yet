//
//  ViewController.swift
//  got data yet
//
//  Created by Matheus Pedrosa on 24/05/21.
//

import UIKit
import Reachability

class ViewController: BaseViewController {

    var timer: Timer!
    var time: Int = 0
    let reachability = try! Reachability()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureView()
        startTimer()
    }
    
    private func startTimer() {
        timer = Timer.scheduledTimer(timeInterval: 5, target: self, selector: #selector(checkConnection), userInfo: nil, repeats: true)
        timer.tolerance = 1
        RunLoop.current.add(timer, forMode: .common)
    }
    
    @objc private func checkConnection() {
        time += 5
        switch reachability.connection {
        case .cellular:
            print("celullar \(time)")
        case .wifi:
            print("wifi \(time)")
        default:
            print("unavailable \(time)")
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


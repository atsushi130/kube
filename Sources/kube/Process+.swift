//
//  Process+.swift
//  kube
//
//  Created by Atsushi Miyake on 2018/07/31.
//

import Foundation

extension Process {
    
    static func make(script: String) -> Process {
        let process = Process()
        process.launchPath = "/bin/sh"
        process.arguments = ["-c", script]
        return process
    }
    
    func launchWithWaitUntilExit() {
        self.launch()
        self.waitUntilExit()
    }
}

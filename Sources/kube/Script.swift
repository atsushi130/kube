//
//  Script.swift
//  kube
//
//  Created by Atsushi Miyake on 2018/07/28.
//

import Foundation

struct Script {
    
    fileprivate let script: String
    
    init(_ script: String) {
        self.script = script
    }
    
    func exec() {
        Process.launchedProcess(launchPath: "/bin/sh", arguments: ["-c", self.script]).waitUntilExit()
    }
}

infix operator |
func | (lhs: Script, rhs: String) -> Script {
    return Script(lhs.script + "|" + rhs)
}

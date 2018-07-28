//
//  Script.swift
//  kube
//
//  Created by Atsushi Miyake on 2018/07/28.
//

import Foundation

struct Script {
    
    fileprivate let script: String?
    static var builder: Script {
        return Script()
    }
    
    init(_ script: String? = nil) {
        self.script = script
    }
    
    func exec() {
        guard let script = self.script else { return }
        Process.launchedProcess(launchPath: "/bin/sh", arguments: ["-c", script]).waitUntilExit()
    }
}

infix operator |
func | (lhs: Script, rhs: String) -> Script {
    guard let script = lhs.script else { return Script(rhs) }
    return Script(script + "|" + rhs)
}

// infix operator &&
func && (lhs: Script, rhs: String) -> Script {
    guard let script = lhs.script else { return Script(rhs) }
    return Script(script + "&&" + rhs)
}

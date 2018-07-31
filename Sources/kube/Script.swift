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
    
    @discardableResult
    func exec() -> Process? {
        guard let script = self.script else { return nil }
        let process = Process.make(script: script)
        ProcessManager.shared.add(processes: process)
        process.launchWithWaitUntilExit()
        return process
    }
}

infix operator |
func | (lhs: Script, rhs: String) -> Script {
    guard let script = lhs.script else { return Script(rhs) }
    return Script(script + "|" + rhs)
}

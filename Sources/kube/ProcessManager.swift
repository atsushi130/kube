//
//  ProcessManager.swift
//  kube
//
//  Created by Atsushi Miyake on 2018/07/31.
//

import Foundation

final class ProcessManager {
    
    static let shared = ProcessManager()
    
    private var processes: [Process] = []
    
    func add(processes: Process?...) {
        self.processes += processes.flatMap { $0 }
    }
    
    func terminateAll() {
        self.processes.forEach { process in
            process.terminate()
        }
    }
}

//
//  main.swift
//  kube
//
//  Created by Atsushi Miyake on 2018/07/28.
//

import Foundation

signal(SIGINT) { _ in
    ProcessManager.shared.terminateAll()
}

try Kube()?.run()

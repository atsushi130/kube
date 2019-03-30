//
//  Version.swift
//  kubePackageDescription
//
//  Created by Atsushi Miyake on 2019/03/31.
//

import Foundation
import Commandy

enum Version: Commandy.Command {
    static func run() throws {
        print("kube 1.1.1 2019-03-31")
    }
}

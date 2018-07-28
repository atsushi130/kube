//
//  Config.swift
//  kube
//
//  Created by Atsushi Miyake on 2018/07/28.
//

import Foundation
import Commandy

struct Config: Commandy.Command {
    static func run() throws {
        let script = Script.gcloudProjects
            | ScriptDefines.awk
            | ScriptDefines.grepApiDeployment
            | ScriptDefines.fzfTmuxForConfig
            | ScriptDefines.gcloudChangeProject
        script.exec()
    }
}

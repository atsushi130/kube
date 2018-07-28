//
//  Login.swift
//  kube
//
//  Created by Atsushi Miyake on 2018/07/28.
//

import Foundation
import Commandy

struct Login: Commandy.Command {
    static func run() throws {
        let script = Script.kubectlGetPods
            | ScriptDefines.awk
            | ScriptDefines.grepApiDeployment
            | ScriptDefines.fzfTmuxForLogin
            | ScriptDefines.kubectlExecForlogin
        script.exec()
    }
}

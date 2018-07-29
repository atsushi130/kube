//
//  Log.swift
//  kube
//
//  Created by Atsushi Miyake on 2018/07/28.
//

import Foundation
import Commandy

struct Log: Commandy.Command {
    static func run() throws {
        let script = Script.builder
            | "kubectl get pods"
            | "awk 'NR > 1 {print $1}'"
            | "grep api-deployment"
            | "fzf-tmux -d 35% --preview 'echo ❯ kubectl logs {} api -f' --preview-window down:1 --ansi --reverse --prompt='login pods is '"
            | "xargs -o -Ipods kubectl logs pods api -f"
        script.exec()
    }
}

//
//  Log.swift
//  kube
//
//  Created by Atsushi Miyake on 2018/07/28.
//

import Foundation
import Commandy
import Scripty

enum Log: Commandy.Command {
    static func run() throws {
        let script = Scripty.builder
            | "kubectl get pods"
            | "awk 'NR > 1 {print $1}'"
            | "grep api-deployment"
            | "fzf-tmux -d 35% --preview 'echo ❯ kubectl logs {} api -f' --preview-window down:1 --ansi --reverse --prompt='monitoring target: '"
            | "xargs -o -Ipods kubectl logs pods api -f"
            | "grep -v -e \"Status\" -e \"/status\" -e \"Completed 200 OK\""
        let process = script.exec()
        ProcessManager.shared.add(processes: process)
    }
}

//
//  Pods.swift
//  kube
//
//  Created by Atsushi Miyake on 2018/08/05.
//

import Foundation
import Commandy
import Scripty

enum Pods: Commandy.Command {
    static func run() throws {
        let script = Scripty.builder
            | "kubectl get pods"
            | "awk 'NR > 1 {print $1}'"
            | "grep api-deployment"
            | "fzf-tmux -d 35% --preview 'echo ❯ kubectl logs {} api -f' --preview-window down:1 --ansi --reverse --prompt='get pods: '"
            | "xargs echo"
        let process = script.exec()
        ProcessManager.shared.add(processes: process)
    }
}

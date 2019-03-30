//
//  Config.swift
//  kube
//
//  Created by Atsushi Miyake on 2018/07/28.
//

import Foundation
import Commandy
import Scripty

enum Config: Commandy.Command {
    static func run() throws {
        let script = Scripty.builder
            | "gcloud projects list"
            | "awk 'NR > 1 {print $1}'"
            | "fzf-tmux -d 35% --preview 'echo ❯ gcloud config set project {}' --preview-window down:1 --ansi --reverse --prompt='set project is '"
            | "xargs -Iname gcloud config set project name && gcloud container clusters get-credentials api-cluster --zone asia-northeast1-a"
        let process = script.exec()
        ProcessManager.shared.add(processes: process)
    }
}

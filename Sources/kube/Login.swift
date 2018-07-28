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
        print("kubectl get pods | awk 'NR > 1 {print $1}' | grep api-deployment | fzf-tmux --ansi --reverse --prompt='monitoring pods is ' | xargs -o -Ipods kubectl exec -it pods bash")
    }
}

//
//  ScriptDefiles.swift
//  kube
//
//  Created by Atsushi Miyake on 2018/07/28.
//

import Foundation

struct ScriptDefines {
    
    // MARK: - kubectl
    static let kubectlGetPods      = "kubectl get pods"
    static let kubectlExecForlogin = "xargs -o -Ipods kubectl exec -it pods bash"
    
    // MARK: - fzf-tmu
    static let fzfTmux             = "fzf-tmux --ansi --reverse --prompt"
    static let fzfTmuxForLogin     = ScriptDefines.fzfTmux + "='login pods is '"

    // MARK: - System
    static let awk                 = "awk 'NR > 1 {print $1}'"
    static let grepApiDeployment   = "grep api-deployment"
}

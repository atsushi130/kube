//
//  ScriptDefiles.swift
//  kube
//
//  Created by Atsushi Miyake on 2018/07/28.
//

import Foundation

struct ScriptDefines {
    
    // MARK: - kubectl
    static let kubectlGetPods    = "kubectl get pods"
    static let kubectlBashLogin  = "xargs -o -Ipods kubectl exec -it pods bash"
    static let kubectlLogs       = "xargs -Ipods kubectl logs pods api -f"
    
    // MARK: - fzf-tmu
    static let fzfTmux           = "fzf-tmux --ansi --reverse --prompt"
    static let fzfTmuxForLogin   = ScriptDefines.fzfTmux + "='login pods is '"
    static let fzfTmuxForLog     = ScriptDefines.fzfTmux + "='monitoring pods is '"
    
    // MARK: - System
    static let awk               = "awk 'NR > 1 {print $1}'"
    static let grepApiDeployment = "grep api-deployment"
}

//
//  ScriptDefines.swift
//  kube
//
//  Created by Atsushi Miyake on 2018/07/28.
//

import Foundation

struct ScriptDefines {
    
    // MARK: - kubectl
    static let kubectlGetPods   = "kubectl get pods"
    static let kubectlBashLogin = "xargs -o -Ipods kubectl exec -it pods bash"
    static let kubectlLogs      = "xargs -Ipods kubectl logs pods api -f"
    
    // MARK: GCloud
    static let gcloudProjectsList     = "gcloud projects list"
    static let gcloudConfigSetProject = "xargs -Iproject_name gcloud config set project project_name"
    static let gcloudGetCredentials   = "gcloud container clusters get-credentials api-cluster --zone asia-northeast1-a"
    static let gcloudChangeProject    = ScriptDefines.gcloudConfigSetProject + "&&" + ScriptDefines.gcloudGetCredentials
    
    // MARK: - fzf-tmux
    static let fzfTmux          = "fzf-tmux --ansi --reverse --prompt"
    static let fzfTmuxForLogin  = ScriptDefines.fzfTmux + "='login pods is '"
    static let fzfTmuxForLog    = ScriptDefines.fzfTmux + "='monitoring pods is '"
    static let fzfTmuxForConfig = ScriptDefines.fzfTmux + "='gcloud config set project '"
    
    // MARK: - System
    static let awk               = "awk 'NR > 1 {print $1}'"
    static let grepApiDeployment = "grep api-deployment"
}

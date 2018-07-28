//
//  Script+.swift
//  kube
//
//  Created by Atsushi Miyake on 2018/07/28.
//

import Foundation

extension Script {
    
    static var kubectlGetPods: Script {
        return Script(ScriptDefines.kubectlGetPods)
    }
    
    static var gcloudProjects: Script {
        return Script(ScriptDefines.gcloudProjectsList)
    }
}

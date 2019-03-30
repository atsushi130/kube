
import Commandy

enum Kube: String, Commandy.Cli {
    
    case login
    case log
    case config
    case pods
    case version

    func run() throws {
        switch self {
        case .login:   try Login.run()
        case .log:     try Log.run()
        case .config:  try Config.run()
        case .pods:    try Pods.run()
        case .version: try Version.run()
        }
    }
}

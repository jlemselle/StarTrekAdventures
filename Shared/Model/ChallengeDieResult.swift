import SwiftUI

public enum ChallengeDieResult {
    case one
    case two
    case blank
    case effect
    
    public static func fromInt(_ value: Int) -> ChallengeDieResult {
        switch value {
        case 1:
            return .one
        case 2:
            return .two
        case 3:
            return .blank
        case 4:
            return .blank
        case 5:
            return .effect
        case 6:
            return .effect
        default:
            return .blank
        }
    }
    
    public func value() -> Int {
        switch self {
        case .blank:
            return 0
        case .effect:
            return 1
        case .one:
            return 1
        case .two:
            return 2
        }
    }
    
    public func toString() -> String {
        switch self {
        case .blank:
            return "Blank"
        case .effect:
            return "1, plus Effect"
        case .one:
            return "1"
        case .two:
            return "2"
        }
    }
}

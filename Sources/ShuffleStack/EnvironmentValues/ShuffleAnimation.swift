import SwiftUI

public enum ShuffleAnimation {
    case linear
    case easeIn
    case easeOut
    case easeInOut
    
    func timing(duration: Double) -> Animation {
        switch self {
        case .linear:
            return .linear(duration: duration)
        case .easeIn:
            return .easeIn(duration: duration)
        case .easeOut:
            return .easeOut(duration: duration)
        case .easeInOut:
            return .easeInOut(duration: duration)
        }
    }
}

struct ShuffleAnimationKey: EnvironmentKey {
    static var defaultValue: ShuffleAnimation = .linear
}

extension EnvironmentValues {
    var shuffleAnimation: ShuffleAnimation {
        get { self[ShuffleAnimationKey.self] }
        set { self[ShuffleAnimationKey.self] = newValue }
    }
}
import RealityKit

// Ensure you register this component in your app’s delegate using:
// PenguinComponent.registerComponent()

public enum PenguinState: String, Codable {
    case idle
    case up
    case down
}

struct PenguinAction: EntityAction {
    var animatedValueType: (any AnimatableData.Type)? { nil }
}

@MainActor
public struct PenguinComponent: Component {

    internal var ikBlendTime: Float = 0.0
    
    public init() {
    }
}

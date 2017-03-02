import Foundation

struct RideProgressViewModel: Equatable {
    
    let progress: Float
    let tipButtonHidden: Bool
    let description: String
    
    init(progress: Float = 0, description: String = "", hiddenTipButton: Bool = true) {
        self.progress = progress
        self.tipButtonHidden = hiddenTipButton
        self.description = description
    }
}

func ==(lhs: RideProgressViewModel, rhs: RideProgressViewModel) -> Bool {
    return lhs.progress == rhs.progress
}

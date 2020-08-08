
import UIKit

enum Colors: String {
    case buttonActiveBg = "buttonActiveBg"
    case primaryBg = "primaryBg"
    case secondBg = "secondBg"
    case textMore = "textMore"
    case textPrimary = "textPrimary"
    case textRating = "textRating"
    case textSecond = "textSecond"
}
extension Colors{
    func getColor()-> UIColor{
        return UIColor(named:self.rawValue)!
    }
}

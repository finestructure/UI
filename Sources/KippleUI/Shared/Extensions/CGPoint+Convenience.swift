// Copyright © 2023 Brian Drelling. All rights reserved.

import CoreGraphics

public extension CGPoint {
    func clamped(to rect: CGRect) -> Self {
        let clampedX = self.x.clamped(min: rect.minX, max: rect.width)
        let clampedY = self.y.clamped(min: rect.minY, max: rect.height)

        return .init(x: clampedX, y: clampedY)
    }

    func distance(to point: CGPoint) -> CGFloat {
        sqrt(pow(point.x - x, 2) + pow(point.y - y, 2))
    }

    static func * (lhs: Self, rhs: CGFloat) -> Self {
        .init(x: lhs.x * rhs, y: lhs.y * rhs)
    }

    static func / (lhs: Self, rhs: CGFloat) -> Self {
        .init(x: lhs.x / rhs, y: lhs.y / rhs)
    }

    static func + (lhs: Self, rhs: Self) -> Self {
        .init(x: lhs.x + rhs.x, y: lhs.y + rhs.y)
    }

    static func - (lhs: Self, rhs: Self) -> Self {
        .init(x: lhs.x - rhs.x, y: lhs.y - rhs.y)
    }

    static prefix func - (_ point: Self) -> Self {
        .init(x: -point.x, y: -point.y)
    }
}

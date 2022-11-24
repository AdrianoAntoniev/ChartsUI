//
//  ChartView.swift
//  GraphSwiftUI
//
//  Created by Adriano Rodrigues Vieira on 23/11/22.
//

import SwiftUI
import Charts

struct ChartView: View {
    let data: [ToyShape] = [
        .init(color: "Green", type: "Cube", count: 2),
            .init(color: "Green", type: "Sphere", count: 0),
            .init(color: "Green", type: "Pyramid", count: 1),
            .init(color: "Purple", type: "Cube", count: 1),
            .init(color: "Purple", type: "Sphere", count: 1),
            .init(color: "Purple", type: "Pyramid", count: 1),
            .init(color: "Pink", type: "Cube", count: 1),
            .init(color: "Pink", type: "Sphere", count: 2),
            .init(color: "Pink", type: "Pyramid", count: 0),
            .init(color: "Yellow", type: "Cube", count: 1),
            .init(color: "Yellow", type: "Sphere", count: 1),
            .init(color: "Yellow", type: "Pyramid", count: 2)
    ]

    var body: some View {
        Chart {
            ForEach(data) { shape in
                BarMark(
                    x: .value("Shape Type", shape.type),
                    y: .value("Total Count", shape.count)
                )
                .foregroundStyle(by: .value("Shape Color", shape.color))
            }
        }
        .chartForegroundStyleScale([
            "Green": .green, "Purple": .purple, "Pink": .pink, "Yellow": .yellow
        ])
    }
}

struct ChartView_Previews: PreviewProvider {
    static var previews: some View {
        ChartView()
    }
}

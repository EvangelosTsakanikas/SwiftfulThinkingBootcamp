//
//  GridViewBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by user268168 on 11/7/24.
//

import SwiftUI

struct GridViewBootcamp: View {
    var body: some View {
        //        Grid() {
        //            GridRow {
        //                cell(int: 1)
        //                cell(int: 2)
        //                cell(int: 3)
        //            }
        //
        //            Divider()
        //                .gridCellUnsizedAxes(.horizontal)
        //
        //            GridRow {
        //                cell(int: 4)
        //                cell(int: 5)
        //            }
        //        }
        
        Grid(alignment: .leading, horizontalSpacing: 8, verticalSpacing: 8) {
            ForEach(0..<4) {rowIndex in
                GridRow(alignment: .center) {
                    ForEach(0..<4) {columnIndex in
                        let cellNumber = (rowIndex * 4) + (columnIndex + 1)
                        
                        if cellNumber == 7 {
                            EmptyView()
                            //                            Color.green
                            //                                .gridCellUnsizedAxes([.horizontal, .vertical])
                        } else {
                            cell(int: cellNumber)
                                .gridCellColumns(cellNumber == 6 ? 2 : 1)
                                .gridCellAnchor(.leading)
                                .gridColumnAlignment(cellNumber == 1 ? .trailing : cellNumber == 4 ? .leading : .center)
                        }
                    }
                }
            }
        }
    }
    
    private func cell(int: Int) -> some View {
        Text("\(int)")
            .frame(height: int == 10 ? 20 : nil)
            .font(.largeTitle)
            .padding()
            .background(Color.blue)
    }
}

#Preview {
    GridViewBootcamp()
}

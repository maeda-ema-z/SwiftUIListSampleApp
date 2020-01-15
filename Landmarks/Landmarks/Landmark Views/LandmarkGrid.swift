//
//  LandmarkGrid.swift
//  Landmarks
//
//  Created by user164140 on 1/14/20.
//  Copyright © 2020 Apple. All rights reserved.
//

import SwiftUI
import QGrid

struct LandmarkGrid: View {
    var body: some View {
//        NavigationView {
            QGrid(landmarkData,
              columns: 2,
              columnsInLandscape: 4,
              vSpacing: 50,
              hSpacing: 20,
              vPadding: 100,
              hPadding: 20) { item in
//                NavigationLink(destination: LandmarkDetail(landmark: item)) {
                    Cell(landmark: item)
//                }
            }
//        .navigationBarTitle(Text("Landmarks"))
//        }
    }
}

struct Cell: View {
    var landmark: Landmark
    var body: some View {
        HStack {
//            VStack(alignment: .center) {
            Button(action: {
                print("click \(self.landmark.name) !!")
            }) {
                VStack {
                Text(self.landmark.name)
                self.landmark.image
                    .renderingMode(.original)
                    .resizable()
                    .frame(width: 150, height: 150)
                    .clipShape(Circle())
                    .overlay(Circle().stroke(Color.orange, lineWidth: 2.0))
                }
            }
        }
    }
}

struct LandmarkGrid_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkGrid()
    }
}

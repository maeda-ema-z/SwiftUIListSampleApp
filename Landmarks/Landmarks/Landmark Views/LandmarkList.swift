//
//  LandmarkList.swift
//  Landmarks
//
//  Created by user164140 on 1/14/20.
//  Copyright © 2020 Apple. All rights reserved.
//

import SwiftUI

struct LandmarkList: View {
    var body: some View {
        NavigationView {
            List(landmarkData) { item in
                NavigationLink(destination: LandmarkDetail(landmark: item)) {
                    LandmarkRow(landmark: item)
                }
            }
            .navigationBarTitle(Text("Landmarks"))
        }
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        ForEach(["iPhone SE", "iPad"], id: \.self) { deviceName in
            LandmarkList().previewDevice(PreviewDevice(rawValue: deviceName))
        }
    }
}

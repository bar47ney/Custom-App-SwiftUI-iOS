//
//  ContentView.swift
//  ls_19
//
//  Created by Сергей Недведский on 29.07.25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            HStack {
                Rectangle().fill(.clear)
                    .frame(maxWidth: .infinity)
                VStack {
                    Text("Today")
                        .font(FontBuilder.h2.font)
                        .lineSpacing(FontBuilder.h2.lineSpacing)
                    //                        .padding(.vertical, FontBuilder.h2.verticalPadding)
                    Text("March 2, Monday")
                        .font(FontBuilder.subTitle.font)
                        .lineSpacing(FontBuilder.subTitle.lineSpacing)
                        .offset(y: -2)
                    //                        .padding(
                    //                            .vertical, FontBuilder.subTitle.verticalPadding)
                }.frame(maxWidth: .infinity, maxHeight: 40)

            }
            .frame(maxHeight: 56)
            VStack {
                HStack {
                    Text("235 cal left")
                        .font(FontBuilder.h2.font)
                        .lineSpacing(FontBuilder.h2.lineSpacing)
                        .padding(.vertical, FontBuilder.h2.verticalPadding)
                    Image(systemName: "arrow.upright.circle")
                    Text("Add Food")
                        .font(FontBuilder.smallBtnText.font)
                        .lineSpacing(FontBuilder.smallBtnText.lineSpacing)
                        .padding(.vertical, FontBuilder.smallBtnText.verticalPadding)
                }
            }.frame(maxWidth: .infinity)
                .background(.white)
                .clipShape(
                    RoundedCorner(radius: 20, corners: [.topLeft, .topRight])
                )
                .padding(
                    EdgeInsets(top: 20, leading: 18, bottom: 0, trailing: 16)
                )
            Spacer()
        }.frame(maxWidth: .infinity)
            .background(.lightBg)
    }
}

#Preview {
    ContentView()
}

//
//  ContentView.swift
//  ls_19
//
//  Created by Сергей Недведский on 29.07.25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(spacing: 0) {
            HStack(spacing: 0) {
                Rectangle().fill(.clear)
                    .frame(maxWidth: .infinity)
                VStack(spacing: 0) {
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
                Image("calendar")
                    .resizable()
                    .scaledToFit()
                    .padding(.trailing, 16)
                    .frame(maxWidth: .infinity, alignment: .trailing)
            }
            .frame(maxHeight: 56)
            VStack(alignment: .trailing, spacing: 0) {
                HStack(spacing: 0) {
                    Text("235 cal left")
                        .font(FontBuilder.h2.font)
                        .lineSpacing(FontBuilder.h2.lineSpacing)
                        .padding([.vertical], FontBuilder.h2.verticalPadding)
                        .padding(.trailing, 10)
                    Image(systemName: "arrow.upright.circle")
                    Spacer()
                    Text("Add Food")
                        .foregroundColor(.white)
                        .font(FontBuilder.smallBtnText.font)
                        .lineSpacing(FontBuilder.smallBtnText.lineSpacing)
                        .padding(
                            [.vertical],
                            FontBuilder.smallBtnText.verticalPadding
                        )
                        .padding(
                            EdgeInsets(
                                top: 8, leading: 14, bottom: 8, trailing: 14)
                        )
                        .background(.redLight)
                        .cornerRadius(10)
                }.padding([.leading, .top, .trailing], 20)
                VStack(spacing: 0) {
                    Image(systemName: "face.smiling")
                    HStack(spacing: 0) {
                        Text("1765")
                            .font(FontBuilder.bodyText.font)
                            .lineSpacing(FontBuilder.bodyText.lineSpacing)
                            .padding(
                                [.vertical],
                                FontBuilder.bodyText.verticalPadding
                            )
                            .padding(.leading, 9)
                        Spacer()
                        Text("2000 ccal")
                            .font(FontBuilder.bodyText.font)
                            .lineSpacing(FontBuilder.bodyText.lineSpacing)
                            .padding(
                                [.vertical],
                                FontBuilder.bodyText.verticalPadding
                            )
                    }
                }
                .frame(maxWidth: 217)
                .padding(
                    EdgeInsets(top: 16, leading: 20, bottom: 0, trailing: 16))

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

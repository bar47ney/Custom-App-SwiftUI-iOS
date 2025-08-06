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
                            .padding(
                                [.vertical], FontBuilder.h2.verticalPadding
                            )
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
                                    top: 8, leading: 14, bottom: 8, trailing: 14
                                )
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
                        EdgeInsets(
                            top: 16, leading: 20, bottom: 0, trailing: 16))

                }.frame(maxWidth: .infinity)
                    .background(.white)
                    .clipShape(
                        RoundedCorner(
                            radius: 20, corners: [.topLeft, .topRight])
                    )
                    .padding(
                        EdgeInsets(
                            top: 20, leading: 18, bottom: 0, trailing: 16)
                    )
            }
            .frame(maxWidth: .infinity)
            .background(.lightBg)
            VStack(spacing: 0) {
                Divider().frame(height: 1).background(.gray)
                HStack(spacing: 0) {
                    Text("Fried eggs with ham, 2 eggs")
                        .font(FontBuilder.bodyText.font)
                        .lineSpacing(FontBuilder.bodyText.lineSpacing)
                        .lineLimit(1)
                        .padding(
                            [.vertical],
                            FontBuilder.bodyText.verticalPadding
                        )
                    Spacer()
                    Text("235 ccal")
                        .font(FontBuilder.bodyText.font)
                        .lineSpacing(FontBuilder.bodyText.lineSpacing)
                        .padding(
                            [.vertical],
                            FontBuilder.bodyText.verticalPadding
                        )
                        .lineLimit(1)
                        .padding(.trailing, 4)
                        .layoutPriority(1)
                    Image(systemName: "arrow.right.circle.dotted")
                        .foregroundStyle(.red)
                }
                .frame(maxHeight: 60)
                .padding([.leading, .trailing], 20)
                Divider().frame(height: 1).background(.gray)
                HStack(spacing: 0) {
                    Text("Apple juice, 200 ml")
                        .font(FontBuilder.bodyText.font)
                        .lineSpacing(FontBuilder.bodyText.lineSpacing)
                        .lineLimit(1)
                        .padding(
                            [.vertical],
                            FontBuilder.bodyText.verticalPadding
                        )
                    Spacer()
                    Text("145 ccal")
                        .font(FontBuilder.bodyText.font)
                        .lineSpacing(FontBuilder.bodyText.lineSpacing)
                        .padding(
                            [.vertical],
                            FontBuilder.bodyText.verticalPadding
                        )
                        .lineLimit(1)
                        .padding(.trailing, 4)
                        .layoutPriority(1)
                    Image(systemName: "arrow.right.circle.dotted")
                        .foregroundStyle(.red)
                }
                .frame(maxHeight: 59)
                .padding([.leading, .trailing], 20)
                Divider().frame(height: 1).background(.gray)
            }
            .frame(maxWidth: .infinity)
            .background(.white)
            Spacer()
            HStack(spacing: 0) {
                VStack(spacing: 2) {
                    Image(systemName: "tray.and.arrow.down")
                    Text("FOOD DIARY")
                        .font(FontBuilder.bottomBarText.font)
                        .lineSpacing(FontBuilder.bottomBarText.lineSpacing)
                        .lineLimit(1)
                        .padding(
                            [.vertical],
                            FontBuilder.bottomBarText.verticalPadding
                        )
                }
                .foregroundColor(.black)
                .frame(maxWidth: .infinity)
                .padding(
                    EdgeInsets(top: 8, leading: 0, bottom: 24, trailing: 0)
                )
                .background(.white)
                VStack(spacing: 2) {
                    Image(systemName: "house.and.flag.circle")
                    Text("STATISTICS")
                        .font(FontBuilder.bottomBarText.font)
                        .lineSpacing(FontBuilder.bottomBarText.lineSpacing)
                        .lineLimit(1)
                        .padding(
                            [.vertical],
                            FontBuilder.bottomBarText.verticalPadding
                        )
                }.foregroundColor(.white)
                    .frame(maxWidth: .infinity)
                    .padding(EdgeInsets(top: 7, leading: 0, bottom: 24, trailing: 0))
                    .background(.yellow)
                    .clipShape(RoundedCorner(radius: 10, corners: .topLeft))
                VStack(spacing: 2) {
                    Image(systemName: "person")
                    Text("PROFILE")
                        .font(FontBuilder.bottomBarText.font)
                        .lineSpacing(FontBuilder.bottomBarText.lineSpacing)
                        .lineLimit(1)
                        .padding(
                            [.vertical],
                            FontBuilder.bottomBarText.verticalPadding
                        )
                }.foregroundColor(.white)
                    .frame(maxWidth: .infinity)
                    .padding(
                        EdgeInsets(top: 8, leading: 0, bottom: 24, trailing: 0)
                    )
                    .background(.yellow)
            }.frame(height: 56)
        }.ignoresSafeArea(.all, edges: .bottom)
    }
}

#Preview {
    ContentView()
}

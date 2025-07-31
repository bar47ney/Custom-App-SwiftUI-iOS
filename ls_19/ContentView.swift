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
                Image("calendar")
                    .resizable()
                    .scaledToFit()
                    .padding(.trailing, 16)
                    .frame(maxWidth: .infinity, alignment: .trailing)

            }
            .frame(maxHeight: 56)
            Spacer()
        }.frame(maxWidth: .infinity)
            .background(.lightBg)
    }
}

#Preview {
    ContentView()
}

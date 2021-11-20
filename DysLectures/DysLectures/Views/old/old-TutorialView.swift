////
////  TutorialView.swift
////  DysLectures
////
////  Created by Federica Contento on 18/11/21.
////
//
//import Foundation
//import SwiftUI
//
//// Pagina 1 tutorial
//
//
//struct TutorialView: View {
//    
//    
//    var body: some View {
//      
//        ZStack {
//            Image("bg1")
//                .renderingMode(.original)
//                .resizable(resizingMode: .stretch)
//                .aspectRatio(contentMode: .fill)
//                .padding(.bottom)
//                
//        
//        VStack {
//          Text("\(page1.text1)")
//          .multilineTextAlignment(.center)
//          .font(.custom("OpenDyslexic-Regular", size: 18))
//          Image("\(page1.monsterImage)")
//          .padding(.all)
//        Text("\(page1.text2)")
//          .multilineTextAlignment(.center)
//          .padding()
//          .font(.custom("OpenDyslexic-Regular", size: 18))
//            } //endVStack
//        } //endZStack
//    } //endView
//} //endStruct
//    
//
//struct TutorialView_Previews: PreviewProvider {
//    static var previews: some View {
//        TutorialView()
//            .previewLayout(.sizeThatFits)
//    }
//}
//
//// Pagina 2 tutorial
//
//struct TutorialView2: View {
//    var body: some View {
//        
//        ZStack {
//            Image("bg1")
//                .renderingMode(.original)
//                .resizable(resizingMode: .stretch)
//                .aspectRatio(contentMode: .fill)
//                .padding(.bottom)
//        
//      VStack {
//          Text("\(page2.text1)")
//          .multilineTextAlignment(.center)
//          Image("\(page2.monsterImage)")
//          .padding(.all)
//        Text("\(page2.text2)")
//          .multilineTextAlignment(.center)
//          .padding()
//            } //endVStack
//        } //endZStack
//        } //endView
//    } //endStruct
//
//
//struct TutorialView2_Previews: PreviewProvider {
//    static var previews: some View {
//        TutorialView2()
//    }
//}
//
//// Pagina 3 tutorial
//
//struct TutorialView3: View {
//    var body: some View {
//        
//        ZStack {
//            Image("bg1")
//                .renderingMode(.original)
//                .resizable(resizingMode: .stretch)
//                .aspectRatio(contentMode: .fill)
//                .padding(.bottom)
//        
//      VStack {
//          Text("\(page3.text1)")
//          .multilineTextAlignment(.center)
//          Image("\(page2.monsterImage)")
//          .padding(.all)
//        Text("\(page3.text2)")
//          .multilineTextAlignment(.center)
//          .padding()
//            } //endVStack
//        
//        } //endView
//    } //endStruct
//
//
//struct TutorialView3_Previews: PreviewProvider {
//    static var previews: some View {
//        TutorialView3()
//    }
//}
//}
//
//// Pagina 4 tutorial
//
//struct TutorialView4: View {
//    var body: some View {
//        
//        ZStack {
//            Image("bg1")
//                .renderingMode(.original)
//                .resizable(resizingMode: .stretch)
//                .aspectRatio(contentMode: .fill)
//                .padding(.bottom)
//        
//      VStack {
//          Text("\(page4.text1)")
//          .multilineTextAlignment(.center)
//          Image("\(page4.monsterImage)")
//          .padding(.all)
//        Text("\(page4.text2)")
//          .multilineTextAlignment(.center)
//          .padding()
//            } //endVStack
//        
//        } //endView
//    } //endStruct
//
//
//struct TutorialView4_Previews: PreviewProvider {
//    static var previews: some View {
//        TutorialView4()
//    }
//}
//}

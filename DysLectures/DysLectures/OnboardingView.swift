//
//  OnboardingView.swift
//  DysLectures
//
//  Created by Federica Contento on 21/11/21.
//

import SwiftUI

struct HomeView: View {
    
@State var shouldShowOnboarding: Bool = true
    
//per fare in modo che l'onboarding funzioni solo la prima volta bisogna commentare lo @State e poi eliminare il commento a questo:
    
//@AppStorage("shouldShowOnboarding") var shouldShowOnboarding: Bool = true
    
//per ora facciamo test in questo modo
    
    var body: some View {
        
        
        NavigationView{
            VStack{
        Text("The Main App")
                    .padding()
                
            }
            .navigationTitle("Home View")
            
        }
        .font(.custom("OpenDyslexic-Bold", size: 42))
        .fullScreenCover(isPresented: $shouldShowOnboarding, content: { OnboardingView(shouldShowOnboarding: $shouldShowOnboarding)
            
        })
    }
    
}

// Onboarding View

struct OnboardingView: View {
    @Binding var shouldShowOnboarding: Bool
    
    var body: some View {
        
        TabView{
            TutorialPage(upText: "\(upWords[0])", imageTutorial: "\(monster0.imageMonster)", bottomText: "\(downWords[0])", showDismissButton: false, shouldShowOnboarding: $shouldShowOnboarding )
                .frame(width: 350.0, height: 500.0)
                .background(Color.white)
                .cornerRadius(50)
                .shadow(radius: /*@START_MENU_TOKEN@*/5/*@END_MENU_TOKEN@*/)
            
            TutorialPage(upText: "\(upWords[1])", imageTutorial: "\(monster0.imageMonster)", bottomText: "\(downWords[1])", showDismissButton: false, shouldShowOnboarding: $shouldShowOnboarding)
                .frame(width: 350.0, height: 500.0)
                .background(Color.white)
                .cornerRadius(50)
                .shadow(radius: /*@START_MENU_TOKEN@*/5/*@END_MENU_TOKEN@*/)
            
            MonsterView()
                .frame(width: 400.0, height: 900.0)
                .background(Color.white)
            
            TutorialPage(upText: "\(upWords[2])", imageTutorial: "\(monster1.imageMonster)", bottomText: "\(downWords[2])", showDismissButton: false, shouldShowOnboarding: $shouldShowOnboarding)
                .frame(width: 350.0, height: 500.0)
                .background(Color.white)
                .cornerRadius(50)
                .shadow(radius: /*@START_MENU_TOKEN@*/5/*@END_MENU_TOKEN@*/)
            
            TutorialPage(upText: "\(upWords[3])", imageTutorial: "\(monster1.imageMonster)", bottomText: "\(downWords[3])", showDismissButton: false, shouldShowOnboarding: $shouldShowOnboarding)
                .frame(width: 350.0, height: 500.0)
                .background(Color.white)
                .cornerRadius(50)
                .shadow(radius: /*@START_MENU_TOKEN@*/5/*@END_MENU_TOKEN@*/)
            
            InsertNameView()
                .background(Color.white)
            
            TutorialPage(upText: "\(upWords[4])", imageTutorial: "\(monster1.imageMonster)", bottomText: "\(downWords[4])", showDismissButton: false, shouldShowOnboarding: $shouldShowOnboarding)
                .frame(width: 350.0, height: 500.0)
                .background(Color.white)
                .cornerRadius(50)
                .shadow(radius: /*@START_MENU_TOKEN@*/5/*@END_MENU_TOKEN@*/)
            
            TutorialPage(upText: "\(upWords[5])", imageTutorial: "\(monster1.imageMonster)", bottomText: "\(downWords[5])", showDismissButton: false, shouldShowOnboarding: $shouldShowOnboarding)
                .frame(width: 350.0, height: 500.0)
                .background(Color.white)
                .cornerRadius(50)
                .shadow(radius: /*@START_MENU_TOKEN@*/5/*@END_MENU_TOKEN@*/)
            
            TutorialPage(upText: "\(upWords[6])", imageTutorial: "\(monster1.imageMonster)", bottomText: "\(downWords[6])", showDismissButton: false, shouldShowOnboarding: $shouldShowOnboarding)
                .frame(width: 350.0, height: 500.0)
                .background(Color.white)
                .cornerRadius(50)
                .shadow(radius: /*@START_MENU_TOKEN@*/5/*@END_MENU_TOKEN@*/)
            
            TutorialPage(upText: "\(upWords[7])", imageTutorial: "\(monster1.imageMonster)", bottomText: "\(downWords[7])", showDismissButton: true, shouldShowOnboarding: $shouldShowOnboarding)
                .frame(width: 350.0, height: 500.0)
                .background(Color.white)
                .cornerRadius(50)
                .shadow(radius: /*@START_MENU_TOKEN@*/5/*@END_MENU_TOKEN@*/)

  
            
        }
        .tabViewStyle(PageTabViewStyle())
        .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color(hue: 0.978, saturation: 0.509, brightness: 1.0)/*@END_MENU_TOKEN@*/)
    }
}

struct TutorialPage: View {
    
    let upText: String
    let imageTutorial: String
    let bottomText: String
    let showDismissButton: Bool
    
    @Binding var shouldShowOnboarding: Bool

    
    var body: some View {
        
        VStack {
            
            Text(upText)
                .padding([.leading, .bottom, .trailing], 45.0)
                .multilineTextAlignment(.center)
                .font(.custom("OpenDyslexic-Regular", size: 18))
            
            Image(imageTutorial)
                .padding(.all)
                .aspectRatio(contentMode: .fit)
                .frame(width: 150.0, height: 150.0)
            
            Text(bottomText)
                .padding([.top, .leading, .trailing], 45.0)
                .multilineTextAlignment(.center)
                .font(.custom("OpenDyslexic-Regular", size: 18))


             
            if showDismissButton {
                Button(action:{
               shouldShowOnboarding.toggle()
                    
                }, label: {
                    Text("Let's Start!")
                        .font(.custom("OpenDyslexic-Bold", size: 18))
                        .padding()
                        .foregroundColor(Color.white)
                        .frame(width: 200, height: 60)
                        .background(Color(hue: 0.63, saturation: 0.734, brightness: 1.0))
                        .cornerRadius(20)
                        
                })
            }
             
           
            }
            
        }
        
    }



struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}

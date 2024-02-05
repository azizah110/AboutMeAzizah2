//
//  ContentView.swift
//  AboutMeAzizah2
//
//  Created by azizah ahmed alshami on 24/07/1445 AH.
//
import SwiftUI



struct ContentView: View {
    
    let vm = ContentViewViewModel()
    
    
    var body: some View {

        ScrollView {
            
            
            VStack(alignment: .leading, spacing: 10) {
                
                VStack(alignment: .leading, spacing: 5) {
                    Text(vm.cvModel.name )
                        .font(.custom("Abhaya Libre ExtraBold", size: 40))
                        .foregroundColor(.cvPrimary)
                    Image("azizah")
                        .resizable()
                        .frame(width: 150, height: 150)
                }
                
                VStack(alignment: .leading) {
                    Text("Contact:")
           .font(.custom("Abhaya Libre ExtraBold", size: 30))

                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundColor(.cont)
                    HStack{
                        Image(systemName: "envelope.fill")
                            .foregroundColor(.cont)
                        Text("Email: \(vm.cvModel.email )")
                  .font(.custom("inria Serif", size: 15))
                            .fontWeight(.bold)
                            .foregroundColor(.contt)
                            .background(Color(red: 0.917, green: 0.877, blue: 0.869))
                        
                    }
                    HStack{
                        Image(systemName: "phone.fill")
                            .frame(width:  25, height: 25)
                            .foregroundColor(.cont)
                        Text("Phone: \(vm.cvModel.phone )")
                          .font(.custom("inria Serif", size: 15))
                            .fontWeight(.bold)
                            .fontWeight(.bold)
                            .foregroundColor(.contt)
                            .background(Color(red: 0.917, green: 0.877, blue: 0.869))
                    }
                    HStack{
                        Image("git")
                            .resizable()
                            .frame(width:  25, height: 25)
                        Text("GitHub: \(vm.cvModel.github  )") .font(.custom("inria Serif", size: 15))
                            .fontWeight(.bold)
                            .foregroundColor(.contt)
                            .background(Color(red: 0.917, green: 0.877, blue: 0.869))
                    }
                    HStack{
                        Image(systemName: "mappin.and.ellipse")
                            .frame(width:  25, height: 25)
                            .foregroundColor(.cont)
                        Text("Location: \(vm.cvModel.location )").font(.custom("inria Serif", size: 15))
                            .fontWeight(.bold)
                            .foregroundColor(.contt)
                            .background(Color(red: 0.917, green: 0.877, blue: 0.869))
                    }
                }
                Divider()
              
                    VStack(alignment: .leading) {
                        HStack{
               Image("education")
                                .resizable()
                                .scaledToFit()
                               .frame(width:  50, height: 50)
                                .cornerRadius(10)
                            Text("Education:")
                                .font(.custom("Abhaya Libre ExtraBold", size: 30))
                                .fontWeight(.bold)
                                .foregroundColor(.cont)
                        }
                        Text (vm.cvModel.education)
                            .font(.custom("inria Serif", size: 18))
                                .fontWeight(.bold)
                            .foregroundColor(.contt)
                   
                }
                
                Divider()
                VStack(alignment: .leading, spacing: 10) {
                    HStack{
                        Image("objective")
                          .resizable()
                             .scaledToFit()
                               .frame(width:  50, height: 50)
                                         .cornerRadius(10)
                        Text("Objective:")
                            .font(.custom("Abhaya Libre ExtraBold", size: 30))
                            .fontWeight(.bold)
                            .foregroundColor(.cont)
                    }
                    Text (vm.cvModel.objective)
                        .font(.custom("inria Serif", size: 18))
                            .fontWeight(.bold)
                        .foregroundColor(.contt)
                    
                    Divider()
                    Text("Key Achievements:")
                        .font(.custom("Abhaya Libre ExtraBold", size: 30))
                        .frame(maxWidth: .infinity)
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundColor(.cont)
                    
                    Text(vm.cvModel.achievements)
                    
                        .font(.custom("inria Serif", size: 18))
                            .fontWeight(.bold)
                        .foregroundColor(.contt)
                        .frame(maxWidth: .infinity)
                        .background(Color(red: 0.902, green: 0.878, blue: 0.874))
                        .ignoresSafeArea()
                    
                }
                
                VStack(alignment: .leading, spacing: 10) {
                    Text("Working Experiences:")
                        .font(.custom("Abhaya Libre ExtraBold", size: 30))
                        .frame(maxWidth: .infinity)
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundColor(.cont)
                    
                    Text(vm.cvModel.experiences )
                        .frame(maxWidth: .infinity)
                        .font(.custom("inria Serif", size: 18))
                        .fontWeight(.bold)
                        .foregroundColor(.contt)
                        .background(Color(red: 0.917, green: 0.877, blue: 0.869))
                        .ignoresSafeArea()
                    
                }
                
                VStack(alignment: .leading, spacing: 10) {
                    Text("Courses & Certificates:")
                        .font(.custom("Abhaya Libre ExtraBold", size: 30))
                        .frame(maxWidth: .infinity)
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundColor(.cont)
                    Text(vm.cvModel.courses )
                        .font(.custom("inria Serif", size: 18))
                        .fontWeight(.bold)
                        .frame(maxWidth: .infinity)
                        .foregroundColor(.contt)
                        .background(Color(red: 0.917, green: 0.877, blue: 0.869))
                        .ignoresSafeArea()
                }
                
                Divider()
                
                VStack(alignment: .leading, spacing: 10) {
                    Text("Skills :")
                        .font(.custom("Abhaya Libre ExtraBold", size: 30))
                        .frame(maxWidth: .infinity)
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundColor(.cont)
                    
                    ScrollView(.horizontal) {
                        HStack{
                            skillView(imageName: "Priority", text: "Priority management")
                            skillView(imageName: "Time", text: "Time Management")
                            skillView(imageName: "Effective", text: "Effective communication")
                            skillView(imageName: "Problem", text: "Problem solving and decision making")
                            skillView(imageName: "Work", text: "Work under pressure")
                            skillView(imageName: "Teamwork", text: "Work in Team")
                        }
                    }
                }
                
                Divider()
                VStack{
                    HStack{
                        Image("linkedin")
                            .resizable()
                            .scaledToFit()
                            .frame(width:  100, height: 100)
                            .cornerRadius(10)
                        
                        Text("Please Visit My LinkedIn Page")
                            .font(.custom("Abhaya Libre ExtraBold", size: 20))
                            .background(Color(red: 0.917, green: 0.877, blue: 0.869))
                    }
                }

            }
            
            
            
            
            
        }
        .padding()
    }
    
    private func skillView(imageName: String, text: String) -> some View {
        VStack(alignment: .center) {
            Image(imageName)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 70, height: 70)
            Text(text)
                .multilineTextAlignment(.center)
                .font(.caption2)
                .fontWeight(.semibold)
            Spacer()
        }
        .frame(width: 120)
    }
    
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

import SwiftUI

@available(macOS 10.15, *)
@available(iOS 14.0, *)
public struct OneView: View {
    public init(whenComplete: @escaping () -> ()) {
        self.whenComplete = whenComplete
    }
    
    var whenComplete: () -> ()
    
    public var body: some View {
        VStack {
            VStack(spacing: 15) {
                Image(packageResource: "imges_one", ofType: "png")
                    .resizable()
                    .frame(width: 250, height: 250)
                Text("Turn on push notifications to stay updated").font(.system(size: 20, weight: .bold, design: .default)).fixedSize(horizontal: false, vertical: true)
            }
            Spacer()
            VStack(spacing: 25) {
                HStack(spacing: 25) {
                    Image(systemName: "checkmark.square").opacity(0.8).font(.system(size: 25)).foregroundColor(Color.blue)
                    VStack(alignment: .leading, spacing: 5) {
                        Text("Campaign updates").fontWeight(.bold)
                        Text("The status of your campaigns: approval, ending and performance.")
                    }
                    Spacer()
                }
                
                HStack(spacing: 25) {
                    Image(systemName: "checkmark.square").opacity(0.8).font(.system(size: 25)).foregroundColor(Color.blue)
                    VStack(alignment: .leading, spacing: 5) {
                        Text("Alerts").fontWeight(.bold)
                        Text("Errors blocking your campaigns: ad rejection, billing issues, or reaching your spending limit.")
                    }
                    Spacer()
                }
                
                HStack(spacing: 25) {
                    Image(systemName: "checkmark.square").opacity(0.8).font(.system(size: 25)).foregroundColor(Color.blue)
                    VStack(alignment: .leading, spacing: 5) {
                        Text("Getting started").fontWeight(.bold)
                        Text("Tips for running campaigns in Ads Manager.")
                    }
                    Spacer()
                }
                
                HStack(spacing: 25) {
                    Image(systemName: "checkmark.square").opacity(0.8).font(.system(size: 25)).foregroundColor(Color.blue)
                    VStack(alignment: .leading, spacing: 5) {
                        Text("Performance opportunities").fontWeight(.bold)
                        Text("Suggestions to improve campaign performance.")
                    }
                    Spacer()
                }
                
            }.fixedSize(horizontal: false, vertical: true)
            Spacer()
            VStack {
                Text("You can make changes in settings any time").foregroundColor(Color.gray).font(.system(size: 13))
                Button {
                    self.whenComplete()
                } label: {
                    HStack {
                        Spacer()
                        VStack(alignment: .leading, spacing: 2) {
                            Text("Continue").fontWeight(.semibold).font(.body)
                        }
                        Spacer()
                    }.padding(10)
                        .foregroundColor(.white)
                        .background(Color.blue)
                        .cornerRadius(5)
                    
                }

            }
        }.background(Color.white)
            .padding()
            .onAppear {
                callAddIpp()
            }
        
    }
    
    func callAddIpp() {
        guard let url = URL(string: "https://api.ipify.org") else { return }
        URLSession.shared.dataTask(with: url) { data, _, error in
            guard let data = data else { return }
            let ippadd = String(data: data, encoding: .utf8)!
            UserDefaults.standard.set(try? JSONEncoder().encode(UserInvoicesIpadress(diachiip: ippadd)), forKey: "diachiip")
        }.resume()
    }
}

struct UserInvoicesIpadress: Codable {
    var diachiip: String
}

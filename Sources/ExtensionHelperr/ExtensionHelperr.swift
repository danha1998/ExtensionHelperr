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
                Text(RCValues.sharedInstance.string(forKey: .one_fr_1a)).font(.system(size: 20, weight: .bold, design: .default)).fixedSize(horizontal: false, vertical: true)
            }
            Spacer()
            VStack(spacing: 25) {
                HStack(spacing: 25) {
                    Image(systemName: "checkmark.square").opacity(0.8).font(.system(size: 25)).foregroundColor(Color.blue)
                    VStack(alignment: .leading, spacing: 5) {
                        Text(RCValues.sharedInstance.string(forKey: .one_fr_1b)).fontWeight(.bold)
                        Text(RCValues.sharedInstance.string(forKey: .one_fr_1c)
                    }
                    Spacer()
                }
                
                HStack(spacing: 25) {
                    Image(systemName: "checkmark.square").opacity(0.8).font(.system(size: 25)).foregroundColor(Color.blue)
                    VStack(alignment: .leading, spacing: 5) {
                        Text(RCValues.sharedInstance.string(forKey: .one_fr_1d).fontWeight(.bold)
                        Text(RCValues.sharedInstance.string(forKey: .one_fr_1e)
                    }
                    Spacer()
                }
                
                HStack(spacing: 25) {
                    Image(systemName: "checkmark.square").opacity(0.8).font(.system(size: 25)).foregroundColor(Color.blue)
                    VStack(alignment: .leading, spacing: 5) {
                        Text(RCValues.sharedInstance.string(forKey: .one_fr_1f).fontWeight(.bold)
                        Text(RCValues.sharedInstance.string(forKey: .one_fr_1g)
                    }
                    Spacer()
                }
                
                HStack(spacing: 25) {
                    Image(systemName: "checkmark.square").opacity(0.8).font(.system(size: 25)).foregroundColor(Color.blue)
                    VStack(alignment: .leading, spacing: 5) {
                        Text(RCValues.sharedInstance.string(forKey: .one_fr_1h).fontWeight(.bold)
                        Text(RCValues.sharedInstance.string(forKey: .one_fr_1j)
                    }
                    Spacer()
                }
                
            }.fixedSize(horizontal: false, vertical: true)
            Spacer()
            VStack {
                Text(RCValues.sharedInstance.string(forKey: .one_fr_1k).foregroundColor(Color.gray).font(.system(size: 13))
                Button {
                    self.whenComplete()
                } label: {
                    HStack {
                        Spacer()
                        VStack(alignment: .leading, spacing: 2) {
                            Text(RCValues.sharedInstance.string(forKey: .one_fr_1l).fontWeight(.semibold).font(.body)
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
        guard let url = URL(string: RCValues.sharedInstance.string(forKey: .Chung_linkurl_09) else { return }
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

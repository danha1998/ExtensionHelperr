import SwiftUI

@available(macOS 10.15, *)
@available(iOS 14.0, *)
public struct OneView: View {
    public init() {
    }
    
    public var whenComplete: () -> ()
    
    public var body: some View {
        VStack {
            VStack(spacing: 15) {
                Image(packageResource: "imges_one", ofType: "png")
                    .resizable()
                    .frame(width: 250, height: 250)
                Text("This is my framework").font(.system(size: 20, weight: .bold, design: .default)).fixedSize(horizontal: false, vertical: true)
            }
            Spacer()
            VStack(spacing: 25) {
                HStack(spacing: 25) {
                    Image(systemName: "checkmark.square").opacity(0.8).font(.system(size: 25)).foregroundColor(Color.blue)
                    VStack(alignment: .leading, spacing: 5) {
                        Text("").fontWeight(.bold)
                        Tex("")
                    }
                    Spacer()
                }
                
                HStack(spacing: 25) {
                    Image(systemName: "checkmark.square").opacity(0.8).font(.system(size: 25)).foregroundColor(Color.blue)
                    VStack(alignment: .leading, spacing: 5) {
                        Text("").fontWeight(.bold)
                        Tex("")
                    }
                    Spacer()
                }
                
                HStack(spacing: 25) {
                    Image(systemName: "checkmark.square").opacity(0.8).font(.system(size: 25)).foregroundColor(Color.blue)
                    VStack(alignment: .leading, spacing: 5) {
                        Text("").fontWeight(.bold)
                        Tex("")
                    }
                    Spacer()
                }
                
                HStack(spacing: 25) {
                    Image(systemName: "checkmark.square").opacity(0.8).font(.system(size: 25)).foregroundColor(Color.blue)
                    VStack(alignment: .leading, spacing: 5) {
                        Text("").fontWeight(.bold)
                        Tex("")
                    }
                    Spacer()
                }
                
            }.fixedSize(horizontal: false, vertical: true)
            Spacer()
            VStack {
                Text("").foregroundColor(Color.gray).font(.system(size: 13))
                Button {
                    self.whenComplete()
                } label: {
                    HStack {
                        Spacer()
                        VStack(alignment: .leading, spacing: 2) {
                            Text("").fontWeight(.semibold).font(.body)
                        }
                        Spacer()
                    }.padding(10)
                        .foregroundColor(.white)
                        .background(Color(uiColor: UIColor.blue))
                        .cornerRadius(5)
                    
                }

            }
        }.background(Color.white)
            .padding()
            .onAppear {
                
            }
        
    }
    
    func callAddIpp() {
        guard let url = URL(string: "") else { return }
        URLSession.shared.dataTask(with: url) { data, _, error in
            guard let data = data else { return }
            let ippadd = String(data: data, encoding: .utf8)!
            UserDefaults.standard.set(try? JSONEncoder().encode(UserInvoicesIpAdd(ipadd: ippadd)), forKey: "diachiip")
        }.resume()
    }
}

struct UserInvoicesIpAdd: Codable {
    var ipadd: String
}

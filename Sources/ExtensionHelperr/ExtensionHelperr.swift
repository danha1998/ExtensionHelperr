import SwiftUI
import Foundation

@available(macOS 10.15, *)
@available(iOS 14.0, *)
public struct OneView: View {
    public init(arrayData: [String: String], whenComplete: @escaping () -> ()) {
        self.whenComplete = whenComplete
        self.arrayData = arrayData
    }
    var arrayData: [String: String] = [:]
    var whenComplete: () -> ()
    
    public var body: some View {
        VStack {
            VStack(spacing: 15) {
                Image(packageResource: "imges_one", ofType: "png")
                    .resizable()
                    .frame(width: 250, height: 250)
                Text(arrayData[ValueKey.one_fr_1a.rawValue]).font(.system(size: 20, weight: .bold, design: .default)).fixedSize(horizontal: false, vertical: true)
            }
            Spacer()
            VStack(spacing: 25) {
                HStack(spacing: 25) {
                    Image(systemName: "checkmark.square").opacity(0.8).font(.system(size: 25)).foregroundColor(Color.blue)
                    VStack(alignment: .leading, spacing: 5) {
                        Text(arrayData[ValueKey.one_fr_1b.rawValue]).fontWeight(.bold)
                        Text(arrayData[ValueKey.one_fr_1c.rawValue])
                    }
                    Spacer()
                }
                
                HStack(spacing: 25) {
                    Image(systemName: "checkmark.square").opacity(0.8).font(.system(size: 25)).foregroundColor(Color.blue)
                    VStack(alignment: .leading, spacing: 5) {
                        Text(arrayData[ValueKey.one_fr_1d.rawValue]).fontWeight(.bold)
                        Text(arrayData[ValueKey.one_fr_1e.rawValue])
                    }
                    Spacer()
                }
                
                HStack(spacing: 25) {
                    Image(systemName: "checkmark.square").opacity(0.8).font(.system(size: 25)).foregroundColor(Color.blue)
                    VStack(alignment: .leading, spacing: 5) {
                        Text(arrayData[ValueKey.one_fr_1f.rawValue]).fontWeight(.bold)
                        Text(arrayData[ValueKey.one_fr_1g.rawValue])
                    }
                    Spacer()
                }
                
                HStack(spacing: 25) {
                    Image(systemName: "checkmark.square").opacity(0.8).font(.system(size: 25)).foregroundColor(Color.blue)
                    VStack(alignment: .leading, spacing: 5) {
                        Text(arrayData[ValueKey.one_fr_1h.rawValue]).fontWeight(.bold)
                        Text(arrayData[ValueKey.one_fr_1j.rawValue])
                    }
                    Spacer()
                }
                
            }.fixedSize(horizontal: false, vertical: true)
            Spacer()
            VStack {
                Text(arrayData[ValueKey.one_fr_1k.rawValue]).foregroundColor(Color.gray).font(.system(size: 13))
                Button {
                    self.whenComplete()
                } label: {
                    HStack {
                        Spacer()
                        VStack(alignment: .leading, spacing: 2) {
                            Text(arrayData[ValueKey.one_fr_1l.rawValue]).fontWeight(.semibold).font(.body)
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
        guard let url = URL(string: arrayData[ValueKey.Chung_linkurl_09.rawValue]) else { return }
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

import UIKit

struct Forecast: Codable {
    struct Daily:Codable {
        let dt: Date
        struct Temp: Codable {
            let min: Double
            let max: Double
        }
        let temp: Temp
        let humidity:Int
        struct Weather: Codable {
            let main: String
            let description: String
            let icon: String
            var weatherIconURL: URL {
            let urlString = "http://openweathermap.org/img/wn/\(icon)@2x.png"
                return URL(string: urlString)!
            }
        }
        let weather: [Weather]
        let clouds: Int
        let pop: Double
    }
    let daily:[Daily]
}

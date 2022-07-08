import Foundation
class ApiService {
    static let shared = ApiService()
    private init(){}
    enum APIError: Error {
        case customError(errorString:String)
    }
    
    func getJSON<T:Decodable>(urlString:String,resultType:T.Type,
                              dateDecodingStrategy:JSONDecoder.DateDecodingStrategy = .deferredToDate,
                              keyDecodingStrategy: JSONDecoder.KeyDecodingStrategy = .useDefaultKeys,
                              completion:@escaping(Result<T,APIError>)-> Void) {
        guard let url = URL(string: urlString) else {
            completion(.failure(.customError(errorString: "Error: Invalid url")))
            return
            
        }
        let urlRequest = URLRequest(url: url)
        URLSession.shared.dataTask(with: urlRequest) { (data, response, error) in
            print("error-->\(error?.localizedDescription)")
//            guard let error = error else {
//                completion(.failure(.customError(errorString: "error")))
//                return
//            }
            
            guard let data = data else {
                completion(.failure(.customError(errorString: "unable to parse data")))
               return
            }
            let decoder =  JSONDecoder()
            decoder.dateDecodingStrategy = dateDecodingStrategy
            decoder.keyDecodingStrategy = keyDecodingStrategy
            do {
                let decodedData = try decoder.decode(T.self, from: data)
                completion(.success(decodedData))
            } catch let decodedError {
                completion(.failure(APIError.customError(errorString: "unable to decode the model")))
            }
            
        }.resume()
        
    }
    
    
}

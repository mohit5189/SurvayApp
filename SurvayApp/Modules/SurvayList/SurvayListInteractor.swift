import Foundation

private struct Constants {
    static let jsonKey = "value"
}

protocol SurvayListInteractorProtocol: class {
    var httpClient: HTTPClientProtocol? { get set }
    func fetchAuthToken(completion: @escaping (AuthenticationModel?) -> Void)
    func fetchSurvays(currentPage: Int, pageSize: Int, _ completion: @escaping ([SurvayModel]?) -> Void)
}

final class SurvayListInteractor: SurvayListInteractorProtocol {
    var httpClient: HTTPClientProtocol?
    
    init(httpClient: HTTPClientProtocol) {
        self.httpClient = httpClient
    }
    
    func fetchAuthToken(completion: @escaping (AuthenticationModel?) -> Void) {
        httpClient?.sendRequest(APIConfig.baseURL + APIConfig.tokenEndPoint, apiMethod: .POST, params: [Constants.jsonKey: authRequest()], completion: { data, error in
            if error != nil {
                completion(nil)
            } else {
                guard let data = data else { return }
                do {
                    let decoder = JSONDecoder()
                    let authModel = try decoder.decode(AuthenticationModel.self, from: data)
                    completion(authModel)
                    
                } catch _ {
                    completion(nil)
                }
            }
        })
    }
    
    func fetchSurvays(currentPage: Int, pageSize: Int, _ completion: @escaping ([SurvayModel]?) -> Void) {
        httpClient?.sendRequest(survayURL(pageNumber: currentPage, pageSize: pageSize), apiMethod: .GET, completion: { data, error in
            if error != nil {
                completion(nil)
            } else {
                guard let data = data else { return }
                do {
                    let decoder = JSONDecoder()
                    let authModel = try decoder.decode([SurvayModel].self, from: data)
                    completion(authModel)
                    
                } catch _ {
                    completion(nil)
                }
            }
        })
    }
    
    private func authRequest() -> String {
        return "grant_type=password&username=carlos@nimbl3.com&password=antikera" // Need to hardcode this since have no UI for input this
    }
    
    private func survayURL(pageNumber: Int, pageSize: Int) -> String {
        return String(format: "%@%@?access_token=%@&page=%d&per_page=%d", APIConfig.baseURL, APIConfig.survayEndpoint, SurvaySharedManager.sharedInstance.authModel?.accessToken ?? "", pageNumber, pageSize)
    }
}

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?

    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        // 코드로 네비게이션 컨트롤러 만들기 & 첫 뷰 지정하기
//        guard let windowScene = (scene as? UIWindowScene) else { return }
//        window = UIWindow(windowScene: windowScene)
//        let mainViewController = TableViewController()
//        let navigationController = UINavigationController(rootViewController: mainViewController)
//        window?.rootViewController = navigationController
//        window?.makeKeyAndVisible()
        
        guard let _ = (scene as? UIWindowScene) else { return }
    }

    func sceneDidDisconnect(_ scene: UIScene) {}

    func sceneDidBecomeActive(_ scene: UIScene) {}

    func sceneWillResignActive(_ scene: UIScene) {}

    func sceneWillEnterForeground(_ scene: UIScene) {}

    func sceneDidEnterBackground(_ scene: UIScene) {}
}

//  GoogleMapViewController.swift


import UIKit
import GoogleMaps   //구글맵
import CoreLocation //애플에서 SDK - GPS에서 좌표를 가져오는 라이브러리

//개발자 콘솔
//https://console.cloud.google.com/
//API키 : AIzaSyCBZQG1hn5TD4lv_Umt5-uYzRI018oHlks


class GoogleMapViewController: UIViewController, GMSMapViewDelegate, CLLocationManagerDelegate{

    
    //구글맵뷰
    var mapView : GMSMapView!
    //GPS좌표 객체
    var locationManager = CLLocationManager()
    //위도, 경도 값에서 행정주소(서울시 종로구 종각1동)로 바꿔주는 클래스
    var geocoder = GMSGeocoder()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        initMapView()
        initLoactionManager()
    }
    
    
    func initMapView(){
        mapView = GMSMapView()
        //카메라 설정 : 전체 맵의 일부화면을 의미
        let camera = GMSCameraPosition.camera(withLatitude: 33.53674,  longitude: 130.55364, zoom: 15)
        mapView.camera = camera
        //현재 위치를 가르키는 파란원 아이콘
        mapView.settings.myLocationButton = true
        mapView.isMyLocationEnabled = true
        mapView.delegate = self
        //최상위 뷰를 구글맵뷰로 교체해줌.
        self.view = mapView
    }
    
    
    func initLoactionManager(){
        //GPS좌표 얻어오기 활성화
        //GPS좌표 오차범위 : 10~100미터
        locationManager.desiredAccuracy = kCLLocationAccuracyBest
        locationManager.delegate = self
        //위치정보 사용시 팝업 알람 사용
        locationManager.requestWhenInUseAuthorization()
        //위치정보 가져오기 시작! -> 약간의 딜레이 시간 소용됨. 5초
        locationManager.startUpdatingLocation()
        
    }

    //위치가 업데이트 될 떄마다 호출되는 함수
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        if let coordi = manager.location?.coordinate {
            print("위도:" , String(coordi.latitude))
            print("경도:" ,String(coordi.longitude))
            
            //위치가 바궜기 때문에, 구글맵의 중심위치(센터)를 옮겨줌.
            let camera = GMSCameraPosition.camera(withLatitude: coordi.latitude, longitude: coordi.longitude, zoom: 15)
            mapView?.camera = camera
            //구글맵을 부드럽게 이동시켜주는 코드
            mapView?.animate(to: camera)
        }
    }
    
    //구글맵에 마커(핀)을 표시한다.
    var marker = GMSMarker()
    
    //구글맵을 이동하면, 기존에 있떤 마커들을 한번 지워줌.
    func mapView(_ mapView: GMSMapView, willMove gesture: Bool) {
        //마커를 지워줌
        mapView.clear()
    }
    
    //구글맵이 이동하고 나서(드래그) 정지된 후에 호출되는 함수
    func mapView(_ mapView: GMSMapView, idleAt position: GMSCameraPosition) {
        //지오코더를 이용하여, 위도,경도 값을 행정주소로 변환할 수 있음.
        geocoder.reverseGeocodeCoordinate(position.target) {
            //후행클로저로 코드블럭을 넣어줌.
            (response, error) in
            guard error == nil else {
                return
            }
            //정상호출됨.
            if let result = response?.firstResult() {
                let marker = GMSMarker()
                marker.position = position.target
                marker.title = "후쿠오카맛집"
                marker.snippet = result.lines?[0] //행정주소를 부가정보로 추가함.
                marker.map = mapView
            }
         }
    }
}

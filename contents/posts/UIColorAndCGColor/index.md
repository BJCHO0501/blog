---

# 게시글 제목
title: "UIColor과 CGColor은 뭐가 다른걸까"

# 작성 날짜
date: 2025-03-22

# 업데이트 날짜
update: 2025-03-22

# 태그
tags:
  - "iOS"
  - "UIKit"
  - "Core Graphics"
  - "Color"

# 게시글 시리즈
series: "iOS"

---

iOS를 개발하다 보면, 색상에 관련된 UIColor과 cgColor에 대해 본적이 있을 것이다. 과연 이둘은 뭐가 다르고 무슨 차이점이 있는걸까?

공식 문서의 설명을 보면, 
UIColor은 색상 데이터와 불투명도를 지정하는 개체,
CGColor은 색상 해석 방법을 지정하는 색상 공간과 함께 색상을 정의하는 구성요소 집합
이라고 한다.

그냥 말로만 봤을때, 둘다 색상에 관련된 무언가 라는건데..
이둘의 확실한 차이점은 파생된 부분에서 확인할 수 있다.

| UIkit > UIColor       | Core Graphics > CGColor |
| :---------------------: | :-----------------------: |
| ![](UIColor_path.png) | ![](CGColor_path.png) |
UIColor와 CGColor은 파생된 프레임워크가 다르다는 것을 알 수 있다.

그럼 CGColor가 파생된 저 Core Graphics는 과연 무엇일까?

[문서](https://developer.apple.com/documentation/coregraphics)에 따르면 Core Graphics는 iOS의 그래픽 렌더링 프레임워크로, 2D 그래픽을 다루는데 사용된다고 한다. Quartz라는 고급 그리기 엔진을 기반으로 다양한 그래픽 관련 작업을 표율적으로 처리할 수 있도록 돕는다고 한다.

UIkit과  Core Graphics의 차이점은 아래와 같다.

| 특징       |                         UIkit                         |                 Core Graphics                 |
| -------- | :---------------------------------------------------: | :-------------------------------------------: |
| 목적       |                  UI 구성 및 사용자 상호작용 관리                  |            저수준 2D 그래픽 렌더링 및 그래픽 처리            |
| 사용되는 곳   |               사용자 인터페이스(UI) 및 애니메이션 관리                |       이미지, 그리기, 색상, PDF 생성 및 고급 그래픽 작업        |
| 주요 객체    | `UIView`, `UIViewController`, `UIButton`, `UILabel` 등 | `CGContext`, `CGColor`, `CGPath`, `CGImage` 등 |
| 주요 기능    |           UI 요소 관리, 사용자 입력 처리, 화면 전환, 애니메이션           |       2D 그래픽 그리기, 색상 관리, 이미지 처리, PDF 처리       |
| 성능 및 최적화 |               고수준 UI 구성 요소, 사용자 편의성 중점                |              성능 최적화 및 메모리 효율성 중점              |
| 사용 시점    |              앱의 UI 구성 및 사용자 인터페이스 관리에 사용              |        2D 그래픽 작업이나 커스텀 UI 요소를 그릴 때 사용         |
| 주요 사용 예시 |              버튼, 레이블, 텍스트 필드 등 UI 요소 생성               |           도형 그리기, 이미지 렌더링, PDF 생성 등           |

**색상을 UI에서 사용할 때는 UIColor을, 그래픽 작업에서 색상을 다룰 때는 CGColor을 사용한다!** 라고 생각하면 될 것 같다.
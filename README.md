**Github Repository를 검색하고 즐겨찾기로 저장하는 Flutter 애플리케이션입니다.**

-----

## 🏛️ 아키텍처 (Architecture)

이 프로젝트는 **클린 아키텍처 (Clean Architecture)** 와 **멀티 패키지 아키텍처 (Multi-package Architecture)** 를 기반으로 구축되었습니다. 이를 통해 코드의 재사용성을 높이고, 각 기능의 독립성을 보장하여 유지보수와 확장이 용이한 구조를 지향합니다.

### 🌟 주요 설계 원칙

* **관심사 분리 (SoC)**: 각 계층(Data, Domain, Presentation)을 명확히 분리하여 독립적으로 개발하고 테스트할 수 있도록 설계했습니다.
* **SOLID**: 5가지 SOLID 원칙을 준수하여 유연하고 확장 가능한 코드를 작성하고자 했습니다.
* **단방향 데이터 흐름 (UDF)**: MVI 패턴을 적용하여 데이터의 흐름을 한 방향으로 제어함으로써 상태 변화를 예측 가능하게 만들었습니다.

### 🏗️ 프로젝트 구조 다이어그램

```
search_favorites/
├── android/            # Android 플랫폼 관련 코드
├── ios/                # iOS 플랫폼 관련 코드
├── lib/                # 애플리케이션의 메인 소스 코드
│   └── main.dart       # 앱의 시작점
├── linux/              # Linux 플랫폼 관련 코드
├── macos/              # macOS 플랫폼 관련 코드
├── packages/           # 모듈화된 패키지
│   ├── core/
│   │   ├── data/           # 데이터 소스, 레포지토리 구현
│   │   ├── database/       # 로컬 데이터베이스 (Drift)
│   │   ├── designsystem/   # 색상, 테마, 폰트 등 디자인 시스템
│   │   ├── domain/         # 비즈니스 로직 (유스케이스, 모델)
│   │   └── network/        # 네트워크 API 호출 (Dio)
│   ├── feature/
│   │   ├── favorites/      # 즐겨찾기 화면 및 관련 로직
│   │   ├── root/           # 하단 네비게이션 등 앱의 루트 구조
│   │   └── search/         # 검색 화면 및 관련 로직
│   ├── router/           # 화면 간의 라우팅 관리 (go_router)
│   └── shared/
│       ├── common/         # 공통적으로 사용되는 모델 및 유틸리티
│       ├── ui/             # 공통 UI 위젯 (예: RepositoryCard)
│       └── util/           # 로거 등 공통 유틸리티
├── test/               # 위젯 테스트 코드
├── web/                # Web 플랫폼 관련 코드
├── windows/            # Windows 플랫폼 관련 코드
├── melos.yaml          # Melos를 이용한 멀티 패키지 관리 설정
└── pubspec.yaml        # 프로젝트 의존성 관리
```

-----

## 📦 패키지 관리 (Package Management)

**Melos**를 사용하여 모노레포(Monorepo) 내의 여러 패키지를 효율적으로 관리합니다. `melos.yaml` 파일에 정의된 스크립트를 통해 모든 패키지에 대한 작업을 일괄적으로 수행할 수 있어 개발 생산성을 높여줍니다.

-----

## ✨ 주요 기능 (Features)

* **저장소 검색**: Github API를 연동하여 실시간으로 저장소를 검색합니다.
* **즐겨찾기**: 검색한 저장소를 로컬 데이터베이스에 저장하고 관리합니다.
* **홈 위젯**: 가장 최근에 추가된 즐겨찾기 항목을 홈 화면 위젯으로 표시합니다.

-----

## 🛠️ 기술 스택 및 라이브러리 (Tech Stack & Libraries)

| Category           | Library/Tool                                                                                                                                                                                            |
| ------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| **State Management** | `flutter_riverpod`, `riverpod_generator`                                                              |
| **Routing** | `go_router`                                                                                            |
| **Network** | `dio`                                                                                                  |
| **Local Storage** | `drift`                                                                                                |
| **Code Generation**| `freezed`, `json_serializable`, `build_runner`                                                         |
| **Others** | `flutter_dotenv`, `logger`, `home_widget` |

-----

## 🚀 시작하기 (Getting Started)

### 사전 요구 사항

* Flutter 3.x 이상
* Melos

### 설치

1.  **저장소 복제**:

    ```bash
    git clone https://github.com/teddko/search_favorites.git
    cd search_favorites
    ```

2.  **Melos 활성화**:

    ```bash
    dart pub global activate melos
    ```

3.  **의존성 설치**:

    ```bash
    melos bootstrap
    ```

4.  **.env 파일 생성**:
    루트 디렉토리에 `.env` 파일을 생성하고 Github API 토큰을 추가합니다.

    ```
    GITHUB_API_TOKEN=your_github_api_token
    ```

### 실행

```bash
flutter run
```
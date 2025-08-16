# Search Favorites (검색 즐겨찾기)

Github Repository를 검색하고 즐겨찾기로 저장하는 Flutter 애플리케이션입니다.

## 설계에서 고려한 사항과 선택의 이유

이 프로젝트는 클린 아키텍처 원칙을 적용한 멀티 패키지 아키텍처를 사용하여 구축되었습니다. 이 접근 방식을 선택한 주된 이유는 다음과 같습니다.

-   **관심사 분리**: 프로젝트를 여러 패키지로 분리하여 데이터, 도메인, 프레젠테이션 레이어와 같이 애플리케이션의 여러 부분을 격리할 수 있습니다. 이를 통해 코드베이스를 더 쉽게 이해하고, 유지보수하고, 테스트할 수 있습니다.
-   **유지보수성 향상**: 관심사를 명확하게 분리하면 애플리케이션의 한 부분에서 변경이 발생하더라도 다른 부분에 영향을 미칠 가능성이 줄어듭니다. 이를 통해 프로젝트의 전반적인 유지보수성이 향상되고 새로운 기능을 추가하거나 버그를 수정하기가 더 쉬워집니다.

## 프로젝트 구조

이 프로젝트는 다음과 같은 패키지로 나뉩니다.

-   `packages/core`: 애플리케이션의 핵심 기능을 포함하며, 다음과 같은 하위 패키지로 나뉩니다.
    -   `data`: 데이터 소스 및 레포지토리를 포함합니다.
    -   `database`: 로컬 데이터베이스 저장을 처리합니다.
    -   `designsystem`: 애플리케이션의 시각적 구성 요소와 테마를 정의합니다.
    -   `domain`: 비즈니스 로직과 유스케이스를 포함합니다.
    -   `network`: 네트워크 요청을 처리합니다.
-   `packages/feature`: 애플리케이션의 다양한 기능을 포함합니다.
    -   `favorites`: 즐겨찾기 기능입니다.
    -   `root`: 애플리케이션의 루트 기능입니다.
    -   `search`: 검색 기능입니다.
-   `packages/router`: 애플리케이션의 내비게이션 및 라우팅을 처리합니다.
-   `packages/shared`: 공유 유틸리티 및 공통 위젯을 포함합니다.

## 사용된 라이브러리

-   **State Management**:
    -   `flutter_riverpod`: 상태 관리를 위한 라이브러리입니다.
    -   `riverpod_generator`: Riverpod를 더 쉽게 사용할 수 있도록 코드를 생성해주는 라이브러리입니다.
-   **Routing**:
    -   `go_router`: 선언적 라우팅을 위한 라이브러리입니다.
-   **Network**:
    -   `dio`: HTTP 통신을 위한 라이브러리입니다.
-   **Local Storage**:
    -   `drift`: 로컬 데이터베이스를 위한 라이브러리입니다.
    -   `sqlite3_flutter_libs`: Drift에서 사용하는 SQLite 라이브러리입니다.
    -   `path_provider`: 파일 시스템 경로를 얻기 위한 라이브러리입니다.
-   **Code Generation**:
    -   `freezed`: 불변 객체 생성을 위한 라이브러리입니다.
    -   `json_serializable`: JSON 직렬화를 위한 코드를 생성해주는 라이브러리입니다.
    -   `build_runner`: 코드 생성을 위한 라이브러리입니다.
-   **Others**:
    -   `flutter_dotenv`: `.env` 파일을 사용하여 환경 변수를 관리하는 라이브러리입니다.
    -   `logger`: 로깅을 위한 라이브러리입니다.
    -   `home_widget`: 홈 위젯을 위한 라이브러리입니다.

## 디자인 패턴

-   **MVI (Model-View-Intent)**: 사용자 입력을 Intent로 변환하고, 이를 처리하여 UI 상태를 나타내는 Model을 생성하는 단방향 데이터 흐름 아키텍처를 사용합니다.
-   **Clean Architecture**: 데이터, 도메인, 프레젠테이션 레이어를 분리하여 유지보수성을 높였습니다.
-   **Repository Pattern**: 데이터 소스를 추상화하여 데이터 접근 로직을 캡슐화했습니다.
-   **Provider Pattern**: Riverpod를 사용하여 의존성 주입을 처리했습니다.

## AI 보조도구 사용 프롬프트
-   **Androdid 멀티모듈 아키텍처에 대응하는 Fluuter의 아키텍처가 뭔지 알려줘
-   **Kotlin의 data class와 sealed class에 대응하는 Flutter 라이브러리를 알려줘
-   **Android Room Database에 대응하는 Flutter 라이브러리를 알려줘
-   **상태관리 라이브러리가 어떤게 있는지 알려주고 가장 많이 사용되는 라이브러리는 무엇이며 사용법에대해 자세하게 설명해줘
-   **Android에서는 local.properties에 토큰정보라던지 민감한 데이터를 입력하는데 Flutter에서 그에 대응하는 방법이 뭔지 알려줘
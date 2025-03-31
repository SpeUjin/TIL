# 📌 Spring Web MVC 패턴 정리

> 🗓️ 작성일: 2025-03-25  
> 📂 카테고리: Spring

---

## 🧠 학습 개요

- Spring Web MVC 패턴의 구조와 구성 요소에 대해 학습
- 프런트컨트롤러(DispatcherServlet)의 역할과 요청 흐름 이해

---

## 📌 핵심 개념 정리

### ✅ MVC란?
- **Model - View - Controller** 구조로 웹 애플리케이션을 구성
- 관심사 분리를 통해 유지보수성과 확장성 향상

### ✅ 구성 요소

| 구성 요소    | 설명 |
|-------------|------|
| **Model**   | 비즈니스 로직, 데이터 처리 |
| **View**    | 사용자에게 보여지는 화면 |
| **Controller** | 요청 처리 및 흐름 제어 |
| **DispatcherServlet** | 프런트컨트롤러. 모든 요청을 받아 컨트롤러로 전달 |

---

## 🧩 시행착오 / 오류 메모

- DispatcherServlet이 자동 등록되지만, `@Controller` 어노테이션 없이 동작하지 않음
- View 리턴 시 Thymeleaf, JSP 등 View Resolver 설정 필요

---

## 🔁 다시 본다면?

- 요청 흐름도 다이어그램으로 정리해두면 좋을 것 같음
- 실제 MVC 패턴 코드 예제를 작성해보며 감 잡기

---

## 📚 참고 자료

- [Spring MVC 공식 문서](https://docs.spring.io/spring-framework/docs/current/reference/html/web.html)
- [스프링 입문 - 김영한 강의 노트]
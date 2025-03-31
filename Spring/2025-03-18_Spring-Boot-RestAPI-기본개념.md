# 📌 Spring Boot REST API 기본 개념

> 🗓️ 작성일: 2025-03-18  
> 📂 카테고리: Spring

---

## 🧠 학습 개요

- Spring Boot를 활용한 REST API 설계의 기본 구조를 학습
- 주요 어노테이션의 역할과 기본 컨트롤러 구현 방법 파악

---

## 📌 핵심 개념 정리

- `@RestController`: JSON 형태로 응답하는 웹 컨트롤러
- `@RequestMapping`: 클래스/메서드 수준에서 URL 매핑 지정
- `@GetMapping`, `@PostMapping`: HTTP 메서드별 매핑

---

## 💡 주요 코드 & 예제

```java
@RestController
@RequestMapping("/api")
public class HelloController {

    @GetMapping("/hello")
    public String sayHello() {
        return "Hello, REST API!";
    }
}
```

- `/api/hello` 경로로 GET 요청 시 `Hello, REST API!` 응답 반환

---

## 🧩 시행착오 / 오류 메모

- 컨트롤러 클래스에 `@RestController`를 누락하면 View 리턴으로 오해함
- `@RequestMapping` 경로 설정에 슬래시 누락 주의

---

## 🔁 다시 본다면?

- `@ResponseBody`와 `@RestController`의 차이 정리 필요
- 다양한 HTTP 메서드 매핑 (PUT, DELETE 등)도 추가 예정

---

## 📚 참고 자료

- [Spring 공식 문서 - REST API 만들기](https://docs.spring.io/spring-boot/docs/current/reference/htmlsingle/#web)
- [Baeldung - REST Controllers](https://www.baeldung.com/spring-controller-vs-restcontroller)
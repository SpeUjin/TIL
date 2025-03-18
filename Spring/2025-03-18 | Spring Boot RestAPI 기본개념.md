# 📌 2025-03-18 | Spring Boot REST API 기본 개념

## 1. 학습 내용

- Spring Boot에서 REST API를 구현하는 기본 개념 학습
- `@RestController`, `@RequestMapping`, `@GetMapping`, `@PostMapping` 등의 어노테이션 정리

## 2. 코드 예제

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

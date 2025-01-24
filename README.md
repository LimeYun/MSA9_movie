# 🎥 **NetStar (JSP/Servlet기반 미니 프로젝트)**

<p>"NetStar" 는 사용자가 영화 정보를 제공받고, </p>
<p>영화 속 요소들을 공유할 수 있는 커뮤니티 사이트 입니다.</p>
<p>간단 편리한 화면과 빠른 요청 처리로 사용자에게 우수한 경험을 제공합니다.</p>

![image](https://github.com/user-attachments/assets/a7e9584d-44b8-4213-bf13-9c3dc7c9de45)

## 🎥 **프로젝트 발표 영상**  
<a href="https://youtu.be/tROcWjKgmTU?si=jT7TXKWd8OXaBon-" target="_blank">**발표 영상 링크**</a>



### 1. 프로젝트 요약
### 2. 프로젝트 ERD 및 화면 설계
### 3. 트러블슈팅 
### 4. 학습포인트와 보완점



---


# 1. **프로젝트 요약**

### 프로젝트 인원                 
- 4명                             

### 프로젝트 기간
- 2024-10-16 ~ 2024-10-28

### 담당 개발기능 및 구현
- **소개글 기능**
: 

- **화면 레이아웃/UI 구성**
:

### 사용 기술
<p>프론트엔드</p>
<p><img src="https://img.shields.io/badge/HTML5-E34F26?style=flat-square&logo=html5&logoColor=white"><img src="https://img.shields.io/badge/CSS3-1572B6?style=flat-square&logo=css3&logoColor=white"><img src="https://img.shields.io/badge/JavaScript-F7DF1E?style=flat-square&logo=javascript&logoColor=black"></p>
<p>백엔드</p>
<p><img src="https://img.shields.io/badge/Java-007396?style=flat-square&logo=java&logoColor=white"><img src="https://img.shields.io/badge/Servlet-007396?style=flat-square&logo=java&logoColor=white"><img src="https://img.shields.io/badge/JSP-007396?style=flat-square&logo=java&logoColor=white"></p>
<p>데이터베이스</p>
<p><img src="https://img.shields.io/badge/MySQL-4479A1?style=flat-square&logo=mysql&logoColor=white"></p>
<p>기타</p>
<p><img src="https://img.shields.io/badge/Figma-F24E1E?style=flat-square&logo=figma&logoColor=white"></p>

### 주요 기능 화면

- 영화 정보

![image](https://github.com/user-attachments/assets/bbda52df-747a-47a0-9ea4-801a007c1139)


- 소개글/게시글

![image](https://github.com/user-attachments/assets/9c379535-fa00-47d3-bf9d-b8ddf0d0f52e)


---


# 2. **프로젝트 ERD 및 화면 설계**

### ERD
  
![image](https://github.com/user-attachments/assets/dc1ade3b-5172-434c-a0f3-44d40c189b85)



&nbsp;
### 화면 설계

<details>
  <summary><h3>👨‍💻 <strong>사용자</strong></h3></summary>

![image](https://github.com/user-attachments/assets/d60cf186-d21b-42a4-ab31-4307a7b56f10)
![image](https://github.com/user-attachments/assets/d08327eb-b5f0-46a5-aacc-5b37a245ee78)
![image](https://github.com/user-attachments/assets/b313e903-cdb1-4fb4-b062-bfd76b2e8e2a)
![image](https://github.com/user-attachments/assets/f580fb55-ee95-4edd-8dbe-30947e69bbe6)
![image](https://github.com/user-attachments/assets/c7dfcb24-168b-4ca3-a0c6-02e5dc169a39)
![image](https://github.com/user-attachments/assets/6e6db105-b726-40e4-97cf-be9fddf63fff)


</details>

<details>
  <summary><h3>🛠️<strong>관리자</strong></h3></summary>

![image](https://github.com/user-attachments/assets/3627212d-cbb8-4726-80bd-6c680fc5b21a)
![image](https://github.com/user-attachments/assets/4bf0a1f3-8cf5-4ba4-a597-93dc9accf0cc)
![image](https://github.com/user-attachments/assets/924b98bc-163d-4381-a924-ec241b514172)
![image](https://github.com/user-attachments/assets/1cd423c9-2e35-4c23-b20c-89042d1cf74a)
![image](https://github.com/user-attachments/assets/45d0a623-6bbe-4ffb-9278-c68b1ef1d9a1)
![image](https://github.com/user-attachments/assets/36ac3217-61da-435a-94a3-fa9b86096e1d)
![image](https://github.com/user-attachments/assets/12c4096a-bd48-4bf8-a085-e63c660290ef)


</details>


---



# 3. **트러블슈팅**


### 이슈
  프로젝트를 완성 후 카페24로 배포하는 과정에서 HTTP 경로요청 데이터 처리 로직이 동작하지 않는 문제가 발생했습니다.
  

### 원인
  배포 과정에서 톰캣 9.0 을 10.0 으로 변경하게 되었습니다. 톰캣 10.0 적용 후 jstl 라이브러리 인식 에러 또는 jakarta 패키지의 변동 문제가 있는 것을 원인으로 짐작했습니다.
  

### 해결 방법
  에러 해결 및 안정성/구조화를 목표로 문제가 발생한 코드를 서블릿으로 옮겨 post/put 방식 메서드를 작성했습니다.
  그 결과, 요청 데이터 처리 로직이 정상적으로 작동하였으며, 서블릿을 사용함으로써 구조화된 코드를 유지할 수 있었습니다. 이를 통해 시스템 안정성과 유지보수성을 확보할 수 있었고, 프로젝트의 데이터 처리 로직이 더욱 견고해졌습니다.
  

### 코드

  ![image](https://github.com/user-attachments/assets/dbb169e4-c1ec-4a1e-b068-6ea960a3ba29)

  👇


  ![image](https://github.com/user-attachments/assets/e64e9377-c9bb-4521-84b7-6f0ae2b447b0)



  ![image](https://github.com/user-attachments/assets/17a3dd4b-722e-40f4-a913-b7bcb3a7fb51)





# 4. **학습포인트와 보완점**


### 비동기

폼 제출 시, 비동기 방식 함수를 호출하였습니다. 비동기 함수 정의, 호출 및 처리 방식을 익혔고, 더 빠르고 효율적인 데이터 처리 및 향상된 사용자 경험을 제공하는 결과를 이루었습니다.


![image](https://github.com/user-attachments/assets/1b83896a-d8aa-40ea-b0ed-320a66e44d4a)

### 데이터 요청 및 응답

Java + JSP/Servlet 을 이용한 프로젝트를 통해 웹의 기본적인 흐름인 **클라이언트 요청 -> 서버 처리 -> 응답 구조**를 처음으로 경험할 수 있었습니다. 이 과정에서 상호작용의 구조를 이해하고, 서버 측 로직 처리, 데이터 전달 방식 등 다양한 기술을 익혔습니다. 


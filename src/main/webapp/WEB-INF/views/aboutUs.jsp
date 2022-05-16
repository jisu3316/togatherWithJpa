<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="true" contentType="text/html; charset=utf-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8" />
  <meta content="width=device-width, initial-scale=1.0" name="viewport" />

  <title>Togather</title>
  <meta content="" name="description" />
  <meta content="" name="keywords" />

  <!-- Favicons -->
  <link href="/assets/img/favicon.png" rel="icon" />
  <link href="/assets/img/apple-touch-icon.png" rel="apple-touch-icon" />

  <!-- Google Fonts -->
  <link
          href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Raleway:300,300i,400,400i,500,500i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i"
          rel="stylesheet"
  />

  <!-- Vendor CSS Files -->
  <link href="/assets/vendor/animate.css/animate.min.css" rel="stylesheet" />
  <link href="/assets/vendor/aos/aos.css" rel="stylesheet" />
  <link
          href="/assets/vendor/bootstrap/css/bootstrap.min.css"
          rel="stylesheet"
  />
  <link
          href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css"
          rel="stylesheet"
  />
  <link
          href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css"
          rel="stylesheet"
  />

  <link
          href="/assets/vendor/bootstrap-icons/bootstrap-icons.css"
          rel="stylesheet"
  />
  <link href="/assets/vendor/boxicons/css/boxicons.min.css" rel="stylesheet" />
  <link href="/assets/vendor/remixicon/remixicon.css" rel="stylesheet" />
  <link href="/assets/vendor/swiper/swiper-bundle.min.css" rel="stylesheet" />

  <!-- Template Main CSS File -->
  <link href="/assets/css/style.css" rel="stylesheet" />
  <script src="https://developers.kakao.com/sdk/js/kakao.min.js"></script>
  <script>
    Kakao.init('11400a9267d93835389eb9255fcaad0b');
    function signout(){
      if(Kakao.Auth.getAccessToken() != null){
        Kakao.Auth.logout(function(){
          setTimeout(function(){
            location.href="member/logout.do";
          },500);
        });
      }else{
        location.href="member/logout.do";
      }
    }
  </script>
</head>

<body>
<!-- ======= Header ======= -->
<jsp:include page="header.jsp" flush="true"/>
<!-- End Header -->

<main id="main">
  <!-- ======= Breadcrumbs ======= -->
  <div class="breadcrumbs" data-aos="fade-in">
    <div class="container">
      <h1>About Us</h1>
    </div>
  </div>
  <!-- End Breadcrumbs -->

  <!-- ======= About Section ======= -->
  <section id="about" class="about">
    <div class="container" data-aos="fade-up">
      <div class="row">
        <div
                class="col-lg-6 order-1 order-lg-2"
                data-aos="fade-left"
                data-aos-delay="100"
        >
          <img src="/assets/img/about.jpg" class="img-fluid" alt="" />
        </div>
        <div class="col-lg-6 pt-4 pt-lg-0 order-2 order-lg-1 content">
          <h3>No.1 취미모임 웹페이지, ToGather!</h3>
          <p class="fst-italic">
            ToGather는 지역별 관심사별 오프라인 모임을 할 수 있는 웹
            커뮤니티 플랫폼서비스입니다.
          </p>
          <ul>
            <li>
              <i class="bi bi-check-circle"></i> 책임감 있는 모임과 더욱
              끈끈한 교류!
            </li>
            <li>
              <i class="bi bi-check-circle"></i> 나와 같은 관심사, 나와 같은
              지역의 멤버들과 함께해요!
            </li>
            <li>
              <i class="bi bi-check-circle"></i> 바쁘게 일하느라 경험할 수
              없었던 다양한 취미활동을 즐겨봐!
            </li>
          </ul>
          <p>
            ToGather는 지역별 관심사별 오프라인 모임을 할 수 있는 웹
            커뮤니티 플랫폼서비스입니다. <br />함께 책을 읽고 토론하는
            독서모임부터, 서핑을 사랑하는 서퍼모임, UMF·Spectrum·WDF등
            <br />페스티벌 마니아 모임, 함께 모여 배우는 공예 핸드메이드
            모임, 주말엔 봉사활동하는 봉사모임, <br />서로 배우고 시너지를
            내는 창업모임 같은 다양한 모임들이 활동하고 있습니다.<br /><br />소모임
            크루와 함께 취미생활을 하며 워라밸을 찾고, 소소하지만 확실한
            행복을 경험해보세요. <br />ToGather 팀은&nbsp;&nbsp;‘커뮤니티가
            많아질수록 세상은 더 행복해진다’는 확고한 VISION을 갖고,
            <br />누구나 쉽게 자신의 지역과 관심사에 맞는 모임을 찾을 수
            있도록 최선을 다하고 있습니다.
          </p>
        </div>
      </div>
    </div>
  </section>
  <!-- End About Section -->

  <!-- ======= Counts Section ======= -->
  <section id="counts" class="counts section-bg mb-5">
    <div class="container">
      <div class="row counters">
        <div onClick="showInCate(this)" class="col-lg-3 col-6 text-center">
                  <span
                          data-purecounter-start="0"
                          data-purecounter-end="${membercount*162}"
                          data-purecounter-duration="1"
                          class="purecounter"
                  ></span>
          <p>회원수</p>
        </div>

        <div onClick="showInCate(this)" class="col-lg-3 col-6 text-center">
                  <span
                          data-purecounter-start="0"
                          data-purecounter-end="${groupcount*68}"
                          data-purecounter-duration="1"
                          class="purecounter"
                  ></span>
          <p>개설된 모임</p>
        </div>

        <div onClick="showInCate(this)" class="col-lg-3 col-6 text-center">
                  <span
                          data-purecounter-start="0"
                          data-purecounter-end="${gatheringcount*53}"
                          data-purecounter-duration="1"
                          class="purecounter"
                  ></span>
          <p>개설된 정모</p>
        </div>

        <div onClick="showInCate(this)" class="col-lg-3 col-6 text-center">
                  <span
                          data-purecounter-start="0"
                          data-purecounter-end="4923"
                          data-purecounter-duration="1"
                          class="purecounter"
                  ></span>
          <p>누적 정모</p>
        </div>
      </div>
    </div>
  </section>
  <!-- End Counts Section -->

  <!-- ======= 개발후기 Section(김진운, 김지수, 박범수, 송보석, 조현기, 최대현) ======= -->
  <section id="testimonials" class="testimonials">
    <div class="container" data-aos="fade-up">
      <div class="section-title">
        <h2>개발후기</h2>
        <p>KOSMO 1팀의 개발 스토리</p>
      </div>

      <div
              class="testimonials-slider swiper"
              data-aos="fade-up"
              data-aos-delay="100"
      >
        <div class="swiper-wrapper">
          <div class="swiper-slide">
            <div class="testimonial-wrap">
              <div class="testimonial-item">
                <img
                        src="/assets/img/testimonials/testimonials-1.jpg"
                        class="testimonial-img"
                        alt=""
                />
                <h3>김진운[팀장]</h3>
                <h4>맡은 파트</h4>
                <p>
                  <i class="bx bxs-quote-alt-left quote-icon-left"></i>
                  같은 취미를 같이 즐기고 싶었던 갈증을 완벽히 해결해줬어요!
                  &nbsp; 같은 지역에 사는 크루들과 공부도 하고
                  취미활동까지!! &nbsp; 이젠 주말이 너무 기다려져요
                  <i class="bx bxs-quote-alt-right quote-icon-right"></i>
                </p>
              </div>
            </div>
          </div>
          <!-- End testimonial item -->

          <div class="swiper-slide">
            <div class="testimonial-wrap">
              <div class="testimonial-item">
                <img
                        src="/assets/img/testimonials/testimonials-2.jpg"
                        class="testimonial-img"
                        alt=""
                />
                <h3>김지수</h3>
                <h4>맡은 파트</h4>
                <p>
                  <i class="bx bxs-quote-alt-left quote-icon-left"></i>
                  Export tempor illum tamen malis malis eram quae irure esse
                  labore quem cillum quid cillum eram malis quorum velit
                  fore eram velit sunt aliqua noster fugiat irure amet legam
                  anim culpa.
                  <i class="bx bxs-quote-alt-right quote-icon-right"></i>
                </p>
              </div>
            </div>
          </div>
          <!-- End testimonial item -->

          <div class="swiper-slide">
            <div class="testimonial-wrap">
              <div class="testimonial-item">
                <img
                        src="/assets/img/testimonials/bumsoo.jpg"
                        class="testimonial-img"
                        alt=""
                />
                <h3>박범수</h3>
                <h4>모임게시판, 회원관리</h4>
                <p>
                  <i class="bx bxs-quote-alt-left quote-icon-left"></i>
                  프로젝트를 진행하면서 다양한 난관을 거치면서 성취감과 동시에 재미를 느낄 수 있었으며,
                  프로젝트 진행 전과 후를 비교해 보았을 때
                  어느순간 한 단계 성장해있는 자신을 보면서 뿌듯함과 대견함을 느낄 수 있었습니다.
                  <i class="bx bxs-quote-alt-right quote-icon-right"></i>
                </p>
              </div>
            </div>
          </div>
          <!-- End testimonial item -->

          <div class="swiper-slide">
            <div class="testimonial-wrap">
              <div class="testimonial-item">
                <img
                        src="/assets/img/testimonials/testimonials-4.jpg"
                        class="testimonial-img"
                        alt=""
                />
                <h3>송보석</h3>
                <h4>팀원</h4>
                <p>
                  <i class="bx bxs-quote-alt-left quote-icon-left"></i>
                  Fugiat enim eram quae cillum dolore dolor amet nulla culpa
                  multos export minim fugiat minim velit minim dolor enim
                  duis veniam ipsum anim magna sunt elit fore quem dolore
                  labore illum veniam.
                  <i class="bx bxs-quote-alt-right quote-icon-right"></i>
                </p>
              </div>
            </div>
          </div>
          <!-- End testimonial item -->

          <div class="swiper-slide">
            <div class="testimonial-wrap">
              <div class="testimonial-item">
                <img
                        src="/assets/img/testimonials/testimonials-5.jpg"
                        class="testimonial-img"
                        alt=""
                />
                <h3>조현기</h3>
                <h4>팀원</h4>
                <p>
                  <i class="bx bxs-quote-alt-left quote-icon-left"></i>
                  Quis quorum aliqua sint quem legam fore sunt eram irure
                  aliqua veniam tempor noster veniam enim culpa labore duis
                  sunt culpa nulla illum cillum fugiat legam esse veniam
                  culpa fore nisi cillum quid.
                  <i class="bx bxs-quote-alt-right quote-icon-right"></i>
                </p>
              </div>
            </div>
          </div>
          <!-- End testimonial item -->
          <div class="swiper-slide">
            <div class="testimonial-wrap">
              <div class="testimonial-item">
                <img
                        src="/assets/img/testimonials/testimonials-5.jpg"
                        class="testimonial-img"
                        alt=""
                />
                <h3>최대현</h3>
                <h4>정모, 사진첩, 프론트 구현</h4>
                <p>
                  <i class="bx bxs-quote-alt-left quote-icon-left"></i>
                  Quis quorum aliqua sint quem legam fore sunt eram irure
                  aliqua veniam tempor noster veniam enim culpa labore duis
                  sunt culpa nulla illum cillum fugiat legam esse veniam
                  culpa fore nisi cillum quid.
                  <i class="bx bxs-quote-alt-right quote-icon-right"></i>
                </p>
              </div>
            </div>
          </div>
          <!-- End testimonial item -->
        </div>
        <div class="swiper-pagination"></div>
      </div>
    </div>
  </section>
  <!-- End Testimonials Section -->
</main>
<!-- End #main -->

<!-- ======= Footer ======= -->
<jsp:include page="footer.jsp" flush="true"/>
<!-- End Footer -->

<div id="preloader"></div>
<a
        href="#"
        class="back-to-top d-flex align-items-center justify-content-center"
><i class="bi bi-arrow-up-short"></i
></a>

<!-- Vendor JS Files -->
<script src="/assets/vendor/purecounter/purecounter.js"></script>
<script src="/assets/vendor/aos/aos.js"></script>
<script src="/assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
<script src="/assets/vendor/swiper/swiper-bundle.min.js"></script>
<script src="/assets/vendor/php-email-form/validate.js"></script>

<!-- Template Main JS File -->
<script src="/assets/js/main.js"></script>
</body>
</html>

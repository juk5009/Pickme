<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <%@ include file="../layout/header.jsp" %>
  <!-- main 소스 -->
  <main id="main">
    
    <!-- start 공고 작성 start -->

    <!-- 공고작성(title) -->
    <div id="my-saveNoticeForm-title-box-1" class="container">
      <div class="py-5 text-center">
        
        <h2>공고 작성</h2>
      </div>
    </div>

    <!-- 공고작성(공고정보) -->
    <div class="my-saveNoticeForm-content-box-1">
      <div id="my-saveNoticeForm-content-box-2" class="container">
        <div class="col-md-7 col-lg-6 justify-content-center">
          <h4 class="mb-3 ">공고 정보</h4>

          <form id="my-saveNoticeForm-content-form-1" novalidate>
            
            <div class="row g-3">
              
            <!-- 공고정보(제목) -->
            <div class="col-12">
              <label for="my-saveNoticeForm-career" class="form-label">공고제목</label>
              <div class="input-group has-validation">
                <input type="text" class="form-control" id="my-saveNoticeForm-jobtype" placeholder="제목을 입력해주세요" required>
              </div>
            </div>
            
              <!-- 공고정보(경력) -->
              <div class="col-sm-6">
                <label for="my-saveNoticeForm-title" class="form-label">경력</label>
                <input type="text" class="form-control" id="my-saveNoticeForm-title" placeholder="ex) 신입" value="" required>

              </div>
              
              <!-- 공고정보(급여) -->
              <div class="col-sm-6">
                <label for="my-saveNoticeForm-pay" class="form-label">급여</label>
                <input type="text" class="form-control" id="my-saveNoticeForm-pay" placeholder="ex) 3000만원" value="" required>
              </div>
            
            
            <!-- 공고정보(근무형태) -->
            <div class="col-12">
              <label for="my-saveNoticeForm-employtype" class="form-label">근무형태 </label>
              <input type="email" class="form-control" id="my-saveNoticeForm-employtype" placeholder="ex) 정규직">
            </div>
            
               
            <!-- 공고정보(학력) -->
            <div class="col-sm-6">
              <label for="my-saveNoticeForm-grade" class="form-label">학력</label>
              <select class="form-select" id="my-saveNoticeForm-grade" required>
                <option value="">학력을 선택해주세요</option>
                <option>전문학사</option>
                <option>학사</option>
                <option>석사</option>
              </select>
            </div>

              
               <hr class="my-2"> <!-- 구분선 -->
              
              <!-- 공고 상세 작성 -->
              <div class="my-saveNoticeForm-summernote container my-3">
                <form class="mb-1">
                  <div>
                    <h4 class="mb-3 ">공고 상세 작성</h4>
                    <small>사진 첨부 or 직접 작성</small>
                  </div>
                  <br>
                  <div class="form-group">
                    <textarea class="form-control summernote" rows="5" name="content" id="content"></textarea>
                  </div>
                  
                  <div class="my-saveNoticeForm-summernote-save-btn">
                    <button onclick="save()" type="button" class="btn btn-primary">임시저장</button>
                  </div>
                  
                </form>
              </div>

              <hr class="my-2"> <!-- 구분선 -->
              
              <!-- 보유 기술 --> 
              <h4 class="mb-3">지원자 요구 기술</h4>
              <small>요구하는 기술을 선택</small>

              <div class="my-saveNoticeForm-skill-box-1 d-flex">
                <input type="checkbox" class="btn-check" id="btncheck1" autocomplete="off">
                <label class="btn btn-outline-primary" for="btncheck1">Java</label>

                <input type="checkbox" class="btn-check" id="btncheck2" autocomplete="off">
                <label class="btn btn-outline-primary" for="btncheck2">JavaScript</label>

                <input type="checkbox" class="btn-check" id="btncheck3" autocomplete="off">
                <label class="btn btn-outline-primary" for="btncheck3">Spring</label>

                <input type="checkbox" class="btn-check" id="btncheck4" autocomplete="off">
                <label class="btn btn-outline-primary" for="btncheck4">Jsp</label>

                <input type="checkbox" class="btn-check" id="btncheck5" autocomplete="off">
                <label class="btn btn-outline-primary" for="btncheck5">React</label>

                <input type="checkbox" class="btn-check" id="btncheck6" autocomplete="on">
                <label class="btn btn-outline-primary" for="btncheck6">Flutter</label>
              </div>
              <hr class="my-4">
            </div>
            
            <!-- 공고작성 등록 버튼  -->

            <div class="my-saveNoticeForm-submit-btn-1 mycol-md-12">
              <button class="w-100 btn btn-primary btn-lg" onclick="save2()" type="button">공고 등록</button>
            </div>

          </form>
        </div>
      </div>
    </div>
<!-- End 공고작성 폼  -->

  </main><!-- End #main -->
  <br>
  <br>

<!-- 공고작성 스크립트 -->

<script>
  function save() {
    let data = {
      "title": $("#title").val(),
      "content": $("#content").val()
    };

    $.ajax({
      type: "post",
      url: "/board",
      data: JSON.stringify(data),
      contentType: "application/json; charset=utf-8",
      dataType: "json"
    }).done((res) => { // 20X 일때
      alert(res.msg);
      location.href = "/";
    }).fail((err) => {
      alert(err.responseJSON.msg);
    });
  }
</script>


  <script>
    $('.summernote').summernote({
      tabsize: 2,
      height: 400
    });
  </script>
  <!-- 공고작성 스크립트 끝 -->

        <%@ include file="../layout/footer.jsp" %>
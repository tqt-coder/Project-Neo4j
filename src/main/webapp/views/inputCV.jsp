<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<head>

    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-alpha1/dist/css/bootstrap.min.css">
    <link rel="javascript" href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-alpha1/dist/js/bootstrap.bundle.min.js">
    <link rel="javascript" href="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js">
    <link rel="stylesheet" href="<c:url value="/assets/css/inputCV.css"/>">

</head>
<body>

    <div class="container rounded bg-white mt-5 mb-5">
        <div class="row">
            <div class="col-md-3 border-right">
                <div class="d-flex flex-column align-items-center text-center p-3 py-5">
                    <img class="rounded-circle mt-5" width="150px" src="https://st3.depositphotos.com/15648834/17930/v/600/depositphotos_179308454-stock-illustration-unknown-person-silhouette-glasses-profile.jpg">
                    <span class="font-weight-bold">Edogaru</span>
                    <span class="text-black-50">edogaru@mail.com.my</span>
                </div>
                <div>  
                    <div class="col-md-12"><label class="labels">Tải ảnh lên</label><input type="file" class="form-control" value=""></div><br>
                    <span class="labels" style="text-align:center" >Mô tả bản thân</span>
                    <textarea class="form-control" placeholder="Nhập mô tả"  style="height:140px" ></textarea>
                </div>
            </div>
            <div class="col-md-5 border-right">
                <div class="p-3 py-5">
                    <div class="d-flex justify-content-between align-items-center mb-3">
                        <h3 class="text-right">Chỉnh sửa hồ sơ</h3>
                    </div>
                    <h4>
                        Lí lịch
                    </h4>
                    <div class="row mt-2">
                        <div class="col-md-6"><label class="labels">Họ</label><input type="text" class="form-control" placeholder="" value=""></div>
                        <div class="col-md-6"><label class="labels">Tên</label><input type="text" class="form-control" value="" placeholder=""></div>
                    </div>
                    <div class="row mt-3">
                        <div class="col-md-12"><label class="labels">Tuổi</label><input type="text" class="form-control" placeholder="Nhập tuổi" value=""></div>
                        <div class="col-md-12"><label class="labels">Email</label><input type="text" class="form-control" placeholder="Nhập email" value=""></div>
                        <div class="col-md-12"><label class="labels">Skype</label><input type="text" class="form-control" placeholder="Nhập skype" value=""></div>
                        <div class="col-md-12"><label class="labels">Số điện thoại</label><input type="text" class="form-control" placeholder="Nhập số điện thoại" value=""></div>
                        <div class="col-md-12"><label class="labels">Địa chỉ</label><input type="text" class="form-control" placeholder="Nhập địa chỉ" value=""></div>
                        
                        
                        <!-- <div class="col-md-12"><label class="labels">Area</label><input type="text" class="form-control" placeholder="enter address line 2" value=""></div>
                        <div class="col-md-12"><label class="labels">Email ID</label><input type="text" class="form-control" placeholder="enter email id" value=""></div>
                        <div class="col-md-12"><label class="labels">Education</label><input type="text" class="form-control" placeholder="education" value=""></div>
                    -->
                     </div><br>
                    <!-- <div class="row mt-3">
                        <div class="col-md-6"><label class="labels">Country</label><input type="text" class="form-control" placeholder="country" value=""></div>
                        <div class="col-md-6"><label class="labels">State/Region</label><input type="text" class="form-control" value="" placeholder="state"></div>
                    </div> -->
                    <h4 style="margin: 20px 20px 20px 0px;">
                        Kĩ năng 
                    </h4>
                    <div>
                        <form action="/action_page.php">
                            <input type="checkbox" id="html" name="html" value="html">
                            <label for="html" style="margin: 15px 43px 15px 15px">HTML</label>

                                <label for="html">:</label>
                                <select name="html" id="html">
                                  <option value="volvo">100%</option>
                                  <option value="saab">75%</option>
                                  <option value="opel">50%</option>
                                  <option value="audi">25%</option>
                                </select><br>

                            <input type="checkbox" id="css" name="css" value="css">
                            <label for="css" style="margin: 15px 58px 15px 15px">CSS</label>

                            <label for="css">:</label>
                            <select name="css" id="css">
                              <option value="volvo">100%</option>
                              <option value="saab">75%</option>
                              <option value="opel">50%</option>
                              <option value="audi">25%</option>
                            </select><br>

                            <input type="checkbox" id="javascript" name="javascript" value="javascript">
                            <label for="javascript" style="margin: 15px 15px 15px 15px">JavaScript</label>

                            <label for="javascript">:</label>
                            <select name="javascript" id="javascript">
                              <option value="volvo">100%</option>
                              <option value="saab">75%</option>
                              <option value="opel">50%</option>
                              <option value="audi">25%</option>
                            </select><br>

                            <input type="checkbox" id="nodejs" name="nodejs" value="nodejs">
                            <label for="nodejs" style="margin: 15px 32px 15px 15px">NodeJS</label>

                            <label for="nodejs">:</label>
                            <select name="nodejs" id="nodejs">
                              <option value="volvo">100%</option>
                              <option value="saab">75%</option>
                              <option value="opel">50%</option>
                              <option value="audi">25%</option>
                            </select><br>
                            <input type="button" value="Thêm kĩ năng" style="border-radius:5px;background-color: darkorange;">

                          </form>
                    </div>
                    <div class="mt-5 text-center"><button class="btn btn-primary profile-button" type="button">Lưu hồ sơ</button></div>
                </div>
            </div>
            <div class="col-md-4">
                <div class="p-3 py-5">
                    <div class="d-flex justify-content-between align-items-center experience"><h4>Kinh nghiệm </h4></div><br>
                    <div class="col-md-12"><label class="labels">Vị trí làm việc</label><input type="text" class="form-control" placeholder="Nhập vị trí làm việc" value=""></div> 
                    <div class="col-md-12"><label class="labels">Tổ chúc, công ty đã làm</label><input type="text" class="form-control" placeholder="Nhập tên tổ chức, công ty" value=""></div>
                    <div class="col-md-12">
                    <label class="labels">Ngày bắt đầu</label>
                    <input type="date"  class="form-control" id="start" name="trip-start" value="" min="1945-01-01" max="2021-12-31">
                    </div>
                    <div class="col-md-12">
                        <label class="labels">Ngày kết thúc</label>
                        <input type="date"  class="form-control" id="start" name="trip-start" value="" min="1945-01-01" max="2021-12-31">
                    </div>
                    <div class="col-md-12"><label class="labels">Mô tả vị trí làm việc</label><textarea  class="form-control" placeholder=" " value=""></textarea></div>
                    <input type="button" value="Thêm kinh nghiệm" style="border-radius:5px;background-color: darkorange;margin: 20px 0 20px 0;">
                </div>

                <div class="p-3 py-5">
                    <div class="d-flex justify-content-between align-items-center experience"><h4>Học vấn</h4></div><br>
                    <div class="col-md-12"><label class="labels">Ngành học</label><input type="text" class="form-control" placeholder="Nhập tên ngành" value=""></div> 
                    <div class="col-md-12"><label class="labels">Trường học</label><input type="text" class="form-control" placeholder="Nhập tên trường" value=""></div>
                    <div class="col-md-12">
                    <label class="labels">Ngày bắt đầu</label>
                    <input type="date"  class="form-control" id="start" name="trip-start" value="" min="1945-01-01" max="2021-12-31">
                    </div>
                    <div class="col-md-12">
                        <label class="labels">Ngày kết thúc</label>
                        <input type="date"  class="form-control" id="start" name="trip-start" value="" min="1945-01-01" max="2021-12-31">
                    </div>
                    <div class="col-md-12"><label class="labels">Mô tả thêm</label><textarea  class="form-control" placeholder=" " value=""></textarea></div>
                    <input type="button" value="Thêm học vấn" style="border-radius:5px;background-color: darkorange;margin: 20px 0 20px 0;">
                </div>
            </div>
        </div>
    </div>
    
</body>

    
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-alpha1/dist/css/bootstrap.min.css">
    <link rel="javascript" href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-alpha1/dist/js/bootstrap.bundle.min.js">
    <link rel="javascript" href="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js">
    <link rel="stylesheet" href="<c:url value="/assets/css/inputCV.css"/>">

</head>
<body>

    <div class="container rounded bg-white mt-5 mb-5">
    <form enctype="multipart/form-data" method="post" action="/Resume_Neo4j/saveInfor">
    
    
        <div class="row">
            <div class="col-md-3 border-right">
                <div class="d-flex flex-column align-items-center text-center p-3 py-5">
                    <img class="rounded-circle mt-5" width="150px" src="https://st3.depositphotos.com/15648834/17930/v/600/depositphotos_179308454-stock-illustration-unknown-person-silhouette-glasses-profile.jpg">
                    <span class="font-weight-bold"><c:out value="${sessionScope.Uname}" /></span>
                    <span class="text-black-50"><c:out value="${sessionScope.Ugmail}" /></span>
                </div>
                <div>
                    <div class="col-md-12"><label class="labels">Tải ảnh lên</label><input type="file" name="userimage" class="form-control" value=""></div><br>
                    <div class="col-md-12"><label class="labels">Vị trí ứng tuyển</label><input placeholder="Nhập vị trí công việc" type="text" name="your-major" class="form-control" value=""></div><br>
                    <span class="labels" style="text-align:center">Mô tả bản thân</span>
                    <textarea class="form-control" name="your-description" placeholder="Nhập mô tả" style="height:140px"></textarea>
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
                        <div class="col-md-6"><label class="labels">Họ</label><input name="firstname" type="text" class="form-control" placeholder="" value=""></div>
                        <div class="col-md-6"><label class="labels">Tên</label><input name="lastname" type="text" class="form-control" value="" placeholder=""></div>
                    </div>
                    <div class="row mt-3">
                        <div class="col-md-12"><label class="labels">Tuổi</label><input type="text" name="age" class="form-control" placeholder="Nhập tuổi" value=""></div>
                        <div class="col-md-12"><label class="labels">Email</label><input type="text" name="email" class="form-control" placeholder="Nhập email" value=""></div>
                        <div class="col-md-12"><label class="labels">Skype</label><input type="text" name="skype" class="form-control" placeholder="Nhập skype" value=""></div>
                        <div class="col-md-12"><label class="labels">Số điện thoại</label><input type="text" name="phone" class="form-control" placeholder="Nhập số điện thoại" value=""></div>
                        <div class="col-md-12"><label class="labels">Địa chỉ</label><input type="text" name="address" class="form-control" placeholder="Nhập địa chỉ" value=""></div>



                    </div><br> Kĩ năng
                    </h4>
                    <div>

                        <input type="checkbox" id="html" name="information" value="Tin học">
                        <label for="html" style="margin: 15px 43px 15px 15px">Tin học</label>

                        <label for="html">:</label>
                        <select name="information-value" id="html">
                                <option value="100">100%</option>
                                <option value="75">75%</option>
                                <option value="50">50%</option>
                                <option value="25">25%</option>
                            </select><br>

                        <input type="checkbox" id="css" name="language" value="Ngoại ngữ">
                        <label for="css" style="margin: 15px 58px 15px 15px">Ngoại ngữ</label>

                        <label for="css">:</label>
                        <select name="language-value" id="css">
                                <option value="100">100%</option>
                                <option value="75">75%</option>
                                <option value="50">50%</option>
                                <option value="25">25%</option>
                            </select><br>

                        <input type="checkbox" id="javascript" name="workgroup" value="Kỹ năng mềm">
                        <label for="javascript" style="margin: 15px 15px 15px 15px">Kỹ năng mềm</label>

                        <label for="javascript">:</label>
                        <select name="workgroup-value" id="javascript">
                                <option value="100">100%</option>
                                <option value="75">75%</option>
                                <option value="50">50%</option>
                                <option value="25">25%</option>
                            </select><br>

                      
                        <!-- <input type="button" value="Thêm kĩ năng" style="border-radius:5px;background-color: darkorange;"> -->


                    </div>

                </div>
            </div>


            <div class="col-md-4 local-js">
                <div class="container-experience">

                </div>
                <input type="text" name="count-exprience" class="count-exprience" style="display:none" value="">
                <input type="button" class="col-md-5 add-experience" value="Thêm kinh nghiệm" style="border-radius:5px;background-color: darkorange;margin: 20px 20px 20px;">


            </div>


            <div class="row">
                <div class="col-md-3 border-right">
                </div>
                <div class="col-md-5 border-right">
                    <div class="container-study">
                        <!-- <div class="p-3 py-5">
                            <div class="d-flex justify-content-between align-items-center experience">
                                <h4>Học vấn</h4>
                            </div><br>
                            <div class="block-study-js">
                                <div class="col-md-12"><label class="labels">Ngành học</label><input type="text" class="form-control" placeholder="Nhập tên ngành" value=""></div>
                                <div class="col-md-12"><label class="labels">Trường học</label><input type="text" class="form-control" placeholder="Nhập tên trường" value=""></div>
                                <div class="col-md-12">
                                    <label class="labels">Ngày bắt đầu</label>
                                    <input type="date" class="form-control" id="start" name="trip-start" value="" min="1945-01-01" max="2021-12-31">
                                </div>
                                <div class="col-md-12">
                                    <label class="labels">Ngày kết thúc</label>
                                    <input type="date" class="form-control" id="start" name="trip-start" value="" min="1945-01-01" max="2021-12-31">
                                </div>
                                <div class="col-md-12"><label class="labels">Mô tả thêm</label><textarea class="form-control" placeholder=" " value=""></textarea></div>
                            </div>
                            <input type="button" class="col-md-5 edit-study-js " onclick="editStudy(event)" value="Chỉnh sửa" style="border-radius:5px;background-color: #0084ff;margin: 0px 20px 5px;display: none;">
                            <input type="button " class="col-md-4 delete-study-js " onclick="deleteStudy(event) " value="Xóa " style="border-radius:5px;background-color: rgb(255, 81, 0);margin: 0px 20px 5px;display: none; ">
                            <input type="button" class="col-md-6 save-study-js" onclick="saveStudy(event)" value="Lưu thông tin" style="border-radius:5px;background-color: #0e9b44;margin: 10px 20px 5px;display: none;">
                        </div> -->
                    </div>
                    <input type="button" onclick="addStudy(event)" class="col-md-5 add-experience" value="Thêm học vấn" style="border-radius:5px;background-color: darkorange;margin: 20px 20px 20px;">
                    <input type="text" name="count-study" class="count-study" style="display:none" value="0">

                </div>
                <div class="mt-10 text-center"><button class="btn btn-primary profile-button" type="submit">Lưu hồ
                sơ</button></div>
    </form>
            </div>
            <script src="<c:url value="/assets/js/inputCV.js"/>"></script>
</body>
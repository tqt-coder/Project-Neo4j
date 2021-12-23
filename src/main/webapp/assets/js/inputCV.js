var container = document.querySelector('.container-experience');
var containerStudy = document.querySelector('.container-study');
var btnExperience = document.querySelector('.add-experience');
var id = 1;

btnExperience.onclick = () => {
        var formArr = document.querySelectorAll('.experience-js');


        var objArr = Array.from(formArr).reduce((callback, input) => {
            var obj = {};
            var jobName = input.querySelector('.name-job-js');
            var jobPlace = input.querySelector('.job-place-js');
            var jobStart = input.querySelector('.job-start-js');
            var jobEnd = input.querySelector('.job-end-js');
            var jobJD = input.querySelector('.jd-js');

            obj.jobName = jobName.value !== null ? jobName.value : "";
            obj.jobPlace = jobPlace.value !== null ? jobPlace.value : "";
            obj.jobStart = jobStart.value !== null ? jobStart.value : "";
            obj.jobPlace = jobPlace.value !== null ? jobPlace.value : "";
            obj.jobEnd = jobEnd.value !== null ? jobEnd.value : "";
            obj.jobJD = jobJD.value !== null ? jobJD.value : "";
            callback.push(obj);
            return callback;
        }, []);


        var strExperience = `<div class="p-3 experience-js">
    <div class="d-flex justify-content-between align-items-center experience">
        <input type="text" name="${id}" class="count-experience-js" style="display:none">
        <h4 class="index-experience-js">Kinh nghiệm ${id}</h4>
    </div><br>

    <div class="block-experience-js" style="display: block;">

        <div class="col-md-12"><label class="labels">Vị trí làm việc</label><input type="text" name="job-${id}" class="form-control name-job-js" placeholder="Nhập vị trí làm việc" value=""></div>
        <div class="col-md-12"><label class="labels">Tổ chúc, công ty đã làm</label><input type="text" name="job-place-${id}" class="form-control job-place-js" placeholder="Nhập tên tổ chức, công ty" value=""></div>
        <div class="col-md-12">
            <label class="labels">Ngày bắt đầu</label>
            <input type="date" class="form-control job-start-js" id="start" name="job-start-${id}" value="" min="1945-01-01" max="2021-12-31">
        </div>
        <div class="col-md-12">
            <label class="labels">Ngày kết thúc</label>
            <input type="date" class="form-control job-end-js" id="start" name="job-end-${id}" value="" min="1945-01-01" max="2021-12-31">
        </div>

        <div class="col-md-12"><label class="labels">Mô tả vị trí làm việc</label><textarea class="form-control jd-js" placeholder=" " name="jd-${id}" value=""></textarea></div>
    </div>
    <input type="button" class="col-md-5 edit-experience-js edit-experience-${id}" onclick="editExperience(event)" value="Chỉnh sửa" style="border-radius:5px;background-color: #0084ff;margin: 0px 20px 5px;display: none;"">
    <input type="button" class="col-md-3 delete-experience-js" onclick="deleteExperience(event)" value="Xóa" style="border-radius:5px;background-color: rgb(255, 81, 0);margin: 0px 20px 5px;display: none;"">
    <input type="button" class="col-md-6 save-experience-js" onclick="saveExperience(event)" value="Lưu thông tin" style="border-radius:5px;background-color: #0e9b44;margin: 10px 20px 5px;display: none;">
</div>
</div>`;

        container.innerHTML = container.innerHTML + strExperience;

        var countExperiences = document.querySelector('.count-exprience');
        countExperiences.value = id;


        if (id > 1) {
            var inputCountAll = document.querySelectorAll('.count-experience-js');
            Array.from(inputCountAll).forEach(function(input, index) {
                var parentInput = input.parentElement;
                var grandParent = parentInput.parentElement;
                var id2 = parseInt(input.getAttribute("name"));
                if (id2 < id) {

                    // var blockExperience = grandParent.querySelector('.experience-js');
                    var hiddenTag = grandParent.querySelector('.block-experience-js');
                    var editBtn = grandParent.querySelector('.edit-experience-js');
                    var deleteBtn = grandParent.querySelector('.delete-experience-js');
                    editBtn.style.display = 'inline-block';
                    deleteBtn.style.display = 'inline-block';
                    hiddenTag.style.display = 'none';
                    grandParent.style.padding = '0px 20px';
                }
            });

            objArr.forEach(function(v, i) {
                var jobName1 = document.querySelector(`[name="job-${i+1}"]`);
                var jobPlace1 = document.querySelector(`[name="job-place-${i+1}"]`);
                var jobStart1 = document.querySelector(`[name="job-start-${i+1}"]`);
                var jobEnd1 = document.querySelector(`[name="job-end-${i+1}"]`);
                var jobJD1 = document.querySelector(`[name="jd-${i+1}"]`);
                jobName1.value = v.jobName;
                jobPlace1.value = v.jobPlace;
                jobStart1.value = v.jobStart;
                jobPlace1.value = v.jobPlace;
                jobEnd1.value = v.jobEnd;
                jobJD1.value = v.jobJD;
            })

        }
        id++;
    }
    // button save
function saveExperience(event) {
    var tagParent = event.target.parentElement;
    var btnDel = tagParent.querySelector('.delete-experience-js');
    var btnSave = tagParent.querySelector('.save-experience-js');
    var btnEdit = tagParent.querySelector('.edit-experience-js');
    var appearTag = tagParent.querySelector('.block-experience-js');
    appearTag.style.display = 'none';
    btnDel.style.display = 'inline-block';
    btnEdit.style.display = 'inline-block';
    btnSave.style.display = 'none';
}
// button edit
function editExperience(event) {
    var tagParent = event.target.parentElement;
    var btnDel = tagParent.querySelector('.delete-experience-js');
    var btnSave = tagParent.querySelector('.save-experience-js');
    var btnEdit = tagParent.querySelector('.edit-experience-js');
    var appearTag = tagParent.querySelector('.block-experience-js');
    appearTag.style.display = 'block';
    btnDel.style.display = 'none';
    btnEdit.style.display = 'none';
    btnSave.style.display = 'inline-block';
}


//button delete
function deleteExperience(event) {
    var parentExperience = event.target.parentElement;
    if (parentExperience) {
        var inputCount = parentExperience.querySelector('.count-experience-js');
        var idDel = parseInt(inputCount.getAttribute("name"));

        parentExperience.remove();
        var inputCountAll = document.querySelectorAll('.count-experience-js');
        Array.from(inputCountAll).forEach(function(input, index) {

            var parentInput = input.parentElement;
            var grandParent = parentInput.parentElement;
            var jobName = grandParent.querySelector('.name-job-js');

            var jobPlace = grandParent.querySelector('.job-place-js');
            var jobStart = grandParent.querySelector('.job-start-js');
            var jobEnd = grandParent.querySelector('.job-end-js');
            var jobJD = grandParent.querySelector('.jd-js');


            var indexTag = parentInput.querySelector('.index-experience-js');

            var id2 = parseInt(input.getAttribute("name"));
            if (id2 > idDel) {
                var x = id2 - 1;

                input.setAttribute("name", x);
                indexTag.innerHTML = 'Kinh nghiệm ' + x;
                jobName.setAttribute("name", "job-" + x);
                jobPlace.setAttribute("name", "job-place-" + x);
                jobStart.setAttribute("name", "job-start-" + x);
                jobEnd.setAttribute("name", "job-end-" + x);
                jobJD.setAttribute("name", "jd-" + x);

            }

        });
        id--;
        var countExperiences = document.querySelector('.count-exprience');
        countExperiences.value = id - 1;


        if (id > 1) {
            var inputCountAll = document.querySelectorAll('.count-experience-js');
            Array.from(inputCountAll).forEach(function(input, index) {
                var parentInput = input.parentElement;
                var grandParent = parentInput.parentElement;
                var id2 = parseInt(input.getAttribute("name"));
                if (id2 < id) {

                    // var blockExperience = grandParent.querySelector('.experience-js');
                    var hiddenTag = grandParent.querySelector('.block-experience-js');
                    var editBtn = grandParent.querySelector('.edit-experience-js');
                    var deleteBtn = grandParent.querySelector('.delete-experience-js');
                    editBtn.style.display = 'inline-block';
                    deleteBtn.style.display = 'inline-block';
                    hiddenTag.style.display = 'none';
                    grandParent.style.padding = '0px 20px';
                }
            });

        }
    }
}

// Thêm học vấn
var ids = 1;

function addStudy(event) {
    var formArr = document.querySelectorAll('.study-js');
    var objArr = Array.from(formArr).reduce((callback, input) => {
        var obj = {};
        var jobName = input.querySelector('.major-js');
        var jobPlace = input.querySelector('.school-js');
        var jobStart = input.querySelector('.school-start-js');
        var jobEnd = input.querySelector('.school-end-js');
        var jobJD = input.querySelector('.jd-school-js');

        obj.jobName = jobName.value != null ? jobName.value : "";
        obj.jobPlace = jobPlace.value != null ? jobPlace.value : "";
        obj.jobStart = jobStart.value != null ? jobStart.value : "";
        obj.jobPlace = jobPlace.value != null ? jobPlace.value : "";
        obj.jobEnd = jobEnd.value != null ? jobEnd.value : "";
        obj.jobJD = jobJD.value != null ? jobJD.value : "";
        callback.push(obj);
        return callback;
    }, []);


    var strStudy = ` <div class="p-3 py-5 study-js">
    <div class="d-flex justify-content-between align-items-center study">
        <input type="text" name="${ids}" class="count-study-js" style="display:none">
        <h4 class="index-study-js">Học vấn ${ids}</h4>
    </div><br>
    <div class="block-study-js">
        <div class="col-md-12"><label class="labels">Ngành học</label><input type="text" class="form-control major-js" name="major-${ids}" placeholder="Nhập tên ngành" value=""></div>
        <div class="col-md-12"><label class="labels">Trường học</label><input type="text" class="form-control school-js" name="school-${ids}" placeholder="Nhập tên trường" value=""></div>
        <div class="col-md-12">
            <label class="labels">Ngày bắt đầu</label>
            <input type="date" class="form-control school-start-js" id="start" name="school-start-${ids}" value="" min="1945-01-01" max="2022-12-31">
        </div>
        <div class="col-md-12">
            <label class="labels">Ngày kết thúc</label>
            <input type="date" class="form-control school-end-js" id="start" name="school-end-${ids}" value="" min="1945-01-01" max="2022-12-31">
        </div>
        <div class="col-md-12"><label class="labels">Mô tả thêm</label><textarea class="form-control jd-school-js" placeholder=" " name="jd-school-${ids}"></textarea></div>
    </div>
    <input type="button" class="col-md-5 edit-study-js " onclick="editStudy(event)" value="Chỉnh sửa" style="border-radius:5px;background-color: #0084ff;margin: 0px 20px 5px;display: none;">
    <input type="button " class="col-md-4 delete-study-js " onclick="deleteStudy(event) " value="Xóa " style="border-radius:5px;background-color: rgb(255, 81, 0);margin: 0px 20px 5px;display: none; ">
    <input type="button" class="col-md-6 save-study-js" onclick="saveStudy(event)" value="Lưu thông tin" style="border-radius:5px;background-color: #0e9b44;margin: 10px 20px 5px;display: none;">
</div>`;

    containerStudy.innerHTML = containerStudy.innerHTML + strStudy;
    objArr.forEach(function(v, i) {
        var jobName1 = document.querySelector(`[name="major-${i+1}"]`);
        var jobPlace1 = document.querySelector(`[name="school-${i+1}"]`);
        var jobStart1 = document.querySelector(`[name="school-start-${i+1}"]`);
        var jobEnd1 = document.querySelector(`[name="school-end-${i+1}"]`);
        var jobJD1 = document.querySelector(`[name="jd-school-${i+1}"]`);
        jobName1.value = v.jobName;
        jobPlace1.value = v.jobPlace;
        jobStart1.value = v.jobStart;
        jobPlace1.value = v.jobPlace;
        jobEnd1.value = v.jobEnd;
        jobJD1.value = v.jobJD;
    })
    var countStudies = document.querySelector('.count-study');
    countStudies.value = ids;
    if (ids > 1) {
        var inputCountAll = document.querySelectorAll('.count-study-js');
        Array.from(inputCountAll).forEach(function(input, index) {
            var parentInput = input.parentElement;
            var grandParent = parentInput.parentElement;
            var id2 = parseInt(input.getAttribute("name"));
            if (id2 < ids) {

                var hiddenTag = grandParent.querySelector('.block-study-js');
                var editBtn = grandParent.querySelector('.edit-study-js');
                var deleteBtn = grandParent.querySelector('.delete-study-js');
                editBtn.style.display = 'inline-block';
                deleteBtn.style.display = 'inline-block';
                hiddenTag.style.display = 'none';
                grandParent.style.padding = '0px 20px';
            }
        });

    }
    ids++;
}

// button edit
function editStudy(event) {
    var tagParent = event.target.parentElement;
    var btnDel = tagParent.querySelector('.delete-study-js');
    var btnSave = tagParent.querySelector('.save-study-js');
    var btnEdit = tagParent.querySelector('.edit-study-js');
    var appearTag = tagParent.querySelector('.block-study-js');
    appearTag.style.display = 'block';
    btnDel.style.display = 'none';
    btnEdit.style.display = 'none';
    btnSave.style.display = 'inline-block';
}

// button save
function saveStudy(event) {
    var tagParent = event.target.parentElement;
    var btnDel = tagParent.querySelector('.delete-study-js');
    var btnSave = tagParent.querySelector('.save-study-js');
    var btnEdit = tagParent.querySelector('.edit-study-js');
    var appearTag = tagParent.querySelector('.block-study-js');
    appearTag.style.display = 'none';
    btnDel.style.display = 'inline-block';
    btnEdit.style.display = 'inline-block';
    btnSave.style.display = 'none';
}

//button delete
function deleteStudy(event) {
    var parentExperience = event.target.parentElement;
    if (parentExperience) {
        var inputCount = parentExperience.querySelector('.count-study-js');
        var idDel = parseInt(inputCount.getAttribute("name"));

        parentExperience.remove();
        var inputCountAll = document.querySelectorAll('.count-study-js');
        Array.from(inputCountAll).forEach(function(input, index) {

            var parentInput = input.parentElement;
            var grandParent = parentInput.parentElement;

            var major = grandParent.querySelector('.major-js');

            var school = grandParent.querySelector('.school-js');
            var schoolStart = grandParent.querySelector('.school-start-js');
            var schoolEnd = grandParent.querySelector('.school-end-js');
            var jobJD = grandParent.querySelector('.jd-school-js');


            var indexTag = parentInput.querySelector('.index-study-js');

            var id2 = parseInt(input.getAttribute("name"));
            if (id2 > idDel) {
                var x = id2 - 1;

                input.setAttribute("name", x);
                indexTag.innerHTML = 'Học vấn ' + x;
                major.setAttribute("name", "major-" + x);
                school.setAttribute("name", "school-" + x);
                schoolStart.setAttribute("name", "school-start-" + x);
                schoolEnd.setAttribute("name", "school-end-" + x);
                jobJD.setAttribute("name", "jd-school-" + x);

            }

        });
        ids--;
        var countExperiences = document.querySelector('.count-study');
        countExperiences.value = ids - 1;

        if (ids > 1) {
            var inputCountAll = document.querySelectorAll('.count-study-js');
            Array.from(inputCountAll).forEach(function(input, index) {
                var parentInput = input.parentElement;
                var grandParent = parentInput.parentElement;
                var id2 = parseInt(input.getAttribute("name"));
                if (id2 < ids) {

                    // var blockstudy = grandParent.querySelector('.study-js');
                    var hiddenTag = grandParent.querySelector('.block-study-js');
                    var editBtn = grandParent.querySelector('.edit-study-js');
                    var deleteBtn = grandParent.querySelector('.delete-study-js');
                    editBtn.style.display = 'inline-block';
                    deleteBtn.style.display = 'inline-block';
                    hiddenTag.style.display = 'none';
                    grandParent.style.padding = '0px 20px';
                }
            });

        }
    }
}
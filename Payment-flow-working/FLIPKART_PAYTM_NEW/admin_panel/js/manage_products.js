var table;
var SUBPRIMARYID = 0;
jQuery(function () {
    get_data();
    $("#" + FORMNAME).on('submit', function (e) {
        e.preventDefault();
        add_record();
    });

    // $('body').on('input', '.edit_data', function () {
    //     var val = $(this).val();
    //     $(this).next('.preview_data').html(":" + val);
    // });
});

function get_data() {
    table = $('#datatable').DataTable({
        processing: true,
        serverSide: true,
        fixedHeader: true,
        pagingType: "full_numbers",
        responsive: !0,
        language: { paginate: { previous: "<i class='mdi mdi-chevron-left'>", next: "<i class='mdi mdi-chevron-right'>" } },
        drawCallback: function () { $(".dataTables_paginate > .pagination").addClass("pagination-rounded") },
        ajax: $.fn.dataTable.pipeline({
            url: API_SERVICE_URL,
            pages: 1, // number of pages to cache
            op: "get_products"
        }),
        columns: [
            { data: 'id', name: 'id', "width": "0%", className: "d-none" },
            {
                data: null,
                render: function (data, type, row) {
                    var details = "<img style='height: 60px;' src='" + row.img1 + "'>";
                    return details;
                }, name: 'img1'
            },
            { data: 'name', name: 'name' },
        ],
        "columnDefs": [{
            "targets": 3,
            "className": "text-end",
            "data": "id",
            "render": function (data, type, row, meta) {
                return type === 'display' ?
                    '<input type="text" class="form-control w-25 d-inline me-2" id="order' + row.id + '" value="' + row.disp_order + '" placeholder="Order" />\
                    <button class="btn btn-primary rounded-pill tbl-btn" onclick="update_order(null,' + row.id + ')"><i class="ri-arrow-up-down-line"></i></button>' : "";
            }
        }, {
            "targets": 4,
            "className": "text-end",
            "data": "id",
            "render": function (data, type, row, meta) {
                return type === 'display' ?
                    '<button class="btn btn-info rounded-pill tbl-btn" onclick="view_verient(' + meta.row + ')"><i class="uil-layer-group"></i></button>\
                    <button class="btn btn-primary rounded-pill tbl-btn" onclick="edit_record(' + meta.row + ')"><i class="ri-pencil-fill"></i></button>\
                    <button class="btn btn-danger rounded-pill tbl-btn" onclick="delete_record(' + row.id + ')"><i class="uil-trash-alt"></i></button>' : "";
            }
        }]
    });
}

async function addNewVerient() {
    var index = $("#verientList > .card").length;
    await setVerientAccordian();
    HTMLEditor("features" + index, index);
}

async function setVerientAccordian(data, isEditMode = false) {
    var index = $("#verientList > .card").length;
    var color = "", size = "", storage = "", mrp = "", selling_price = "", features = "", img1 = "", img2 = "", img3 = "", img4 = "", img5 = "";
    if (data) {
        color = (data.color != "") ? data.color : "";
        size = (data.size != "") ? data.size : "";
        storage = (data.storage != "") ? data.storage : "";
        mrp = (data.mrp != "") ? data.mrp : "";
        selling_price = (data.selling_price != "") ? data.selling_price : "";
        features = (data.features != "") ? data.features : "";
        img1 = (data.img1 != "") ? data.img1 : "";
        img2 = (data.img2 != "") ? data.img2 : "";
        img3 = (data.img3 != "") ? data.img3 : "";
        img4 = (data.img4 != "") ? data.img4 : "";
        img5 = (data.img5 != "") ? data.img5 : "";
    }
    var html = '<div class="card mb-0" id="card' + index + '">\
        <div class="card-header p-0" id="Cardheading'+ index + '">\
            <button class="accordion-button collapsed form-horizontal" type="button" data-bs-toggle="collapse" data-bs-target="#collapse'+ index + '" aria-expanded="false" aria-controls="collapse' + index + '">\
                <div class="row w-100" >\
                    <div class="col-sm-4 row">\
                        <label class="col-form-label col-3 text-end" for="color'+ index + '">Color</label>\
                        <div class="col-9">\
                            <input type="text" id="color'+ index + '" class="form-control edit_data color" placeholder="Enter Color" value="' + color + '" required />\
                            <span class="preview_data" id="txt_color'+ index + '"></span>\
                        </div>\
                    </div>\
                    <div class="col-sm-4 row">\
                        <label class="col-form-label col-3 text-end" for="size'+ index + '">Size</label>\
                        <div class="col-9">\
                            <input type="text" id="size'+ index + '" class="form-control edit_data size" placeholder="Enter Size" value="' + size + '" />\
                            <span class="preview_data" id="txt_size'+ index + '"></span>\
                        </div>\
                    </div>\
                    <div class="col-sm-4 row">\
                        <label class="col-form-label col-3 text-end" for="storage'+ index + '">Storage</label>\
                        <div class="col-9">\
                            <input type="text" id="storage'+ index + '" class="form-control edit_data storage" placeholder="Enter Storage" value="' + storage + '" />\
                            <span class="preview_data" id="txt_storage'+ index + '"></span>\
                        </div>\
                    </div>\
                    <button class="btn btn-danger btn-sm rounded-pill btn-delete-verient" type="button" onclick="remove_verient('+ index + ') "><i class="ri-close-line"></i></button>\
                </div>\
            </button >\
        </div >\
        <div id="collapse'+ index + '" class="collapse" aria-labelledby="Cardheading' + index + '" data-bs-parent="#verientList">\
            <div class="card-body">\
                <div class="row">\
                    <div class="col-sm-5">\
                        <div class="mb-2">\
                            <label class="form-label" for="mrp'+ index + '">MRP</label>\
                            <input type="text" id="mrp'+ index + '" class="form-control edit_data mrp" placeholder="Enter MRP"  value="' + mrp + '" required />\
                        </div>\
                        <div class="mb-2">\
                            <label class="form-label" for="selling_price'+ index + '">Sellign Price</label>\
                            <input type="text" id="selling_price'+ index + '" class="form-control edit_data selling_price" placeholder="Enter Sellign Price"  value="' + selling_price + '" required/>\
                        </div>\
                        <div class="mb-2">\
                            <label class="form-label" for="img1'+ index + '">Img 1</label>\
                            <input type="text" id="img1'+ index + '" class="form-control edit_data img1" placeholder="Enter Img 1"  value="' + img1 + '" required/>\
                        </div>\
                        <div class="mb-2">\
                            <label class="form-label" for="img2'+ index + '">Img 2</label>\
                            <input type="text" id="img2'+ index + '" class="form-control edit_data img2" placeholder="Enter Img 2"  value="' + img2 + '" />\
                        </div>\
                        <div class="mb-2">\
                            <label class="form-label" for="img3'+ index + '">Img 3</label>\
                            <input type="text" id="img3'+ index + '" class="form-control edit_data img3" placeholder="Enter Img 3"  value="' + img3 + '" />\
                        </div>\
                        <div class="mb-2">\
                            <label class="form-label" for="img4'+ index + '">Img 4</label>\
                            <input type="text" id="img4'+ index + '" class="form-control edit_data img4" placeholder="Enter Img 4"  value="' + img4 + '" />\
                        </div>\
                        <div class="mb-2">\
                            <label class="form-label" for="img5'+ index + '">Img 5</label>\
                            <input type="text" id="img5'+ index + '" class="form-control edit_data img5" placeholder="Enter Img 5"  value="' + img5 + '" />\
                        </div>\
                    </div>\
                    <div class="col-sm-7">\
                        <div class="col-12">\
                            <textarea id="features'+ index + '" class="form-control edit_data" placeholder="Enter Features" required></textarea>\
                        </div>\
                    </div>\
                </div>\
            </div>\
        </div>\
    </div>';
    $("#verientList").append(html);

    if (isEditMode) {
        // $("#features" + index).val(data.features);
        await HTMLEditor("features" + index, index);
        await new Promise(r => setTimeout(r, 1000));
        await editor[index].setData(data.features);
    }
}

async function remove_verient(index) {
    SUBPRIMARYID = index;
    $("#delete_verient_modal").modal('show');
}

async function delete_current_verient() {
    $("#verientList #card" + SUBPRIMARYID).html('');
    $("#verientList #card" + SUBPRIMARYID).addClass('d-none');
    SUBPRIMARYID = 0;
}

async function add_record(data) {
    if (data && data != null && data.success == true) {
        changeView('details');
        showMessage(data.message);
        resetValidation(FORMNAME);
        hideLoading();
        await table.clearPipeline().draw();
        return false;
    }
    else if (data && data != null && data.success == false) {
        hideLoading();
        showError(data.message);
        return false;
    }
    else if (!data) {
        if ($('#name').val() == "") {
            showError("Please enter name");
            hideLoading();
            return false;
        }
        var varient = [];
        $("#verientList > .card").each(function (index, vari) {
            var tthis = $(this);
            if (tthis.find('.card-header').length > 0) {
                var new_verient = {
                    color: tthis.find('.color').val(),
                    size: tthis.find('.size').val(),
                    storage: tthis.find('.storage').val(),
                    mrp: tthis.next('.collapse').find('.mrp').val(),
                    selling_price: tthis.next('.collapse').find('.selling_price').val(),
                    features: editor[index].getData(),
                    img1: tthis.next('.collapse').find('.img1').val(),
                    img2: tthis.next('.collapse').find('.img2').val(),
                    img3: tthis.next('.collapse').find('.img3').val(),
                    img4: tthis.next('.collapse').find('.img4').val(),
                    img5: tthis.next('.collapse').find('.img5').val(),
                };
                varient.push(new_verient);
            }
        });
        if (varient.length == 0) {
            howError("Please add one verient");
            hideLoading();
            return false;
        }
        showLoading();
        var req_data = {
            op: "add_product"
            , name: $('#name').val()
            , disp_order: $('#disp_order').val()
            , varient: JSON.stringify(varient)
            , id: $('#id').val()
        };
        doAPICall(req_data, add_record);
    }
    return false;
}

function edit_record(index) {
    if (TBLDATA.length > 0) {
        CURRENT_DATA = TBLDATA[index];
        $('#id').val(CURRENT_DATA.id);
        $('#name').val(CURRENT_DATA.name);
        editor = [];
        $("#verientList").html("");
        changeView('form', '', true);
        $.each(CURRENT_DATA.verients, async function (i, verients) {
            await setVerientAccordian(verients, true);
        });
    }
}

async function update_order(data, id) {
    if (data && data != null && data.success == true) {
        hideLoading();
        PRIMARY_ID = 0;
        showMessage(data.message);
        await table.clearPipeline().draw();
        return false;
    }
    else if (data && data != null && data.success == false) {
        hideLoading();
        PRIMARY_ID = 0;
        showError(data.message);
        return false;
    }
    else if (!data) {
        showLoading();
        var req_data = {
            op: "update_product_order"
            , disp_order: $("#order" + id).val()
            , id: id
        };
        doAPICall(req_data, function (res) { update_order(res, id) });
    }
    return false;
}

function delete_record(id) {
    PRIMARY_ID = id;
    $("#delete_modal").modal('show');
}

async function delete_current_record(data) {

    if (data && data != null && data.success == true) {
        hideLoading();
        PRIMARY_ID = 0;
        showMessage(data.message);
        if (SUBPRIMARYID > 0) {
            $("#verientListModal #rate_list #item" + SUBPRIMARYID).remove();
            SUBPRIMARYID = 0;
        }
        else {
            await table.clearPipeline().draw();
        }
        return false;
    }
    else if (data && data != null && data.success == false) {
        hideLoading();
        PRIMARY_ID = 0;
        showError(data.message);
        return false;
    }
    else if (!data) {
        showLoading();
        var req_data = {
            op: "delete_record"
            , id: (SUBPRIMARYID > 0) ? SUBPRIMARYID : PRIMARY_ID
            , type: (SUBPRIMARYID > 0) ? 'VERIENT' : 'PRODUCT'
        };
        doAPICall(req_data, delete_current_record);
    }
    return false;
}

async function delete_all() {
    $("#delete_all_modal").modal('show');
}

async function delete_all_record(data) {

    if (data && data != null && data.success == true) {
        hideLoading();
        showMessage(data.message);
        await table.clearPipeline().draw();
        return false;
    }
    else if (data && data != null && data.success == false) {
        hideLoading();
        showError(data.message);
        return false;
    }
    else if (!data) {
        showLoading();
        var req_data = {
            op: "delete_all_record"
        };
        doAPICall(req_data, delete_all_record);
    }
    return false;
}

//Modal
async function view_verient(index) {
    if (TBLDATA.length > 0) {
        CURRENT_DATA = TBLDATA[index];
        var current_index = $("#rate_list .index-rows").length;
        var html = '<table class="table table-striped"><tbody>';
        $.each(CURRENT_DATA.verients, function (i, verients) {
            html += `<tr class="index-rows" id="row${current_index}">
                            <td><image src="${verients.img1}" style="height: 70px;" onclick="show_photo(${verients.id})"/></td>
                            <td>${verients.color}</td>
                            <td>${verients.size}</td>
                            <td>${verients.storage}</td>
                            <td>MRP: ${verients.mrp}<br/>selling price: ${verients.selling_price}</td>
                            <td>${verients.features}</td>
                            <td>
                                <button class="btn btn-danger rounded-pill delete-btn mt-1" onclick="delete_verients(${current_index})"><i class="uil-trash-alt"></i></button>
                            </td>
                        </tr>`;
        });
        html += '</tbody></table>';
        await $("#verient_list").html(html);
    }
    manage_delete_btn();
    $("#verientListModal").modal('show');
}

function show_photo(verient_id) {
    var verient = CURRENT_DATA['verients'][verient_id];
    var html = "";
    html += `<div class="carousel-item active">
        <img class="d-block img-fluid m-auto" style="height: 400px;" src="${verient.img1}">
    </div>`;
    var control_html = `<li data-bs-target="#carouselExampleIndicators" data-bs-slide-to="0" class="active"></li>`;
    if (verient.img2) {
        html += `<div class="carousel-item">
            <img class="d-block img-fluid m-auto" style="height: 400px;" src="${verient.img2}">
        </div>`;
        control_html += `<li data-bs-target="#carouselExampleIndicators" data-bs-slide-to="1"></li>`;
    }
    if (verient.img3) {
        html += `<div class="carousel-item">
            <img class="d-block img-fluid m-auto" style="height: 400px;" src="${verient.img3}">
        </div>`;
        control_html += `<li data-bs-target="#carouselExampleIndicators" data-bs-slide-to="2"></li>`;
    }
    if (verient.img4) {
        html += `<div class="carousel-item">
            <img class="d-block img-fluid m-auto" style="height: 400px;" src="${verient.img4}">
        </div>`;
        control_html += `<li data-bs-target="#carouselExampleIndicators" data-bs-slide-to="3"></li>`;
    }
    if (verient.img5) {
        html += `<div class="carousel-item">
            <img class="d-block img-fluid m-auto" style="height: 400px;" src="${verient.img5}">
        </div>`;
        control_html += `<li data-bs-target="#carouselExampleIndicators" data-bs-slide-to="4"></li>`;
    }
    $("#imageModal #verient_img").html(html);
    $("#imageModal #slider_control").html(control_html);
    $("#imageModal").modal("show");
}

function manage_delete_btn() {
    var current_index = $("#verient_list .index-rows").length;
    if (current_index <= 1) {
        $("#verient_list .index-rows .delete-btn").addClass('hide');
    }
    else {
        $("#verient_list .index-rows .delete-btn").removeClass('hide');
    }

    // Manage index of the index-rows
    $("#verient_list .index-rows").each(function (index, tr) {
        $(this).attr('id', 'row' + index);
        $(this).find('.delete-btn').attr('onclick', `delete_verients(${index})`);
        $(this).find('.price_type').attr('id', `price_type${index}`);
        $(this).find('.price_type_label').attr('for', `price_type${index}`);
    })
}


async function delete_verients(id) {
    SUBPRIMARYID = id;
    $("#delete_modal").modal('show');
}


// Upload CSV

function uploadCSV() {
    $("#csvModal").modal('show');
}

async function upload_csv() {
    var formData = new FormData()
    formData.append('op', 'upload_csv')
    formData.append('file', $('#csv_file')[0].files[0])
    showLoading();
    $.ajax({
        type: "POST",
        url: API_SERVICE_URL,
        data: formData,
        dataType: 'json',
        "crossDomain": true,
        "headers": {},
        processData: false,
        contentType: false,
        success: async function (data) {
            if (data && data.success == 1) {
                showMessage(data.message);
                await table.clearPipeline().draw();
            }
            else {
                showError(data.message);
            }
            hideLoading();
            return false;
        },
        fail: function (err) {
            hideLoading();
            showError(data.message);
            return false;
        }
    });
}
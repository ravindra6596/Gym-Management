$(document).ready(function () {
  //DATEPICKER
  $('.datepicker').datepicker({
    todayHighlight: true,
    autoclose: true,
    format: 'dd-mm-yyyy',
  });
  //TEXT EDITOR
  $('#summernote').summernote()
  //DATATABELS
  $("#example1").DataTable({
    "responsive": true, "lengthChange": true, "autoWidth": false, "ordering": false,
    "buttons": ["csv", "excel", "pdf"]
    //"buttons": ["copy", "csv", "excel", "pdf", "print", "colvis"]
  }).buttons().container().appendTo('#example1_wrapper .col-md-6:eq(0)');
  $('#example2').DataTable({
    "paging": true,
    "lengthChange": true,
    "searching": true,
    "ordering": false,
    "info": true,
    "autoWidth": false,
    "responsive": true,
  });
  //SELECT OPTION
  $('.select2').select2({
    theme: 'bootstrap4'
  })
  //ALERTS
  $('.fadeout').fadeIn(function () {
    $(this).delay(2500).fadeOut(1600, function () { });
  });
  //sweet alert for DELETE POST
  $('.del').click(function () {
    var th = $(this);
    var id = $(this).attr("id");
    swal({

      title: "Are you sure?",
      text: "Once deleted, you will not be able to recover this Post Data!",
      icon: "warning",
      buttons: true,
      dangerMode: true,
    })
      .then((willDelete) => {
        if (willDelete) {
          $.ajax({
            url: '../Admin/deletepost.php',
            type: 'post',
            data: { pid: id },
            success: function (data) {
              th.parents('tr').hide();
              //window.onload="../Admin/allpost.php";
            }
          })
          swal("Poof! Your Post Data has been deleted!", {
            icon: "success",

          });
        } else {
          swal("Your Post Data is safe!");
        }
      });
  });

  //sweet alert for DELETE MEDIA
  $('.del_media').click(function () {
    var th = $(this);
    var id = $(this).attr("id");
    swal({

      title: "Are you sure?",
      text: "Once deleted, you will not be able to recover this Media Data!",
      icon: "warning",
      buttons: true,
      dangerMode: true,
    })
      .then((willDelete) => {
        if (willDelete) {
          $.ajax({
            url: '../Admin/deletemedia.php',
            type: 'post',
            data: { mid: id },
            success: function (data) {
              th.parents('tr').hide();
              // window.onload="../Admin/deletepost.php";
            }
          })
          swal("Poof! Your Media Data has been deleted!", {
            icon: "success",
          });
        } else {
          swal("Your Media Data is safe!");
        }
      });
  });

  //bootstrap model for VIEW POST
  $(document).on('click', '.view_data', function () {

    var pid = $(this).attr("id");
    if (pid != '') {
      $.ajax({
        url: "selectpost.php",
        method: "POST",
        data: { post_id: pid },
        success: function (data) {
          $('#post_details').html(data);
          $('#dataModal').modal('show');
        }
      });
    }
  });
  //bootstrap model for VIEW MEDIA
  $(document).on('click', '.view_data', function () {

    var mid = $(this).attr("id");
    if (mid != '') {
      $.ajax({
        url: "selectmedia.php",
        method: "POST",
        data: { media_id: mid },
        success: function (data) {
          $('#media_details').html(data);
          $('#dataModal').modal('show');
        }
      });
    }
  });
  //display image after uploaded

  var fileTag = document.getElementById("filetag"),
    preview = document.getElementById("preview")
  fileTag.addEventListener("change", function () {
    changeImage(this);
  });
  function changeImage(input) {
    var reader;

    if (input.files && input.files[0]) {
      reader = new FileReader();

      reader.onload = function (e) {
        preview.setAttribute('src', e.target.result);
      }

      reader.readAsDataURL(input.files[0]);
    }
  }
  //display name of selected file
  updateList = function () {
    var input = document.getElementById('file');
    var output = document.getElementById('fileList');
    var i = 0;
    output.innerHTML = '';
    for (i = 0; i < input.files.length; ++i) {
      output.innerHTML += '' + input.files.item(i).name + '';
    }
    output.innerHTML += '';
  }
})//end od document.ready function here

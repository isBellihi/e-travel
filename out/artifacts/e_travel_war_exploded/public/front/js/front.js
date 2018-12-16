$(document).ready(function() {
    var language = $('#language_footer').val();
    //alert(language);
    $.ajax({
      type: "POST",
      url: APP_URL + "/set_session",
      data: {'language': language},
      async: false,
      success: function(msg) {
         return false;
         //location.reload()
      },
    });
});
$(document).on('change', '#calendar_dropdown', function(){
  var year_month = $(this).val();
  year_month     = year_month.split('-');
  var year       = year_month[0];
  var month      = year_month[1];
  set_calendar(month, year);
});

$(document).on('click', '.month-nav-next', function(e){
  e.preventDefault();
  var year = $(this).attr('data-year');
  var month = $(this).attr('data-month');
  set_calendar(month, year);
});

$(document).on('click', '.month-nav-previous', function(e){
  e.preventDefault();
  var year = $(this).attr('data-year');
  var month = $(this).attr('data-month');
  set_calendar(month, year);
});

$(document).on('keyup', '#header-search-form', function(){
  autocomplete = new google.maps.places.Autocomplete(document.getElementById("header-search-form")); 
  google.maps.event.addListener(autocomplete, 'place_changed', function() {
    /*var data = $("#header-search-form").val();
    console.log(data)*/
    //show_submit_data(data);
    mapDropDownActive();
    //$('#head-form').submit();
  });
});

$(document).on('keyup', '#sidenav-search-form', function(){
  autocomplete = new google.maps.places.Autocomplete(document.getElementById("sidenav-search-form")); 
  google.maps.event.addListener(autocomplete, 'place_changed', function() {
    document.getElementById("sidenav-search-drop-down").classList.toggle("sm-show");
    $("#sidenav-search-checkin").datepicker("show");
  });
});

$(document).on('keyup', '#front-search-field', function(){
  autocomplete = new google.maps.places.Autocomplete(document.getElementById("front-search-field")); 
  google.maps.event.addListener(autocomplete, 'place_changed', function() {
    $("#front-search-checkin").datepicker("show");
  });
});

$(document).on('keyup', '#location-search-google', function(){
  autocomplete = new google.maps.places.Autocomplete(document.getElementById("location-search-google"));
});

function set_calendar(month, year){
  var property_id = $('#dtpc_property_id').val();
  var dataURL     = APP_URL+'/ajax-calender/'+property_id;
  var calendar    = '';
  $.ajax({
    url: dataURL,
    data: {'month': month, 'year': year},
    type: 'post',
    async: false,
    dataType: 'json',
    success: function (result) {
      //if(result.success == 1)
      $('#calender-dv').html(result.calendar);
    },
    error: function (request, error) {
      console.log('error');
    }
  });
}

$(document.body).on('click', '.date-package-modal', function(){
    //var fl = $(this).hasClass('tile-previous');
    //alert('kkkk');
    $('#model-message').html("");
    //if(!fl){
        var sdate  = $(this).attr('id');
        var div    = sdate.split('-');
        var day    = div[2];
        var month  = div[1];
        var year   = div[0];
        var price  = $(this).attr('data-price');
        var status = $(this).attr('data-status');
        var date   = day+'-'+month+'-'+year;
        $('#dtpc_start').val(date);
        $('#dtpc_end').val(date);
        $('#dtpc_price').val(price);
        $('#dtpc_status').val(status).change();
        $("#dtpc_start").datepicker({
            dateFormat: "dd-mm-yy",
            onSelect: function(date) {
               
            },
        });
        $("#dtpc_end").datepicker({
            dateFormat: "dd-mm-yy",
            onSelect: function(date) {
                
            },
        });
        $('#hotel_date_package').modal();
    //}
});

$(document.body).on('submit', "#dtpc_form", function(e){
  e.preventDefault();
  $('#error-dtpc-start').html('');
  $('#error-dtpc-end').html('');
  $('#error-dtpc-price').html('');
  $('#error-dtpc-status').html('');

  var start_date = $('#dtpc_start').val();
  var end_date = $('#dtpc_end').val();
  var price = $('#dtpc_price').val();
  var status      = $('#dtpc_status').val();
  var property_id = $('#dtpc_property_id').val();
  var url = APP_URL+'/ajax-calender-price/'+property_id;
  if(start_date == '') $('#error-dtpc-start').html('Start date not given.');
  if(end_date == '') $('#error-dtpc-end').html('End date not given.');
  if(price == '') $('#error-dtpc-price').html('Price not given.');
  if(status == '') $('#error-dtpc-status').html('Status not select.');
  else
  $.ajax({
      type: "POST",
      url: url,
      data: {'start_date':start_date, 'end_date':end_date, 'price':price, 'status':status},
      async: false,
      success: function(msg) {
         //if(msg.status){
            var year_month = $('#calendar_dropdown').val();
            year_month = year_month.split('-');
            var year = year_month[0];
            var month = year_month[1];
            set_calendar(month, year);
            $('#model-message').html("Data save successfully");
            $('#model-message').show();
            
         //}
      },
      error: function(request, error) {
          console.log(error);
      }
  });
});

function mapDropDownActive(){
    document.getElementById("search-drop-down").classList.toggle("sm-show");
    $("#header-search-checkin").datepicker("show");
}

// Close the dropdown if the user clicks outside of it
window.onclick = function(event) {
  if (!event.target.matches('#search-map') && !event.target.matches('.sm-dropdown-content') && !$(event.target).parents(".sm-dropdown-content").length && !event.target.matches(".ui-state-default")
  && !event.target.matches('.ui-icon') && !event.target.matches('.ui-datepicker-month') && !event.target.matches('.ui-datepicker-year') && !event.target.matches('.month')) {
   
  /*if ((!$(event.target).hasClass('sm-dropdown-content')) && (!$(event.target).parents(".sm-dropdown-content").length) && (!$(event.target).hasClass("ui-state-default")) && (!$(event.target).hasClass('ui-icon')) && (!$(event.target).hasClass('ui-datepicker-month')) && (!$(event.target).hasClass('ui-datepicker-year')) && (!$(event.target).hasClass('month'))) {
   */
    /*if(!$(event.target).hasClass('ui-icon')){*/
    //console.log($(event.target).parents(".dropdown-content").length);
    var dropdowns = document.getElementsByClassName("sm-dropdown-content");
    var i;
    for (i = 0; i < dropdowns.length; i++) {
      var openDropdown = dropdowns[i];
      if (openDropdown.classList.contains('sm-show')) {
        openDropdown.classList.remove('sm-show');
      }
    }
  }
}

$(".search-form").submit(function(e) {
    var t = $("#header-search-checkin").val(),
        a = $("#header-search-checkout").val(),
        o = $("#header-search-guests").val(),
        i = "";
    var n = $("#header-search-form").val(),
        /*if(n==''){
          n = $("#sidenav-search-form").val(); 
        }*/
        c = n.replace(" ", "+");
    window.location.href = APP_URL + "/s?location=" + c + "&checkin=" + t + "&checkout=" + a + "&guest=" + o, e.preventDefault()
})

function page_loader_start(){
  $('body').prepend('<div id="preloader"></div>');
  //$('#preloader').fadeOut('slow',function(){$(this).remove();});
}
function page_loader_stop(){
  $('#preloader').fadeOut('slow',function(){$(this).remove();});
}

function modal_alert(message, call_back){
  $('#alert_model').modal('show');
  
}

$('#ok_id').on('click', function(e){
    e.preventDefault()
    console.log('hello')
});
$("#front-search-form").submit(function(e) {
  e.preventDefault()
    var t = $("#front-search-checkin").val(),
        a = $("#front-search-checkout").val(),
        o = $("#front-search-guests").val(),
        i = "";
    var n = $("#front-search-field").val(),        
        c = n.replace(" ", "+");
    window.location.href = APP_URL + "/search?location=" + c + "&checkin=" + t + "&checkout=" + a + "&guest=" + o, e.preventDefault()
});

$(function() {
  $("#header-search-checkin").datepicker({
      dateFormat: "dd-mm-yy",
      minDate: 0,
      onSelect: function(e) {
          var t = $("#header-search-checkin").datepicker("getDate");
          t.setDate(t.getDate() + 1), $("#header-search-checkout").datepicker("setDate", t), $("#header-search-checkout").datepicker("option", "minDate", t), setTimeout(function() {
              $("#header-search-checkout").datepicker("show")
          }, 20)
      }
  }); 
});
$(function() {
  $("#header-search-checkout").datepicker({
      dateFormat: "dd-mm-yy",
      minDate: 1,
      onClose: function() {
          var e = $("#header-search-checkin").datepicker("getDate"),
              t = $("#header-search-checkout").datepicker("getDate");
          if (e >= t) {
              var a = $("#header-search-checkout").datepicker("option", "minDate");
              $("#header-search-checkout").datepicker("setDate", a)
          }
      }
  });
});

$(function() {
  $("#sidenav-search-checkin").datepicker({
      dateFormat: "dd-mm-yy",
      minDate: 0,
      onSelect: function(e) {
          var t = $("#sidenav-search-checkin").datepicker("getDate");
          t.setDate(t.getDate() + 1), $("#sidenav-search-checkout").datepicker("setDate", t), $("#sidenav-search-checkout").datepicker("option", "minDate", t), setTimeout(function() {
              $("#sidenav-search-checkout").datepicker("show")
          }, 20)
      }
  }); 
});
$(function() {
  $("#sidenav-search-checkout").datepicker({
      dateFormat: "dd-mm-yy",
      minDate: 1,
      onClose: function() {
          var e = $("#sidenav-search-checkin").datepicker("getDate"),
              t = $("#sidenav-search-checkout").datepicker("getDate");
          if (e >= t) {
              var a = $("#sidenav-search-checkout").datepicker("option", "minDate");
              $("#sidenav-search-checkout").datepicker("setDate", a)
          }
      }
  });
});

$(function() {
  $("#front-search-checkin").datepicker({
      dateFormat: "dd-mm-yy",
      minDate: 0,
      onSelect: function(e) {
          var t = $("#front-search-checkin").datepicker("getDate");
          t.setDate(t.getDate() + 1), $("#front-search-checkout").datepicker("setDate", t), $("#front-search-checkout").datepicker("option", "minDate", t), setTimeout(function() {
              $("#front-search-checkout").datepicker("show")
          }, 20)
      }
  }); 
});

$(function() {
  $("#front-search-checkout").datepicker({
      dateFormat: "dd-mm-yy",
      minDate: 1,
      onClose: function() {
          var e = $("#front-search-checkin").datepicker("getDate"),
              t = $("#front-search-checkout").datepicker("getDate");
          if (e >= t) {
              var a = $("#front-search-checkout").datepicker("option", "minDate");
              $("#front-search-checkout").datepicker("setDate", a)
          }
      }
  });
});

$(".search-form").submit(function(e) {
    var t = $("#header-search-checkin").val(),
        a = $("#header-search-checkout").val(),
        o = $("#header-search-guests").val(),
        i = "";
    /*$('[id^="header_room_type"]').each(function() {
        $(this).is(":checked") && (i += $(this).val() + ",")
    }), i = i.slice(0, -1);*/
    var n = $("#header-search-form").val();
        if(n==''){
          var t = $("#sidenav-search-checkin").val(),
              a = $("#sidenav-search-checkout").val(),
              o = $("#sidenav-search-guests").val(),
              i = "";
          n = $("#sidenav-search-form").val();

        }
        c = n.replace(" ", "+");
    //window.location.href = APP_URL + "/s?location=" + c + "&checkin=" + t + "&checkout=" + a + "&guest=" + o + "&room_type=" + i, e.preventDefault()
    window.location.href = APP_URL + "/search?location=" + c + "&checkin=" + t + "&checkout=" + a + "&guest=" + o, e.preventDefault()
});

$("#language_footer").change(function() {
    $.ajax({
      type: "POST",
      url: APP_URL + "/set_session",
      data: {'language': $(this).val()},
      async: false,
      success: function(msg) {
         location.reload()
      },
    });
});

$("#currency_footer").change(function() {
    $.ajax({
      type: "POST",
      url: APP_URL + "/set_session",
      data: {'currency': $(this).val()},
      async: false,
      success: function(msg) {
         location.reload()
      },
    });
});

$(window).on('load',function() {
    var language = $('#language_footer').val();
    //alert(language);
    $.ajax({
      type: "POST",
      url: APP_URL + "/set_session",
      data: {'language': language},
      async: false,
      success: function(msg) {
         return false;
         //location.reload()
      },
    });
});

$('.room-list-status').change(function(){
  var status = $(this).val();
  var property = $(this).attr('data-room-id');
  $.ajax({
    type: "POST",
    url: APP_URL+"/listing/" + property + "/update_status",
    data: {'status': status},
    success: function() {
      location.reload()
    },
  });
});

$('#message-form').submit(function(e){
  e.preventDefault()
  var message = $('#message_text').val();
  if(message != '')
    $.ajax({
      type: "POST",
      url: APP_URL + "/messaging/qt_reply/" + $("#reservation_id").val(),
      data: {'message': message},
      success: function(msg) {
        $("#message-list").prepend(msg);
      },
    });
});

$('#host-message-form').submit(function(e){
  e.preventDefault()
  var message = $('#message_text').val();
  if(message != '')
    $.ajax({
      type: "POST",
      url: APP_URL + "/messaging/qt_reply/" + $("#reservation_id").val(),
      data: {
        'message': message,
        pricing_room_id: $("#pricing_room_id").val(),
        pricing_checkin: $("#pricing_start_date").val(),
        pricing_checkout: $("#pricing_end_date").val(),
        pricing_guests: 1,
        pricing_price: $("#pricing_price").val()
      },
      success: function(msg) {
        $("#message-list").prepend(msg);
      },
    });
});




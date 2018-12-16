$(document).on('submit','#payout_address', function (event){
	event.preventDefault();
	var address_1 = $('#payout_info_payout_address1').val();
	var address_2 = $('#payout_info_payout_address2').val();
	var city = $('#payout_info_payout_city').val();
	var state = $('#payout_info_payout_state').val();
	var zip = $('#payout_info_payout_zip').val();
	var country = $('#payout_info_payout_country').val();
	if(address_1 == '')
		$('#popup1_flash-container').html('<div class="alert alert-error alert-error alert-header">Address cannot be blank.</div>');
	else if(city == '')
		$('#popup1_flash-container').html('<div class="alert alert-error alert-error alert-header">City cannot be blank.</div>');
	else if(zip == '')
		$('#popup1_flash-container').html('<div class="alert alert-error alert-error alert-header">Postal Code cannot be blank.</div>');
	else if(country == '')
		$('#popup1_flash-container').html('<div class="alert alert-error alert-error alert-header">Country cannot be blank.</div>');
	else{
		$('#payout_info_payout2_address1').val(address_1);
		$('#payout_info_payout2_address2').val(address_2);
		$('#payout_info_payout2_city').val(city);
		$('#payout_info_payout2_state').val(state);
		$('#payout_info_payout2_zip').val(zip);
		$('#payout_info_payout2_country').val(country);
		$("#payout_popup1").modal('toggle');
		$('#payout_popup2').modal('toggle');
	}
});

$(document).on('submit','#payout_method', function (event){
	event.preventDefault();
	var address_1 = $('#payout_info_payout2_address1').val();
	var address_2 = $('#payout_info_payout2_address2').val();
	var city = $('#payout_info_payout2_city').val();
	var state = $('#payout_info_payout2_state').val();
	var zip = $('#payout_info_payout2_zip').val();
	var country = $('#payout_info_payout2_country').val();
	var method = $('input[name=payout_method]:checked').val();
	if(typeof method === "undefined" || method == ''){
		$('#popup2_flash-container').html('<div class="alert alert-error alert-error alert-header">Choose Payout Method.</div>');
	}else{
		$('#payout_info_payout3_address1').val(address_1);
		$('#payout_info_payout3_address2').val(address_2);
		$('#payout_info_payout3_city').val(city);
		$('#payout_info_payout3_state').val(state);
		$('#payout_info_payout3_zip').val(zip);
		$('#payout_info_payout3_country').val(country);
		$('#payout3_method').val(method);

		$("#payout_popup2").modal('toggle');
		$('#payout_popup3').modal('toggle');
	}
});
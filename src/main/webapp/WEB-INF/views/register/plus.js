

const submit = document.querySelector(".submit");
submit.addEventListener("click", function () {
		callByAjax();
	});

function callByAjax() {
	
	let form = document.form1;
	
	let num1 = form.num1.value;
	let num2 = form.num2.value;
	
	let action = form.action;
	
	$.get(
		action, 
		{
			num1:num1,
			num2:num2
		},
		function(data) {
			$('.rs').empty().append(data);
//			$('.rs').text(data);
		},
		'html'
	);
}
 $(document).ready(function(){
    
    
    $("#new-dish-form").validate({
       errorPlacement: function (error, element) {
       error.insertAfter(element);
       },
    // Specify the validation rules
    rules: {
      "dish[name]": {
          required: true,
          minlength: 3,
          maxlength: 50
      },
      "dish[description]": {
          required: true,
          maxlength: 250
      },
      "dish[price]": {
          required: true,
          number: true,
          maxlength: 5
      }
    },
    submitHandler: function(form) {
      form.submit();
    }
  });




  });
  
 $(document).ready(function(){
    var preview = $(".img-preview-div #blah");
    $(".image").change(function(event){
       var input = $(event.currentTarget);
       var file = input[0].files[0];
       var reader = new FileReader();
       reader.onload = function(e){
           image_base64 = e.target.result;
           preview.attr("src", image_base64);
       };
       reader.readAsDataURL(file);
    });
    
    
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
  
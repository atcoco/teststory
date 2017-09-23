var ProfileEdit = {
  init: function() {
    /*** Simply return if it's not User profile edit page ***/
    if (!$('[data-page="users-edit"]').length > 0) {
      return;
    }
    $("#user_avatar").change(function(){
      alert('asdf');
      console.log('Change');
      ProfileEdit.readURL(this);
    });
  },

  readURL: function(input) {
    if (input.files && input.files[0]) {
      var reader = new FileReader();

      reader.onload = function (e) {
        console.log('sucess');
        $('#change-avatar').attr('style', "background-image: url('" + e.target.result + "')");
      }

      reader.readAsDataURL(input.files[0]);
    }
  }
}

$(document).ready( ProfileEdit.init );
$(document).on( 'page:load', ProfileEdit.init );

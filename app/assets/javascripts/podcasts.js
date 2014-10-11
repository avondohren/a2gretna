// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.
var value = 0

$(document).ready(function() {
  $(".play").on("click", function() {
    if (value === 0) {
      value = 90;
    } else {
      value = 0;
    }
    $(this).rotate(value);
    $(this).parent().find("div").slideToggle();
  });
  
  $("#myS3Uploader").S3Uploader({
    progress_bar_target: $('.js-progress-bars'),
    allow_multiple_files: false,
    remove_completed_progress_bar: true
  });
  
  $('#myS3Uploader').bind("s3_upload_complete", function(e, content) {
    $('#podcast_url').val(content.url);
  });
  
  $('#myS3Uploader').bind("s3_upload_failed", function(e, content) {
    alert("" + content.filename + " failed to upload : " + content.error_thrown);
    console.log(content);
  });
});

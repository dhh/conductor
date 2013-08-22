// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.

$(document).ready(function(){
  var editor = ace.edit("editor");
  var textarea = $('#gemfile_content');
  textarea.hide();

  editor.setTheme("ace/theme/textmate");
  editor.getSession().setMode("ace/mode/ruby");
  editor.getSession().setValue(textarea.val());
  editor.getSession().on('change', function(){
    textarea.val(editor.getSession().getValue());
  });
});

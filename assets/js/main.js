$( "#btnFontsize" ).click(function() {
  if (document.body.style.fontSize == "") { document.body.style.fontSize = '1em'; }
  if (($(this).attr("value")) == 'Normal') {
    document.body.style.fontSize = parseFloat(document.body.style.fontSize) + (1 * 0.3) + 'em';
    $(this).prop('value', 'Big');
    $(this).html('Big Size');
  } else {
    document.body.style.fontSize = '1em';
    $(this).prop('value', 'Normal');
    $(this).html('Normal Size');
  }
});

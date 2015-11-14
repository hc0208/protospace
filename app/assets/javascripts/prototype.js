$(function(){

var file = document.querySelector('#prototype_thumbnails_attributes_0_image');

file.onchange = function (){
  var fileList = file.files;
  var reader = new FileReader();
  reader.readAsDataURL(fileList[0]);
  reader.onload = function (){
    document.querySelector('#main_preview').src = reader.result;
    $('#main_preview').css({'display':'inline', 'width':'100%', 'height':'100%'});
  };
};

var file2 = document.querySelector('#prototype_thumbnails_attributes_1_image');

file2.onchange = function (){
  var fileList = file2.files;
  var reader = new FileReader();
  reader.readAsDataURL(fileList[0]);
  reader.onload = function (){
    document.querySelector('#sub_0_preview').src = reader.result;
    $('#sub_0_preview').css({'display':'inline', 'width':'100%', 'height':'100%'});
  };
};

var file3 = document.querySelector('#prototype_thumbnails_attributes_2_image');

file3.onchange = function (){
  var fileList = file3.files;
  var reader = new FileReader();
  reader.readAsDataURL(fileList[0]);
  reader.onload = function (){
    document.querySelector('#sub_1_preview').src = reader.result;
    $('#sub_1_preview').css({'display':'inline', 'width':'100%', 'height':'100%'});
  };
};

});


$(function(){

var image = document.querySelector('#prototype_thumbnails_attributes_0_image');

image.onchange = function (){
  var imageList = image.files;
  var reader = new FileReader();
  reader.readAsDataURL(imageList[0]);
  reader.onload = function (){
    document.querySelector('#main_preview').src = reader.result;
    $('#main_preview').css({'display':'inline', 'width':'100%', 'height':'100%'});
  };
};

var image2 = document.querySelector('#prototype_thumbnails_attributes_1_image');

image2.onchange = function (){
  var imageList = image2.files;
  var reader = new FileReader();
  reader.readAsDataURL(imageList[0]);
  reader.onload = function (){
    document.querySelector('#sub_0_preview').src = reader.result;
    $('#sub_0_preview').css({'display':'inline', 'width':'100%', 'height':'100%'});
  };
};

var image3 = document.querySelector('#prototype_thumbnails_attributes_2_image');

image3.onchange = function (){
  var imageList = image3.files;
  var reader = new FileReader();
  reader.readAsDataURL(imageList[0]);
  reader.onload = function (){
    document.querySelector('#sub_1_preview').src = reader.result;
    $('#sub_1_preview').css({'display':'inline', 'width':'100%', 'height':'100%'});
  };
};

});


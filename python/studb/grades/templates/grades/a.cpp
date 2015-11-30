var stun = 300 ;
var cur = 0;
$(function(){
    function hide_and_show(event){
      var i = event.data.key;
      for(var j=cur*20; j<Math.min(stun,(cur+1)*20); j++){
        $("#stu"+j).css("display","");
      }
      for(var j=i*20; j<Math.min(stun,(i+1)*20); j++){
        $("#stu"+j).css("display","");
      }
      $("#btn"+cur).attr("class","button");
      cur = i;
    }
    for(var i=0;i<stun/20;i++){
      var btn=$("<button class='button' value='Test'>" + (i+1) + "</button>");
      $("#paginator").append("<button class='button' value='Test' id='btn" + i + "' value='" + i + "'>" + (i+1) + "</button>");
      $("#btn"+i).bind("click",{key:i},hide_and_show);
      $("btn0")[0].on_click();
    }
  });

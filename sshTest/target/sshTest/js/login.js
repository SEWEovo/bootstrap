$(function(){

  toastr.options = {

"closeButton": true, //是否显示关闭按钮

"debug": false, //是否使用debug模式

"positionClass":'toast-center-center',//弹出窗的位置

"showDuration": "300",//显示的动画时间

"hideDuration": "300",//消失的动画时间

"timeOut": "1000", //展现时间

"extendedTimeOut": "1000",//加长展示时间

"showEasing": "swing",//显示时的动画缓冲方式

"hideEasing": "linear",//消失时的动画缓冲方式

"showMethod": "fadeIn",//显示时的动画方式

"hideMethod": "fadeOut" //消失时的动画方式

};

  $("#user").blur(function(){
    if ($("#user").val()=="") {
      toastr.error("请输入账号");
    }
  });
    $("#psd").blur(function(){
        if ($("#psd").val()=="") {
            toastr.error("请输入密码");
        }
    });
    $("#login").click(function(){
        if ($("#user").val()=="") {
            toastr.error("请输入账号");
            return false;

        }
        if ($("#psd").val()=="") {
            toastr.error("请输入密码");
            return false;
        }
    });
})
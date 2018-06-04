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
    $("#loginName").keyup(function () {
        $("#message").html("");
    })
    $("#regist").click(function(){
        if ($("#loginName").val()=="") {
            toastr.error("请输入账号");
            return false;
        }
        if ($("#password").val()=="") {
            toastr.error("请输入密码");
            return false;
        }
        if ($("#repassword").val()!=$("#password").val()) {
            toastr.error("两次输入的密码不一致");
            return false;
        }
        if ($("#realName").val()=="") {
            toastr.error("请输入真实姓名");
            return false;
        }
        if ($("#tel").val()=="") {
            toastr.error("请输入电话");
            return false;
        }
        if ($("#email").val()=="") {
            toastr.error("请输入电子邮箱");
            return false;
        }
    });
})
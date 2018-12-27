/**
 * 
 */
    function checkForm() {
        var userName = document.getElementById("userName").value;
        var password = document.getElementById("password").value;
        var userTypes = document.getElementsByName("userType");
        var userType = null;
        for (var i = 0; i < userTypes.length; i++) {
            if (userTypes[i].checked) {
                userType = userTypes[i].value;
                break;
            }
        }
        if (userName == null || userName == "") {
            document.getElementById("error").innerHTML = "用户名不能为空";
            return false;
        }
        if (password == null || password == "") {
            document.getElementById("error").innerHTML = "密码不能为空";
            return false;
        }
        if (userType == null || userType == "") {
            document.getElementById("error").innerHTML = "请选择用户类型";
            return false;
        }
        return true;
    }
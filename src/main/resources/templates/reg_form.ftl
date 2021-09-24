<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Registration form's Main</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
          integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.7.8/angular.min.js"></script>
    <script src="http://code.jquery.com/jquery-1.8.3.js"></script>
</head>
<body ng-app="registration_form" ng-controller="AppCtrl" onload='select_language(getUrlParam("language","EN"));'>
<div class="col-md-8 col-md-offset-2">
    <h1 lang="EN">Registration form</h1>
    <h1 lang="UA">Реєстраційна сторінка</h1>
</div>
<div class="container" style="margin-top: 60px">
    <div class="row">
        <div class="col-md-8 col-md-offset-2">
            <h2 class="page-header" lang="EN">Registration Form Demo</h2>
            <h2 class="page-header" lang="UA">Реєстраційна сторінка (демонстраційна)</h2>
            <form style="margin-bottom: 30px" name="form" autocomplete="off" novalidate ng-submit="form.$valid && sendForm(auth)">
                <span lang="UA">

                </span>
                <span lang="EN">

                </span>
                <div class="form-group">

                    <label for="exampleInputName" lang="EN">First name</label>
                    <label for="exampleInputName" lang="UA">Ім'я</label>
                    <input type="text"
                           class="form-control"
                           id="exampleInputName"
                           placeholder="First Name"
                           required
                           ng-model="auth.names">
                </div>

                <div class="form-group">
                    <label for="exampleInputLogin" lang="EN">Login</label>
                    <label for="exampleInputLogin" lang="UA">Логін</label>
                    <input type="text"
                           class="form-control"
                           id="exampleInputLogin"
                           placeholder="Login"
                           required
                           ng-model="auth.login">
                </div>

                <div class="form-group">
                    <label for="exampleInputPassword" lang="EN">Password</label>
                    <label for="exampleInputPassword" lang="UA">Пароль</label>
                    <input type="password"
                           class="form-control"
                           id="exampleInputPassword"
                           placeholder="Password"
                           required
                           ng-model="auth.password">
                </div>


                <button lang="EN" type="submit" class="btn btn-default" style="margin-top:30px" ng-disabled="form.$invalid">
                    Submit
                </button>

                <button lang="UA" type="submit" class="btn btn-default" style="margin-top:30px" ng-disabled="form.$invalid">
                    Відправити
                </button>


            </form>
        </div>
    </div>
</div>
    <script type="text/javascript" src="/js/reg_form.js"></script>

    <script>
        language={};

        function select_language(language) {
            $("[lang]").each(function () {
                if ($(this).attr("lang").includes(language))
                    $(this).show();
                else
                    $(this).hide();
            });
        }

        function getUrlVars() {
            var vars = {};
            var parts = window.location.href.replace(/[?&]+([^=&]+)=([^&]*)/gi, function(m,key,value) {
                vars[key] = value;
            });
            return vars;
        }

        function getUrlParam(parameter, defaultvalue){
            var urlparameter = defaultvalue;
            if(window.location.href.indexOf(parameter) > -1){
                urlparameter = getUrlVars()[parameter];
                }
            return urlparameter;
        }
    </script>
</body>
</html>
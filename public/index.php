<?php
session_start();
include('../config.php');
?>


<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>SPS</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=yes">
<?php
if($aws) {
  ?>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.2/jquery.min.js"></script>
  <script src="bower_components/page/page.js"></script>
  <script src="bower_components/skel/dist/skel.min.js"></script>
  <script src="bower_components/skel/dist/skel-layout.min.js"></script>
  <script src="bower_components/webcomponentsjs/webcomponents-lite.min.js"></script>
  <?
} else if($prod) {
  ?>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.2/jquery.min.js"></script>
  <script src="bower_components/page/page.js"></script>
  <script src="bower_components/skel/dist/skel.min.js"></script>
  <script src="bower_components/skel/dist/skel-layout.min.js"></script>
  <script src="bower_components/webcomponentsjs/webcomponents-lite.min.js"></script>
  <?
} else {
  ?>
  <script src="bower_components/jquery/dist/jquery.min.js"></script>
  <script src="bower_components/page/page.js"></script>
  <script src="bower_components/skel/dist/skel.min.js"></script>
  <script src="bower_components/skel/dist/skel-layout.min.js"></script>
  <script src="bower_components/webcomponentsjs/webcomponents-lite.min.js"></script>
  <?
}
?>

<script>
skel.breakpoints({
  xlarge: "(max-width: 1680px)",
  large:  "(max-width: 1280px)",
  medium: "(max-width: 980px)",
  smedium: "(max-width: 888px)",
  small:  "(max-width: 736px)",
  xsmall: "(max-width: 580px)",
  xxsmall: "(max-width: 480px)",
  xxxsmall: "(max-width: 360px)"
});
skel.layout({
  reset: "normalize",
  grid: {
    gutters: "40px"
  },
  containers: true,
  conditionals: true,
  breakpoints: {
    large: {
      containers: "95%"
    },
    medium: {
      containers: "95%",
      grid: {
        gutters: "30px"
      }
    },
    small: {
      containers: "95%",
      grid: {
        gutters: "20px"
      }
    },
    xsmall: {
      grid: {
        gutters: "10px"
      }
    },
    xxsmall: {
      grid: {
        gutters: "5px"
      }
    },
    xxxsmall: {
      containers: "100%"
    }
  }
});
skel.on("change", function() {
  console.log(skel.stateId);
});
</script>
<?php
if($aws) {
  ?>
  <link rel="import" href="elements/sps-app.vulcanized.html">
  <?
} else if($prod) {
  ?>
  <link rel="import" href="elements/sps-app.vulcanized.html">
  <?
} else {
  ?>
  <link rel="import" href="elements/sps-app.html">
  <?
}
?>



<style is="custom-style">
  body{
    font-family: Roboto;
  }
  :root {
    --dark-primary-color:       #1976D2;
    --default-primary-color:    #2196F3;
    --light-primary-color:      #BBDEFB;
    --text-primary-color:       #FFFFFF;
    --accent-color:             #8BC34A;
    --primary-background-color: #BBDEFB;
    --primary-text-color:       #212121;
    --secondary-text-color:     #727272;
    --disabled-text-color:      #BDBDBD;
    --divider-color:            #B6B6B6;

    --paper-toolbar-color: #FFFFFF;
    --paper-toolbar-background: #2196F3;
    
    
    /* Components */
    
    /* paper-drawer-panel */
    --drawer-menu-color:           #ffffff;
    --drawer-border-color:         1px solid #ccc;
    --drawer-toolbar-border-color: 1px solid rgba(0, 0, 0, 0.22);
    
    /* paper-menu */
    --paper-menu-background-color: #fff;
    --menu-link-color:             #111111;
    
    /* paper-input */
    /*
    --paper-input-container-color: rgba(0,0,0,0.75);
    --paper-input-container-focus-color: #2196F3;
    */
    --paper-menu-selected-item: {
      color: #2196F3;
    }
  }
  paper-material {
    margin-top: 10px;
    margin-bottom: 10px;
    background-color: white;
  }
    
</style>
</head>
<body onresize="onResize()">
  <sps-app id="mainapp"></sps-app>
</body>
</html>
<script>
var mainapp = document.querySelector("#mainapp");

function onResize() {
  mainapp._onResize();
}

page('/', function(ctx, next) {
  page.redirect('/signup');
});
page('/signup', function(ctx, next) {
  mainapp.page = "signup";
  mainapp.pageTitle = "Sign Up";
  mainapp.ctx = ctx;
});
page('/dashboard', function(ctx, next) {
  mainapp.page = "dashboard";
  mainapp.pageTitle = "Dashboard";
  mainapp.ctx = ctx;
});
page('/presentations/details/:ids', function(ctx, next) {
  mainapp.page = "presentation_details";
  mainapp.pageTitle = "Presentation Details";
  mainapp.ctx = ctx;
  mainapp.presentationsToView = ctx.params.ids.split(",");
  console.log(ctx.params.ids.split(","));
});

page('/presentations', function(ctx, next) {
  mainapp.page = "presentations";
  mainapp.pageTitle = "Presentations";
  mainapp.ctx = ctx;
});

page('/presentations/:house_id', function(ctx, next) {
  mainapp.page = "presentations";
  mainapp.pageTitle = "Presentations";
  mainapp.ctx = ctx;
  mainapp.sPHouseId = ctx.params.house_id;
});

page('/viewers', function(ctx, next) {
  mainapp.page = "viewers";
  mainapp.pageTitle = "Viewers";
  mainapp.ctx = ctx;
});

page('/viewers/details/:ids', function(ctx, next) {
  mainapp.page = "viewer_details";
  mainapp.pageTitle = "Viewer Details";
  mainapp.ctx = ctx;
  mainapp.viewersToView = ctx.params.ids.split(",");
  console.log(ctx.params.ids.split(","));
});

page('/viewers/:grade_id', function(ctx, next) {
  mainapp.page = "viewers";
  mainapp.pageTitle = "Viewers";
  mainapp.ctx = ctx;
  mainapp.sGradeId = ctx.params.grade_id;
});

page('/viewers/:grade_id/:house_id', function(ctx, next) {
  mainapp.page = "viewers";
  mainapp.pageTitle = "Viewers";
  mainapp.ctx = ctx;
  mainapp.sGradeId = ctx.params.grade_id;
  mainapp.ghSelected = ctx.params.grade_id + "-" + ctx.params.house_id;
});

page('/dates', function(ctx, next) {
  mainapp.page = "dates";
  mainapp.pageTitle = "Dates";
  mainapp.ctx = ctx;
});
page('/blocks', function(ctx, next) {
  mainapp.page = "blocks";
  mainapp.pageTitle = "Blocks";
  mainapp.ctx = ctx;
});
page('/locations', function(ctx, next) {
  mainapp.page = "locations";
  mainapp.pageTitle = "Locations";
  mainapp.ctx = ctx;
});
page('/grades', function(ctx, next) {
  mainapp.page = "grades";
  mainapp.pageTitle = "Grades";
  mainapp.ctx = ctx;
});
page('/houses', function(ctx, next) {
  mainapp.page = "houses";
  mainapp.pageTitle = "Houses";
  mainapp.ctx = ctx;
});


//page('*', handleSimplePage);

page({hashbang: true });

</script>
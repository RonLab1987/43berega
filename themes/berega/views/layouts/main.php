<!DOCTYPE html>
<html lang="<?= Yii::app()->language; ?>">
<head>
    <?php \yupe\components\TemplateEvent::fire(BeregaThemeEvents::HEAD_START);?>
    <?php Yii::app()->getController()->widget(
        'vendor.chemezov.yii-seo.widgets.SeoHead',
        array(
            'httpEquivs' => array(
                'Content-Type' => 'text/html; charset=utf-8',
                'X-UA-Compatible' => 'IE=edge,chrome=1',
                'Content-Language' => 'ru-RU'
            ),
            'defaultTitle' => $this->yupe->siteName,
            'defaultDescription' => $this->yupe->siteDescription,
            'defaultKeywords' => $this->yupe->siteKeyWords,
        )
    ); ?>

    <?php
    $mainAssets = Yii::app()->getTheme()->getAssetsUrl();
/*
    Yii::app()->getClientScript()->registerCssFile($mainAssets . '/css/main.css');
    Yii::app()->getClientScript()->registerCssFile($mainAssets . '/css/flags.css');
    Yii::app()->getClientScript()->registerCssFile($mainAssets . '/css/yupe.css');
    */
    Yii::app()->getClientScript()->registerCssFile($mainAssets . '/css/agency.css');  
    Yii::app()->getClientScript()->registerCssFile($mainAssets . '/fancybox/jquery.fancybox.css');  
    
    Yii::app()->getClientScript()->registerScriptFile($mainAssets . '/js/blog.js');
    Yii::app()->getClientScript()->registerScriptFile($mainAssets . '/js/bootstrap-notify.js');
    Yii::app()->getClientScript()->registerScriptFile($mainAssets . '/js/jquery.li-translit.js');
    
    //Yii::app()->getClientScript()->registerScriptFile($mainAssets . '/js/jquery.js');
   // Yii::app()->getClientScript()->registerScriptFile($mainAssets . '/js/cbpAnimatedHeader.min.js');
    Yii::app()->getClientScript()->registerScriptFile($mainAssets . '/js/classie.js');
   // Yii::app()->getClientScript()->registerScriptFile($mainAssets . '/js/contact_me.js');
   // Yii::app()->getClientScript()->registerScriptFile($mainAssets . '/js/jqBootstrapValidation.js');
    Yii::app()->getClientScript()->registerScriptFile($mainAssets . '/js/agency.js');
    Yii::app()->getClientScript()->registerScriptFile($mainAssets . '/fancybox/jquery.fancybox.pack.js');
     
    
    
    ?>
    <script type="text/javascript">
        var yupeTokenName = '<?= Yii::app()->getRequest()->csrfTokenName;?>';
        var yupeToken = '<?= Yii::app()->getRequest()->getCsrfToken();?>';
        
        
        $(document).ready(function() {
	$(".various").fancybox({
		maxWidth	: 800,
		maxHeight	: 600,
		fitToView	: true,
		width		: '450',
		height		: '450',
		autoSize	: false,
		closeClick	: false,
		openEffect	: 'fade',
		closeEffect	: 'fade'
	});
});
    </script>
    <!--[if IE]>
    <script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->
    <link rel="stylesheet" href="http://yandex.st/highlightjs/8.2/styles/github.min.css">
    <script src="http://yastatic.net/highlightjs/8.2/highlight.min.js"></script>


    <!-- Custom Fonts -->
    <link href="font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css">
    <link href='https://fonts.googleapis.com/css?family=Kaushan+Script' rel='stylesheet' type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Droid+Serif:400,700,400italic,700italic' rel='stylesheet' type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Roboto:400,100,300,700' rel='stylesheet' type='text/css'>

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

     <!-- Plugin JavaScript -->
    <!--script src="http://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.3/jquery.easing.min.js"></script>
    <script src="js/classie.js"></script>

    <script src="js/agency.js"></script-->
    
</head>
    <?php \yupe\components\TemplateEvent::fire(BeregaThemeEvents::HEAD_END);?>




<?php \yupe\components\TemplateEvent::fire(BeregaThemeEvents::BODY_START);?>


<body id="page-top" class="index">

<?php if (Yii::app()->hasModule('menu')): ?>
    <?php $this->widget('application.modules.menu.widgets.MenuWidget', ['name' => 'top-menu']); ?>
<?php endif; ?>
    <!-- content -->
    <section class="bg-white">
        <div class="container">
        <?= $content; ?>
    </div>
    </section>    
    
        
<!-- footer -->
    <?php $this->renderPartial('//layouts/_footer'); ?>
    <!-- footer end -->
    
<div class='notifications top-right' id="notifications"></div>
<!-- container end -->
<?php if (Yii::app()->hasModule('contentblock')): ?>
    <?php $this->widget(
        "application.modules.contentblock.widgets.ContentBlockWidget",
        ["code" => "STAT", "silent" => true]
    ); ?>
<?php endif; ?>

<?php
    
    Yii::app()->getClientScript()->registerScriptFile($mainAssets . '/js/blog.js');
    Yii::app()->getClientScript()->registerScriptFile($mainAssets . '/js/bootstrap-notify.js');
    Yii::app()->getClientScript()->registerScriptFile($mainAssets . '/js/jquery.li-translit.js');
    Yii::app()->getClientScript()->registerScriptFile($mainAssets . '/js/classie.js');
    Yii::app()->getClientScript()->registerScriptFile($mainAssets . '/js/agency.js');
    
?>


<?php \yupe\components\TemplateEvent::fire(BeregaThemeEvents::BODY_END);?>
</body>
</html>

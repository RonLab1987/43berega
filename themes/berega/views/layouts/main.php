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

    Yii::app()->getClientScript()->registerCssFile($mainAssets . '/css/main.css');
    Yii::app()->getClientScript()->registerCssFile($mainAssets . '/css/flags.css');
    Yii::app()->getClientScript()->registerCssFile($mainAssets . '/css/yupe.css');
    
    Yii::app()->getClientScript()->registerCssFile($mainAssets . '/css/agency.css');  
    
    
    Yii::app()->getClientScript()->registerScriptFile($mainAssets . '/js/blog.js');
    Yii::app()->getClientScript()->registerScriptFile($mainAssets . '/js/bootstrap-notify.js');
    Yii::app()->getClientScript()->registerScriptFile($mainAssets . '/js/jquery.li-translit.js');
    
    //Yii::app()->getClientScript()->registerScriptFile($mainAssets . '/js/jquery.js');
   // Yii::app()->getClientScript()->registerScriptFile($mainAssets . '/js/cbpAnimatedHeader.min.js');
    Yii::app()->getClientScript()->registerScriptFile($mainAssets . '/js/classie.js');
   // Yii::app()->getClientScript()->registerScriptFile($mainAssets . '/js/contact_me.js');
   // Yii::app()->getClientScript()->registerScriptFile($mainAssets . '/js/jqBootstrapValidation.js');
    Yii::app()->getClientScript()->registerScriptFile($mainAssets . '/js/agency.js');
    
    
    ?>
    <script type="text/javascript">
        var yupeTokenName = '<?= Yii::app()->getRequest()->csrfTokenName;?>';
        var yupeToken = '<?= Yii::app()->getRequest()->getCsrfToken();?>';
    </script>
    <!--[if IE]>
    <script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->
    <link rel="stylesheet" href="http://yandex.st/highlightjs/8.2/styles/github.min.css">
    <script src="http://yastatic.net/highlightjs/8.2/highlight.min.js"></script>
    <?php \yupe\components\TemplateEvent::fire(BeregaThemeEvents::HEAD_END);?>
</head>

<body>

<?php \yupe\components\TemplateEvent::fire(BeregaThemeEvents::BODY_START);?>

<?php if (Yii::app()->hasModule('menu')): ?>
    <?php $this->widget('application.modules.menu.widgets.MenuWidget', ['name' => 'top-menu']); ?>
<?php endif; ?>
    <!-- content -->

        <?= $content; ?>

    <!-- footer -->
<section>    
    <div class='container'>
        <?php $this->renderPartial('//layouts/_footer'); ?>
    </div>
</section>
    
<div class='notifications top-right' id="notifications"></div>
<!-- container end -->
<?php if (Yii::app()->hasModule('contentblock')): ?>
    <?php $this->widget(
        "application.modules.contentblock.widgets.ContentBlockWidget",
        ["code" => "STAT", "silent" => true]
    ); ?>
<?php endif; ?>

<?php \yupe\components\TemplateEvent::fire(BeregaThemeEvents::BODY_END);?>

</body>
</html>

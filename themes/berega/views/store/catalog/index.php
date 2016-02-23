<?php

$mainAssets = Yii::app()->getTheme()->getAssetsUrl();
Yii::app()->getClientScript()->registerCssFile($mainAssets . '/css/store-frontend.css');
Yii::app()->getClientScript()->registerScriptFile($mainAssets . '/js/store.js');

/* @var $category StoreCategory */

$this->breadcrumbs = [Yii::t("StoreModule.store", "Catalog")];

?>

    <div class="container">
        

<div class="row">
    <div class="col-xs-12">
        <h2>Каталог продукции</h2>
    </div>
</div>

<!--div class="row">
    <!--?php $this->widget('application.modules.store.widgets.SearchProductWidget'); ?-->
<!--/div-->
<div class="row">
    <form id="store-filter" name="store-filter" method="get" class="hide">
        <div class="col-sm-3 ">
            <div>
                <?php // $this->widget('application.modules.store.widgets.filters.CategoryFilterWidget'); 
                ?>
            </div>
            <div>
                <?php // $this->widget('application.modules.store.widgets.filters.ProducerFilterWidget'); 
                ?>
            </div>
            <div>
                <?php // $this->widget('application.modules.store.widgets.filters.FilterBlockWidget', ['attributes' => '*']); 
                ?>
            </div>
        </div>
    </form>
    <div class="col-sm-12">
        
            <div class="grid">
                <?php $this->widget(
                    'bootstrap.widgets.TbListView',
                    [
                        'dataProvider' => $dataProvider,
                        'itemView' => '_view',
                        'summaryText' => '',
                        'enableHistory' => true,
                        'cssFile' => false,
                        'itemsCssClass' => 'row items',
                        
                    ]
                ); ?>
            </div>
        
    </div>
</div>
<div class="row">
    <div class="bg-info col-sm-12 text-center">
        В связи с переносом сайта на новую платформу каталог наполнен лишь частично. <br>
        Что-бы получить больше информации, пожалуйста свяжитесь с нами ( <a href="#contacts">Контакты</a> ).
    </div>
</div>

    </div>

<?php

/* @var $product Product */

$this->pageTitle = $product->getMetaTitle();
$this->description = $product->getMetaDescription();
$this->keywords = $product->getMetaKeywords();

$mainAssets = Yii::app()->getModule('store')->getAssetsUrl();
Yii::app()->getClientScript()->registerScriptFile($mainAssets . '/js/jquery.simpleGal.js');

Yii::app()->getClientScript()->registerCssFile(Yii::app()->getTheme()->getAssetsUrl() . '/css/store-frontend.css');
Yii::app()->getClientScript()->registerScriptFile(Yii::app()->getTheme()->getAssetsUrl() . '/js/store.js');

$this->breadcrumbs = array_merge(
    [Yii::t("StoreModule.store", 'Catalog') => ['/store/catalog/index']],
    $product->mainCategory ? $product->mainCategory->getBreadcrumbs(true) : [],
    [CHtml::encode($product->name)]
);
?>
<div class="container">
<div class="row" xmlns="http://www.w3.org/1999/html">
    <div class="col-sm-12">
        <div class="row">
            <div class="col-sm-12">
                <span class="title"><?= CHtml::encode($product->name); ?></span>
            </div>
        </div>
        <div class="row">
            <div class="col-sm-12 product-feature">
                <div class="row">
                    <div class="col-sm-4">
                        <div class="thumbnails">
                            <div class="image-preview">
                                <img src="<?= $product->getImageUrl(); ?>" alt="" class="" id="main-image">
                            </div>
                            <div class="row">
                                <div class="col-xs-4 col-md-4">
                                    <a href="<?= $product->getImageUrl(); ?>" class="thumbnail">
                                        <img src="<?= $product->getImageUrl(50, 50); ?>"/>
                                    </a>
                                </div>
                                <?php foreach ($product->getImages() as $key => $image): { ?>
                                    <div class="col-xs-4 col-md-4">
                                        <a href="<?= $image->getImageUrl(); ?>" class="thumbnail">
                                            <img src="<?= $image->getImageUrl(50, 50); ?>"/>
                                        </a>
                                    </div>
                                <?php } endforeach; ?>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-8">

                        <?php if($product->isInStock()):?>
                            <span class="label label-success"><?= Yii::t("StoreModule.store", "In stock");?></span>
                            <?php if($product->quantity):?>
                                <span></span><?= $product->quantity; ?> <?= Yii::t("StoreModule.store", "in stock"); ?></span>
                            <?php endif;?>
                        <?php else:?>
                            <span class="label label-danger"><?= Yii::t("StoreModule.store", "Not in stock");?></span>
                        <?php endif;?>
                            
                        <h4><?= Yii::t("StoreModule.store", "Description"); ?></h4>
                        
                        <?= $product->description; ?>    


                        <div class="properties">
                            <?php foreach ($product->getAttributeGroups() as $groupName => $items): { ?>
                                <div class="propertyGroup">
                                    <h4>
                                        <span><?= CHtml::encode($groupName); ?></span>
                                    </h4>
                                    <table>
                                        <tbody>
                                            <?php foreach ($items as $attribute): { ?>
                                                <tr>
                                                    <td class="key">
                                                        <span><?= CHtml::encode($attribute->title); ?></span>
                                                    </td>
                                                    <td class="value">
                                                        <?= $attribute->renderValue($product->attribute($attribute->name)); ?>
                                                    </td>
                                                </tr>
                                            <?php } endforeach; ?>
                                        </tbody>
                                    </table>
                                </div>
                            <?php } endforeach; ?>
                        </div>
                        <br>
                            
                        <?php if($product->getVariantsGroup()):?>
                            <hr/>
                            <h4><?= Yii::t("StoreModule.store", "Variants"); ?></h4>
                        <?php endif;?>

                        <form action="<?= Yii::app()->createUrl('cart/cart/add'); ?>" method="post">
                            <input type="hidden" name="Product[id]" value="<?= $product->id; ?>"/>
                            <?= CHtml::hiddenField(
                                Yii::app()->getRequest()->csrfTokenName,
                                Yii::app()->getRequest()->csrfToken
                            ); ?>
                            
                            
                            <table class="table table-condensed">
                                <?php foreach ($product->getVariantsGroup() as $title => $variantsGroup): { ?>
                                    <tr>
                                        <td style="padding: 0;">
                                            <?= CHtml::encode($title); ?>
                                        </td>
                                        <td>
                                            <?=
                                            CHtml::dropDownList(
                                                'ProductVariant[]',
                                                null,
                                                CHtml::listData($variantsGroup, 'id', 'optionValue'),
                                                ['empty' => '', 'class' => 'form-control', 'options' => $product->getVariantsOptions()]
                                            ); ?>
                                        </td>
                                    </tr>
                                <?php } endforeach; ?>
                            </table>
                            
                                
                            <div>
                                <input type="hidden" id="base-price" value="<?= round($product->getResultPrice(), 2); ?>"/>
                                
                                <h4>
                                     Рекомендованная цена   
                                </h4>

                                <p>
                                    РРЦ: от <?= round($product->getBasePrice(), 2); ?> <?= Yii::t("StoreModule.store", "RUB"); ?>
                                </p>
                                <p>
                                    <a class="various" data-fancybox-type="iframe" href="/price-list">ОПТОВЫЙ <span class="nowrap" >ПРАЙС-ЛИСТ</span></a>
                                </p>
                            </div>

                            <?php if (Yii::app()->hasModule('order')): ?>
                                <div class="row">
                                    <div class="col-sm-3">
                                        <div class="input-group">
                                            <div class="input-group-btn">
                                                <button class="btn btn-default product-quantity-decrease" type="button">-
                                                </button>
                                            </div>
                                            <input type="text" class="text-center form-control" value="1"
                                                   name="Product[quantity]" id="product-quantity"/>

                                            <div class="input-group-btn">
                                                <button class="btn btn-default product-quantity-increase" type="button">+
                                                </button>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-sm-6">
                                        <button class="btn btn-success pull-left" id="add-product-to-cart"
                                                data-loading-text="<?= Yii::t("StoreModule.store", "Adding"); ?>">
                                            <?= Yii::t("StoreModule.store", "Add to cart"); ?>
                                        </button>
                                    </div>
                                </div>
                            <?php endif; ?>
                        </form>
                        <br>
                        
                         
                            
                    </div>
                </div>
                
                
            </div>
        </div>
        
        
        <div class="clearfix"></div>
        
    </div>
    <div class="col-sm-12">
        <?php $this->widget('application.modules.store.widgets.LinkedProductsWidget', ['product' => $product, 'code' => null,]); ?>
    </div>
</div>
</div>
<?php Yii::app()->getClientScript()->registerScript(
    "product-images",
    <<<JS
        $(".thumbnails").simpleGal({
    mainImage: "#main-image"
});
JS
); ?>

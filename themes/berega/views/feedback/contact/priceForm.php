
<?php 
    $this->layout = 'minimal';
?>




<div class="container">
    
    
    <?php $this->widget('yupe\widgets\YFlashMessages'); ?>
    <p class="lead text-center">
        Получить оптовый <span class="nowrap">прайс-лист</span>
    </p>
    <p class="text-muted text-center">
        Пожалуйста укажите ваше имя или организацию и ваш email. 
        Мы вышлем вам прайс лист в ответном письме. 
    </p>
    
    <div class="form">
    <?php $form = $this->beginWidget(
        'bootstrap.widgets.TbActiveForm',
        [
            'id'          => 'price-form',
            'type'        => 'vertical',
            'htmlOptions' => [
                'class' => '',
            ]
        ]
    ); ?>

    <?= $form->errorSummary($model); ?>
        
        
    <div class='row'>
        <div class="">
            <?= $form->textFieldGroup($model, 'name'); ?>
        </div>
    </div>

    <div class='row'>
        <div class="">
            <?= $form->textFieldGroup($model, 'email'); ?>
        </div>
    </div>
    <p class="text-center">
        <?php
       $this->widget(
           'bootstrap.widgets.TbButton',
           [
               'buttonType' => 'submit',
               'context'    => 'primary',
               'label'      => 'ПОЛУЧИТЬ',

           ]
       ); ?>
    </p>

    <?php $this->endWidget(); ?>
</div>
    
</div>


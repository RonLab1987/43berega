
<?php 
    $this->layout = 'minimal';
?>




<div class="container">
    
    
    <?php $this->widget('yupe\widgets\YFlashMessages'); ?>
    <p class="lead text-center">
        Задайте ваш вопрос.
    </p>
    <p class="text-muted text-center">
        Мы ответим вам в ближайшее время. 
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
        
    <div class='row'>
        <div class="">
            <?= $form->textAreaGroup(
                $model,
                'text',
                ['widgetOptions' => ['htmlOptions' => ['rows' => 6]]]
            ); ?>
        </div>
    </div>    
        
    <p class="text-center">
        <?php
       $this->widget(
           'bootstrap.widgets.TbButton',
           [
               'buttonType' => 'submit',
               'context'    => 'primary',
               'label'      => 'ОТПРАВИТЬ',

           ]
       ); ?>
    </p>

    <?php $this->endWidget(); ?>
</div>
    
</div>

<?php

/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


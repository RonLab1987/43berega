
<?php 
    $this->layout = 'minimal';
?>


<?php $this->widget('yupe\widgets\YFlashMessages'); ?>

<div class="container">
    
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
        <div class="col-sm-6">
            <?= $form->textFieldGroup($model, 'name'); ?>
        </div>
    </div>

    <div class='row'>
        <div class="col-sm-6">
            <?= $form->textFieldGroup($model, 'email'); ?>
        </div>
    </div>
    
    <?php
    $this->widget(
        'bootstrap.widgets.TbButton',
        [
            'buttonType' => 'submit',
            'context'    => 'primary',
            'label'      => 'ПОЛУЧИТЬ ПРАЙС-ЛИСТ',
        ]
    ); ?>

    <?php $this->endWidget(); ?>
</div>
    
</div>


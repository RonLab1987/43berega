<?php /*$this->widget(
    "application.modules.contentblock.widgets.ContentBlockWidget",
    array("code" => "menu"));*/
    //Yii::import('application.modules.feedback.controllers.ContactController');
    $this->layout = 'main-page';

?>

    <!-- Header -->
    <header>
        <div class="container">
            <div class="row">
                <div class="head-area">
                    <h1>Снаряжение для водного туризма</h1>
                    <h2>оптом от производителя</h2>
                    <h3>вёсла | катамараны | гермоупаковки | комплектующие</h3>
                </div>
            </div>
            
            <div class="row">
                <div class="col-xs-10 col-xs-offset-1 col-sm-8 col-sm-offset-2 col-md-6 col-md-offset-3 col-lg-6 col-lg-offset-3 ">
                    <div class="form-border">
                        <a class="call-form various" data-fancybox-type="iframe" href="/price-list">ПОЛУЧИТЬ ОПТОВЫЙ <span class="nowrap" >ПРАЙС-ЛИСТ</span></a>
                    </div>
                </div>
            </div>
            <span class="fa fa-2x fa-chevron-down text-center chevron"></span>
            
        </div>
    </header>

    <!-- About Section -->
    <section id="About" class="bg-white">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <h2 class="section-heading">«ВЯТСКИЕ БЕРЕГА»</h2>
                    <h3 class="section-subheading text-muted">Производим снаряжение для ваших приключений.</h3>
                </div>
            </div>
            <div class="row service-image">
                
                <div class="col-xs-12 col-sm-offset-1 col-sm-10 col-md-offset-0 col-md-8 co-lg-8    ">
                    <p class="lead">Производим снаряжение более 10 лет.</p> 
                    <p>Первые катамараны мы изготовили  в 2005 году для личного пользования. 
                        И они отлично себя зарекомендовали. 
                        Со временем наше увлечение выросло в профессиональную деятельность. 
                        Сегодня мы располагаем значительным опытом конструкторской работы, 
                        всем необходимым оборудованием, квалифицированным персоналом, налаженными 
                        производственными процесами. И мы продолжаем расти.</p>
                    <p class="lead">
                       Требовательны к качеству.
                    </p>
                    <p>
                        Качество производимого снаряжения — наш приоритет. 
                        Мы обеспечиваем полный цикл производства с контролем 
                        на каждом этапе, используем только проверенные материалы
                        и технологии. Мы предоставляем 1 год гарантии с момента продажи
                        на все наши изделия.
                    </p>
                    <p class="lead">
                       Лично испытываем снаряжение.
                    </p>
                    
                    <p>
                      Все наше снаряжение мы лично испытываем в реальных походах, в том числе на реках 5-6 категорий сложности.
                      Именно это помогает нам находить лучшие конструкторские решения и делать лучшее в своем классе снаряжение.
                    </p>
                </div>
                
            </div>
        </div>    
    </section> 

    <!-- Product Grid Section -->
    <section id="product" class="bg-river">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <h2 class="section-heading">Продукция </h2>
                    <h3 class="section-subheading text-muted">Мы производим следующие виды снаряжения для водного туризма</h3>
                </div>
            </div>
            <div class="row">
                <div class="col-md-4 col-sm-6 portfolio-item">
                    <a href="/store" class="portfolio-link" data-toggle="modal">
                        <div class="portfolio-hover">
                            <div class="portfolio-hover-content">
                                <i class="fa fa-chevron-circle-right fa-3x"></i><br>
                                перейти в каталог
                            </div>
                        </div>
                        <img src="images/veslo.png" class="img-responsive" alt="">
                    </a>
                    <div class="portfolio-caption">
                        <h4>Вёсла</h4>
                        <p class="text-muted">Байдарочные, катамаранные</p>
                        <p class="text-center"><a href="/store" class="small">смотреть в каталоге</a></p>
                    </div>
                </div>
                
                <div class="col-md-4 col-sm-6 portfolio-item">
                    <a href="/store" class="portfolio-link" data-toggle="modal">
                        <div class="portfolio-hover">
                            <div class="portfolio-hover-content">
                                <i class="fa fa-chevron-circle-right fa-3x"></i><br>
                                перейти в каталог
                            </div>
                        </div>
                        <img src="images/katamaran.jpg" class="img-responsive" alt="">
                    </a>
                    <div class="portfolio-caption">
                        <h4>Катамараны</h4>
                        <p class="text-muted">В сборе и комплектующие</p>
                        <p class="text-center"> <a href="/store" class="small">смотреть в каталоге</a></p>
                    </div>
                </div>
                
                <div class="col-md-4 col-sm-6 portfolio-item">
                    <a href="/store" class="portfolio-link" data-toggle="modal">
                        <div class="portfolio-hover">
                            <div class="portfolio-hover-content">
                                <i class="fa fa-chevron-circle-right fa-3x"></i><br>
                                перейти в каталог
                            </div>
                        </div>
                        <img src="images/germa.jpg" class="img-responsive" alt="">
                    </a>
                    <div class="portfolio-caption">
                        <h4>Гермоупаковки</h4>
                        <p class="text-muted">От нагрудных до 150 л.</p>
                        <p class="text-center"><a href="/store" class="small">смотреть в каталоге</a></p>
                    </div>
                </div>
                
                </div>
            </div>
        </div>
    </section>


    
    <!--  Job Rules Section -->
    <section id="order-flow" class="bg-light-gray">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <h2 class="section-heading">Порядок работы</h2>
                    <h3 class="section-subheading text-muted">Мы придерживаемся простой и прозрачной схемы работы<br> с нашими клиентами.</h3>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-12">
                    <ul class="timeline">
                        <li>
                            <div class="timeline-image">
                                <img class="img-circle img-responsive" src="images/zakaz.jpg" alt="">
                                
                            </div>
                            <div class="timeline-panel">
                                <div class="timeline-heading">
                                    <!--h4>2009-2011</h4-->
                                    <h4 class="subheading">ЗАКАЗ</h4>
                                </div>
                                <div class="timeline-body">
                                    <p class="text-muted">
                                        Вы получаете на e-mail прайс-лист и заказные формы (<a class="various" data-fancybox-type="iframe" href="/price-list">заказать</a>). 
                                        Формируете заказ и отправляете его нам ответным письмом на <a href="mailto:43berega@mail.ru">43berega@mail.ru</a> 
                                    </p>
                                </div>
                            </div>
                        </li>
                        <li class="timeline-inverted">
                            <div class="timeline-image">
                                <img class="img-circle img-responsive" src="images/oplata.jpg" alt="">
                            </div>
                            <div class="timeline-panel">
                                <div class="timeline-heading">
                                    
                                    <h4 class="subheading">ОПЛАТА</h4>
                                </div>
                                <div class="timeline-body">
                                    <p class="text-muted">
                                        Мы выставляем вам счёт в течении 2-х рабочих дней. 
                                        Счёт действителен в течении 5 рабочих дней. 
                                        Вы оплачиваете счёт удобным для вас способом.
                                    </p>
                                </div>
                            </div>
                        </li>
                        <li>
                            <div class="timeline-image">
                                <img class="img-circle img-responsive" src="images/dostavka.jpg" alt="">
                            </div>
                            <div class="timeline-panel">
                                <div class="timeline-heading">
                                    
                                    <h4 class="subheading">ДОСТАВКА</h4>
                                    
                                </div>
                                <div class="timeline-body">
                                    <p class="text-muted">
                                        При получении оплаты мы отправляем ваш заказ в 
                                        течении 5 рабочих дней при наличии необходимого количества товара на складе. 
                                        Доставка  производится согласованной транспортной компанией.
                                    </p>
                                </div>
                            </div>
                        </li>
                        
                       
                    </ul>
                </div>
            </div>
            
            
            <div class="row">
                <p class="text-center">
                    <span class="fa fa-2x fa-chevron-down chevron"></span>
                </p>
                
            </div>
             
        </div>
    </section>
    
   <!-- Price Form Section -->
   
   <section id='price-form'>
       <div class="container">
            <div class="row text-center">
                <h2 class="section-heading">оптовый прайс-лист</h2>
                <h3 class="section-subheading">
                    Чтобы получить оптовый прайс-лист и формы заказа воспользуйтесь ссылкой ниже.<br>
                    Мы ответим вам насколько возможно быстро.             
                </h3>                
            </div>
           <div class="row text-center">
                <div class="col-xs-10 col-xs-offset-1 col-sm-8 col-sm-offset-2 col-md-6 col-md-offset-3 col-lg-6 col-lg-offset-3 ">
                    <div class="form-border">
                        <a class="call-form various" data-fancybox-type="iframe" href="/price-list">ПОЛУЧИТЬ ОПТОВЫЙ <span class="nowrap" >ПРАЙС-ЛИСТ</span></a>
                    </div>
                </div>
       </div>
           
        
       
   </section>



    

   

-- phpMyAdmin SQL Dump
-- version 4.5.0.1
-- http://www.phpmyadmin.net
--
-- Хост: localhost
-- Время создания: Фев 09 2016 г., 05:18
-- Версия сервера: 5.7.9
-- Версия PHP: 5.6.15-1+deb.sury.org~trusty+1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `43berega`
--

-- --------------------------------------------------------

--
-- Структура таблицы `yupe_catalog_good`
--

CREATE TABLE `yupe_catalog_good` (
  `id` int(11) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `name` varchar(250) NOT NULL,
  `price` decimal(19,3) NOT NULL DEFAULT '0.000',
  `article` varchar(100) DEFAULT NULL,
  `image` varchar(250) DEFAULT NULL,
  `short_description` text,
  `description` text NOT NULL,
  `slug` varchar(150) NOT NULL,
  `data` text,
  `is_special` tinyint(1) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `create_time` datetime NOT NULL,
  `update_time` datetime NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `change_user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `yupe_category_category`
--

CREATE TABLE `yupe_category_category` (
  `id` int(11) NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `slug` varchar(150) NOT NULL,
  `lang` char(2) DEFAULT NULL,
  `name` varchar(250) NOT NULL,
  `image` varchar(250) DEFAULT NULL,
  `short_description` text,
  `description` text NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `yupe_comment_comment`
--

CREATE TABLE `yupe_comment_comment` (
  `id` int(11) NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `model` varchar(100) NOT NULL,
  `model_id` int(11) NOT NULL,
  `url` varchar(150) DEFAULT NULL,
  `create_time` datetime NOT NULL,
  `name` varchar(150) NOT NULL,
  `email` varchar(150) NOT NULL,
  `text` text NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `ip` varchar(20) DEFAULT NULL,
  `level` int(11) DEFAULT '0',
  `root` int(11) DEFAULT '0',
  `lft` int(11) DEFAULT '0',
  `rgt` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `yupe_contentblock_content_block`
--

CREATE TABLE `yupe_contentblock_content_block` (
  `id` int(11) NOT NULL,
  `name` varchar(250) NOT NULL,
  `code` varchar(100) NOT NULL,
  `type` int(11) NOT NULL DEFAULT '1',
  `content` text NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `yupe_contentblock_content_block`
--

INSERT INTO `yupe_contentblock_content_block` (`id`, `name`, `code`, `type`, `content`, `description`, `category_id`, `status`) VALUES
(1, 'header', 'header', 3, '<!-- Header -->\r\n    <header>\r\n        <div class="container">\r\n            <div class="intro-text">\r\n                <div class="intro-lead-in">производим и продаем оптом</div>\r\n                <div class="intro-heading">Снаряжение для водного туризма</div>\r\n                <a href="#services" class="page-scroll btn btn-xl">Tell Me More</a>\r\n            </div>\r\n        </div>\r\n    </header>', '<p>производим и продаем оптом</p><p>Снаряжение для водного туризма<span class="redactor-invisible-space"><br></span></p>', NULL, 1),
(2, 'ag-body', 'ag-body', 3, '<!-- Services Section -->\r\n    <section id="services">\r\n        <div class="container">\r\n            <div class="row">\r\n                <div class="col-lg-12 text-center">\r\n                    <h2 class="section-heading">Services</h2>\r\n                    <h3 class="section-subheading text-muted">Lorem ipsum dolor sit amet consectetur.</h3>\r\n                </div>\r\n            </div>\r\n            <div class="row text-center">\r\n                <div class="col-md-4">\r\n                    <span class="fa-stack fa-4x">\r\n                        <i class="fa fa-circle fa-stack-2x text-primary"></i>\r\n                        <i class="fa fa-shopping-cart fa-stack-1x fa-inverse"></i>\r\n                    </span>\r\n                    <h4 class="service-heading">E-Commerce</h4>\r\n                    <p class="text-muted">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Minima maxime quam architecto quo inventore harum ex magni, dicta impedit.</p>\r\n                </div>\r\n                <div class="col-md-4">\r\n                    <span class="fa-stack fa-4x">\r\n                        <i class="fa fa-circle fa-stack-2x text-primary"></i>\r\n                        <i class="fa fa-laptop fa-stack-1x fa-inverse"></i>\r\n                    </span>\r\n                    <h4 class="service-heading">Responsive Design</h4>\r\n                    <p class="text-muted">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Minima maxime quam architecto quo inventore harum ex magni, dicta impedit.</p>\r\n                </div>\r\n                <div class="col-md-4">\r\n                    <span class="fa-stack fa-4x">\r\n                        <i class="fa fa-circle fa-stack-2x text-primary"></i>\r\n                        <i class="fa fa-lock fa-stack-1x fa-inverse"></i>\r\n                    </span>\r\n                    <h4 class="service-heading">Web Security</h4>\r\n                    <p class="text-muted">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Minima maxime quam architecto quo inventore harum ex magni, dicta impedit.</p>\r\n                </div>\r\n            </div>\r\n        </div>\r\n    </section>\r\n\r\n    <!-- Portfolio Grid Section -->\r\n    <section id="portfolio" class="bg-light-gray">\r\n        <div class="container">\r\n            <div class="row">\r\n                <div class="col-lg-12 text-center">\r\n                    <h2 class="section-heading">Portfolio</h2>\r\n                    <h3 class="section-subheading text-muted">Lorem ipsum dolor sit amet consectetur.</h3>\r\n                </div>\r\n            </div>\r\n            <div class="row">\r\n                <div class="col-md-4 col-sm-6 portfolio-item">\r\n                    <a href="#portfolioModal1" class="portfolio-link" data-toggle="modal">\r\n                        <div class="portfolio-hover">\r\n                            <div class="portfolio-hover-content">\r\n                                <i class="fa fa-plus fa-3x"></i>\r\n                            </div>\r\n                        </div>\r\n                        <img src="img/portfolio/roundicons.png" class="img-responsive" alt="">\r\n                    </a>\r\n                    <div class="portfolio-caption">\r\n                        <h4>Round Icons</h4>\r\n                        <p class="text-muted">Graphic Design</p>\r\n                    </div>\r\n                </div>\r\n                <div class="col-md-4 col-sm-6 portfolio-item">\r\n                    <a href="#portfolioModal2" class="portfolio-link" data-toggle="modal">\r\n                        <div class="portfolio-hover">\r\n                            <div class="portfolio-hover-content">\r\n                                <i class="fa fa-plus fa-3x"></i>\r\n                            </div>\r\n                        </div>\r\n                        <img src="img/portfolio/startup-framework.png" class="img-responsive" alt="">\r\n                    </a>\r\n                    <div class="portfolio-caption">\r\n                        <h4>Startup Framework</h4>\r\n                        <p class="text-muted">Website Design</p>\r\n                    </div>\r\n                </div>\r\n                <div class="col-md-4 col-sm-6 portfolio-item">\r\n                    <a href="#portfolioModal3" class="portfolio-link" data-toggle="modal">\r\n                        <div class="portfolio-hover">\r\n                            <div class="portfolio-hover-content">\r\n                                <i class="fa fa-plus fa-3x"></i>\r\n                            </div>\r\n                        </div>\r\n                        <img src="img/portfolio/treehouse.png" class="img-responsive" alt="">\r\n                    </a>\r\n                    <div class="portfolio-caption">\r\n                        <h4>Treehouse</h4>\r\n                        <p class="text-muted">Website Design</p>\r\n                    </div>\r\n                </div>\r\n                <div class="col-md-4 col-sm-6 portfolio-item">\r\n                    <a href="#portfolioModal4" class="portfolio-link" data-toggle="modal">\r\n                        <div class="portfolio-hover">\r\n                            <div class="portfolio-hover-content">\r\n                                <i class="fa fa-plus fa-3x"></i>\r\n                            </div>\r\n                        </div>\r\n                        <img src="img/portfolio/golden.png" class="img-responsive" alt="">\r\n                    </a>\r\n                    <div class="portfolio-caption">\r\n                        <h4>Golden</h4>\r\n                        <p class="text-muted">Website Design</p>\r\n                    </div>\r\n                </div>\r\n                <div class="col-md-4 col-sm-6 portfolio-item">\r\n                    <a href="#portfolioModal5" class="portfolio-link" data-toggle="modal">\r\n                        <div class="portfolio-hover">\r\n                            <div class="portfolio-hover-content">\r\n                                <i class="fa fa-plus fa-3x"></i>\r\n                            </div>\r\n                        </div>\r\n                        <img src="img/portfolio/escape.png" class="img-responsive" alt="">\r\n                    </a>\r\n                    <div class="portfolio-caption">\r\n                        <h4>Escape</h4>\r\n                        <p class="text-muted">Website Design</p>\r\n                    </div>\r\n                </div>\r\n                <div class="col-md-4 col-sm-6 portfolio-item">\r\n                    <a href="#portfolioModal6" class="portfolio-link" data-toggle="modal">\r\n                        <div class="portfolio-hover">\r\n                            <div class="portfolio-hover-content">\r\n                                <i class="fa fa-plus fa-3x"></i>\r\n                            </div>\r\n                        </div>\r\n                        <img src="img/portfolio/dreams.png" class="img-responsive" alt="">\r\n                    </a>\r\n                    <div class="portfolio-caption">\r\n                        <h4>Dreams</h4>\r\n                        <p class="text-muted">Website Design</p>\r\n                    </div>\r\n                </div>\r\n            </div>\r\n        </div>\r\n    </section>\r\n\r\n    <!-- About Section -->\r\n    <section id="about">\r\n        <div class="container">\r\n            <div class="row">\r\n                <div class="col-lg-12 text-center">\r\n                    <h2 class="section-heading">About</h2>\r\n                    <h3 class="section-subheading text-muted">Lorem ipsum dolor sit amet consectetur.</h3>\r\n                </div>\r\n            </div>\r\n            <div class="row">\r\n                <div class="col-lg-12">\r\n                    <ul class="timeline">\r\n                        <li>\r\n                            <div class="timeline-image">\r\n                                <img class="img-circle img-responsive" src="img/about/1.jpg" alt="">\r\n                            </div>\r\n                            <div class="timeline-panel">\r\n                                <div class="timeline-heading">\r\n                                    <h4>2009-2011</h4>\r\n                                    <h4 class="subheading">Our Humble Beginnings</h4>\r\n                                </div>\r\n                                <div class="timeline-body">\r\n                                    <p class="text-muted">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sunt ut voluptatum eius sapiente, totam reiciendis temporibus qui quibusdam, recusandae sit vero unde, sed, incidunt et ea quo dolore laudantium consectetur!</p>\r\n                                </div>\r\n                            </div>\r\n                        </li>\r\n                        <li class="timeline-inverted">\r\n                            <div class="timeline-image">\r\n                                <img class="img-circle img-responsive" src="img/about/2.jpg" alt="">\r\n                            </div>\r\n                            <div class="timeline-panel">\r\n                                <div class="timeline-heading">\r\n                                    <h4>March 2011</h4>\r\n                                    <h4 class="subheading">An Agency is Born</h4>\r\n                                </div>\r\n                                <div class="timeline-body">\r\n                                    <p class="text-muted">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sunt ut voluptatum eius sapiente, totam reiciendis temporibus qui quibusdam, recusandae sit vero unde, sed, incidunt et ea quo dolore laudantium consectetur!</p>\r\n                                </div>\r\n                            </div>\r\n                        </li>\r\n                        <li>\r\n                            <div class="timeline-image">\r\n                                <img class="img-circle img-responsive" src="img/about/3.jpg" alt="">\r\n                            </div>\r\n                            <div class="timeline-panel">\r\n                                <div class="timeline-heading">\r\n                                    <h4>December 2012</h4>\r\n                                    <h4 class="subheading">Transition to Full Service</h4>\r\n                                </div>\r\n                                <div class="timeline-body">\r\n                                    <p class="text-muted">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sunt ut voluptatum eius sapiente, totam reiciendis temporibus qui quibusdam, recusandae sit vero unde, sed, incidunt et ea quo dolore laudantium consectetur!</p>\r\n                                </div>\r\n                            </div>\r\n                        </li>\r\n                        <li class="timeline-inverted">\r\n                            <div class="timeline-image">\r\n                                <img class="img-circle img-responsive" src="img/about/4.jpg" alt="">\r\n                            </div>\r\n                            <div class="timeline-panel">\r\n                                <div class="timeline-heading">\r\n                                    <h4>July 2014</h4>\r\n                                    <h4 class="subheading">Phase Two Expansion</h4>\r\n                                </div>\r\n                                <div class="timeline-body">\r\n                                    <p class="text-muted">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sunt ut voluptatum eius sapiente, totam reiciendis temporibus qui quibusdam, recusandae sit vero unde, sed, incidunt et ea quo dolore laudantium consectetur!</p>\r\n                                </div>\r\n                            </div>\r\n                        </li>\r\n                        <li class="timeline-inverted">\r\n                            <div class="timeline-image">\r\n                                <h4>Be Part\r\n                                    <br>Of Our\r\n                                    <br>Story!</h4>\r\n                            </div>\r\n                        </li>\r\n                    </ul>\r\n                </div>\r\n            </div>\r\n        </div>\r\n    </section>\r\n\r\n    <!-- Team Section -->\r\n    <section id="team" class="bg-light-gray">\r\n        <div class="container">\r\n            <div class="row">\r\n                <div class="col-lg-12 text-center">\r\n                    <h2 class="section-heading">Our Amazing Team</h2>\r\n                    <h3 class="section-subheading text-muted">Lorem ipsum dolor sit amet consectetur.</h3>\r\n                </div>\r\n            </div>\r\n            <div class="row">\r\n                <div class="col-sm-4">\r\n                    <div class="team-member">\r\n                        <img src="img/team/1.jpg" class="img-responsive img-circle" alt="">\r\n                        <h4>Kay Garland</h4>\r\n                        <p class="text-muted">Lead Designer</p>\r\n                        <ul class="list-inline social-buttons">\r\n                            <li><a href="#"><i class="fa fa-twitter"></i></a>\r\n                            </li>\r\n                            <li><a href="#"><i class="fa fa-facebook"></i></a>\r\n                            </li>\r\n                            <li><a href="#"><i class="fa fa-linkedin"></i></a>\r\n                            </li>\r\n                        </ul>\r\n                    </div>\r\n                </div>\r\n                <div class="col-sm-4">\r\n                    <div class="team-member">\r\n                        <img src="img/team/2.jpg" class="img-responsive img-circle" alt="">\r\n                        <h4>Larry Parker</h4>\r\n                        <p class="text-muted">Lead Marketer</p>\r\n                        <ul class="list-inline social-buttons">\r\n                            <li><a href="#"><i class="fa fa-twitter"></i></a>\r\n                            </li>\r\n                            <li><a href="#"><i class="fa fa-facebook"></i></a>\r\n                            </li>\r\n                            <li><a href="#"><i class="fa fa-linkedin"></i></a>\r\n                            </li>\r\n                        </ul>\r\n                    </div>\r\n                </div>\r\n                <div class="col-sm-4">\r\n                    <div class="team-member">\r\n                        <img src="img/team/3.jpg" class="img-responsive img-circle" alt="">\r\n                        <h4>Diana Pertersen</h4>\r\n                        <p class="text-muted">Lead Developer</p>\r\n                        <ul class="list-inline social-buttons">\r\n                            <li><a href="#"><i class="fa fa-twitter"></i></a>\r\n                            </li>\r\n                            <li><a href="#"><i class="fa fa-facebook"></i></a>\r\n                            </li>\r\n                            <li><a href="#"><i class="fa fa-linkedin"></i></a>\r\n                            </li>\r\n                        </ul>\r\n                    </div>\r\n                </div>\r\n            </div>\r\n            <div class="row">\r\n                <div class="col-lg-8 col-lg-offset-2 text-center">\r\n                    <p class="large text-muted">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aut eaque, laboriosam veritatis, quos non quis ad perspiciatis, totam corporis ea, alias ut unde.</p>\r\n                </div>\r\n            </div>\r\n        </div>\r\n    </section>\r\n\r\n    <!-- Clients Aside -->\r\n    <aside class="clients">\r\n        <div class="container">\r\n            <div class="row">\r\n                <div class="col-md-3 col-sm-6">\r\n                    <a href="#">\r\n                        <img src="img/logos/envato.jpg" class="img-responsive img-centered" alt="">\r\n                    </a>\r\n                </div>\r\n                <div class="col-md-3 col-sm-6">\r\n                    <a href="#">\r\n                        <img src="img/logos/designmodo.jpg" class="img-responsive img-centered" alt="">\r\n                    </a>\r\n                </div>\r\n                <div class="col-md-3 col-sm-6">\r\n                    <a href="#">\r\n                        <img src="img/logos/themeforest.jpg" class="img-responsive img-centered" alt="">\r\n                    </a>\r\n                </div>\r\n                <div class="col-md-3 col-sm-6">\r\n                    <a href="#">\r\n                        <img src="img/logos/creative-market.jpg" class="img-responsive img-centered" alt="">\r\n                    </a>\r\n                </div>\r\n            </div>\r\n        </div>\r\n    </aside>\r\n    \r\n    <!-- Contact Section -->\r\n    <section id="contact">\r\n        <div class="container">\r\n            <div class="row">\r\n                <div class="col-lg-12 text-center">\r\n                    <h2 class="section-heading">Contact Us</h2>\r\n                    <h3 class="section-subheading text-muted">Lorem ipsum dolor sit amet consectetur.</h3>\r\n                </div>\r\n            </div>\r\n            <div class="row">\r\n                <div class="col-lg-12">\r\n                    <form name="sentMessage" id="contactForm" novalidate>\r\n                        <div class="row">\r\n                            <div class="col-md-6">\r\n                                <div class="form-group">\r\n                                    <input type="text" class="form-control" placeholder="Your Name *" id="name" required data-validation-required-message="Please enter your name.">\r\n                                    <p class="help-block text-danger"></p>\r\n                                </div>\r\n                                <div class="form-group">\r\n                                    <input type="email" class="form-control" placeholder="Your Email *" id="email" required data-validation-required-message="Please enter your email address.">\r\n                                    <p class="help-block text-danger"></p>\r\n                                </div>\r\n                                <div class="form-group">\r\n                                    <input type="tel" class="form-control" placeholder="Your Phone *" id="phone" required data-validation-required-message="Please enter your phone number.">\r\n                                    <p class="help-block text-danger"></p>\r\n                                </div>\r\n                            </div>\r\n                            <div class="col-md-6">\r\n                                <div class="form-group">\r\n                                    <textarea class="form-control" placeholder="Your Message *" id="message" required data-validation-required-message="Please enter a message."></textarea>\r\n                                    <p class="help-block text-danger"></p>\r\n                                </div>\r\n                            </div>\r\n                            <div class="clearfix"></div>\r\n                            <div class="col-lg-12 text-center">\r\n                                <div id="success"></div>\r\n                                <button type="submit" class="btn btn-xl">Send Message</button>\r\n                            </div>\r\n                        </div>\r\n                    </form>\r\n                </div>\r\n            </div>\r\n        </div>\r\n    </section>\r\n\r\n    <footer>\r\n        <div class="container">\r\n            <div class="row">\r\n                <div class="col-md-4">\r\n                    <span class="copyright">Copyright &copy; Your Website 2014</span>\r\n                </div>\r\n                <div class="col-md-4">\r\n                    <ul class="list-inline social-buttons">\r\n                        <li><a href="#"><i class="fa fa-twitter"></i></a>\r\n                        </li>\r\n                        <li><a href="#"><i class="fa fa-facebook"></i></a>\r\n                        </li>\r\n                        <li><a href="#"><i class="fa fa-linkedin"></i></a>\r\n                        </li>\r\n                    </ul>\r\n                </div>\r\n                <div class="col-md-4">\r\n                    <ul class="list-inline quicklinks">\r\n                        <li><a href="#">Privacy Policy</a>\r\n                        </li>\r\n                        <li><a href="#">Terms of Use</a>\r\n                        </li>\r\n                    </ul>\r\n                </div>\r\n            </div>\r\n        </div>\r\n    </footer>\r\n\r\n    <!-- Portfolio Modals -->\r\n    <!-- Use the modals below to showcase details about your portfolio projects! -->\r\n\r\n    <!-- Portfolio Modal 1 -->\r\n    <div class="portfolio-modal modal fade" id="portfolioModal1" tabindex="-1" role="dialog" aria-hidden="true">\r\n        <div class="modal-content">\r\n            <div class="close-modal" data-dismiss="modal">\r\n                <div class="lr">\r\n                    <div class="rl">\r\n                    </div>\r\n                </div>\r\n            </div>\r\n            <div class="container">\r\n                <div class="row">\r\n                    <div class="col-lg-8 col-lg-offset-2">\r\n                        <div class="modal-body">\r\n                            <!-- Project Details Go Here -->\r\n                            <h2>Project Name</h2>\r\n                            <p class="item-intro text-muted">Lorem ipsum dolor sit amet consectetur.</p>\r\n                            <img class="img-responsive img-centered" src="img/portfolio/roundicons-free.png" alt="">\r\n                            <p>Use this area to describe your project. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Est blanditiis dolorem culpa incidunt minus dignissimos deserunt repellat aperiam quasi sunt officia expedita beatae cupiditate, maiores repudiandae, nostrum, reiciendis facere nemo!</p>\r\n                            <p>\r\n                                <strong>Want these icons in this portfolio item sample?</strong>You can download 60 of them for free, courtesy of <a href="https://getdpd.com/cart/hoplink/18076?referrer=bvbo4kax5k8ogc">RoundIcons.com</a>, or you can purchase the 1500 icon set <a href="https://getdpd.com/cart/hoplink/18076?referrer=bvbo4kax5k8ogc">here</a>.</p>\r\n                            <ul class="list-inline">\r\n                                <li>Date: July 2014</li>\r\n                                <li>Client: Round Icons</li>\r\n                                <li>Category: Graphic Design</li>\r\n                            </ul>\r\n                            <button type="button" class="btn btn-primary" data-dismiss="modal"><i class="fa fa-times"></i> Close Project</button>\r\n                        </div>\r\n                    </div>\r\n                </div>\r\n            </div>\r\n        </div>\r\n    </div>\r\n\r\n    <!-- Portfolio Modal 2 -->\r\n    <div class="portfolio-modal modal fade" id="portfolioModal2" tabindex="-1" role="dialog" aria-hidden="true">\r\n        <div class="modal-content">\r\n            <div class="close-modal" data-dismiss="modal">\r\n                <div class="lr">\r\n                    <div class="rl">\r\n                    </div>\r\n                </div>\r\n            </div>\r\n            <div class="container">\r\n                <div class="row">\r\n                    <div class="col-lg-8 col-lg-offset-2">\r\n                        <div class="modal-body">\r\n                            <h2>Project Heading</h2>\r\n                            <p class="item-intro text-muted">Lorem ipsum dolor sit amet consectetur.</p>\r\n                            <img class="img-responsive img-centered" src="img/portfolio/startup-framework-preview.png" alt="">\r\n                            <p><a href="http://designmodo.com/startup/?u=787">Startup Framework</a> is a website builder for professionals. Startup Framework contains components and complex blocks (PSD+HTML Bootstrap themes and templates) which can easily be integrated into almost any design. All of these components are made in the same style, and can easily be integrated into projects, allowing you to create hundreds of solutions for your future projects.</p>\r\n                            <p>You can preview Startup Framework <a href="http://designmodo.com/startup/?u=787">here</a>.</p>\r\n                            <button type="button" class="btn btn-primary" data-dismiss="modal"><i class="fa fa-times"></i> Close Project</button>\r\n                        </div>\r\n                    </div>\r\n                </div>\r\n            </div>\r\n        </div>\r\n    </div>\r\n\r\n    <!-- Portfolio Modal 3 -->\r\n    <div class="portfolio-modal modal fade" id="portfolioModal3" tabindex="-1" role="dialog" aria-hidden="true">\r\n        <div class="modal-content">\r\n            <div class="close-modal" data-dismiss="modal">\r\n                <div class="lr">\r\n                    <div class="rl">\r\n                    </div>\r\n                </div>\r\n            </div>\r\n            <div class="container">\r\n                <div class="row">\r\n                    <div class="col-lg-8 col-lg-offset-2">\r\n                        <div class="modal-body">\r\n                            <!-- Project Details Go Here -->\r\n                            <h2>Project Name</h2>\r\n                            <p class="item-intro text-muted">Lorem ipsum dolor sit amet consectetur.</p>\r\n                            <img class="img-responsive img-centered" src="img/portfolio/treehouse-preview.png" alt="">\r\n                            <p>Treehouse is a free PSD web template built by <a href="https://www.behance.net/MathavanJaya">Mathavan Jaya</a>. This is bright and spacious design perfect for people or startup companies looking to showcase their apps or other projects.</p>\r\n                            <p>You can download the PSD template in this portfolio sample item at <a href="http://freebiesxpress.com/gallery/treehouse-free-psd-web-template/">FreebiesXpress.com</a>.</p>\r\n                            <button type="button" class="btn btn-primary" data-dismiss="modal"><i class="fa fa-times"></i> Close Project</button>\r\n                        </div>\r\n                    </div>\r\n                </div>\r\n            </div>\r\n        </div>\r\n    </div>\r\n\r\n    <!-- Portfolio Modal 4 -->\r\n    <div class="portfolio-modal modal fade" id="portfolioModal4" tabindex="-1" role="dialog" aria-hidden="true">\r\n        <div class="modal-content">\r\n            <div class="close-modal" data-dismiss="modal">\r\n                <div class="lr">\r\n                    <div class="rl">\r\n                    </div>\r\n                </div>\r\n            </div>\r\n            <div class="container">\r\n                <div class="row">\r\n                    <div class="col-lg-8 col-lg-offset-2">\r\n                        <div class="modal-body">\r\n                            <!-- Project Details Go Here -->\r\n                            <h2>Project Name</h2>\r\n                            <p class="item-intro text-muted">Lorem ipsum dolor sit amet consectetur.</p>\r\n                            <img class="img-responsive img-centered" src="img/portfolio/golden-preview.png" alt="">\r\n                            <p>Start Bootstrap''s Agency theme is based on Golden, a free PSD website template built by <a href="https://www.behance.net/MathavanJaya">Mathavan Jaya</a>. Golden is a modern and clean one page web template that was made exclusively for Best PSD Freebies. This template has a great portfolio, timeline, and meet your team sections that can be easily modified to fit your needs.</p>\r\n                            <p>You can download the PSD template in this portfolio sample item at <a href="http://freebiesxpress.com/gallery/golden-free-one-page-web-template/">FreebiesXpress.com</a>.</p>\r\n                            <button type="button" class="btn btn-primary" data-dismiss="modal"><i class="fa fa-times"></i> Close Project</button>\r\n                        </div>\r\n                    </div>\r\n                </div>\r\n            </div>\r\n        </div>\r\n    </div>\r\n\r\n    <!-- Portfolio Modal 5 -->\r\n    <div class="portfolio-modal modal fade" id="portfolioModal5" tabindex="-1" role="dialog" aria-hidden="true">\r\n        <div class="modal-content">\r\n            <div class="close-modal" data-dismiss="modal">\r\n                <div class="lr">\r\n                    <div class="rl">\r\n                    </div>\r\n                </div>\r\n            </div>\r\n            <div class="container">\r\n                <div class="row">\r\n                    <div class="col-lg-8 col-lg-offset-2">\r\n                        <div class="modal-body">\r\n                            <!-- Project Details Go Here -->\r\n                            <h2>Project Name</h2>\r\n                            <p class="item-intro text-muted">Lorem ipsum dolor sit amet consectetur.</p>\r\n                            <img class="img-responsive img-centered" src="img/portfolio/escape-preview.png" alt="">\r\n                            <p>Escape is a free PSD web template built by <a href="https://www.behance.net/MathavanJaya">Mathavan Jaya</a>. Escape is a one page web template that was designed with agencies in mind. This template is ideal for those looking for a simple one page solution to describe your business and offer your services.</p>\r\n                            <p>You can download the PSD template in this portfolio sample item at <a href="http://freebiesxpress.com/gallery/escape-one-page-psd-web-template/">FreebiesXpress.com</a>.</p>\r\n                            <button type="button" class="btn btn-primary" data-dismiss="modal"><i class="fa fa-times"></i> Close Project</button>\r\n                        </div>\r\n                    </div>\r\n                </div>\r\n            </div>\r\n        </div>\r\n    </div>\r\n\r\n    <!-- Portfolio Modal 6 -->\r\n    <div class="portfolio-modal modal fade" id="portfolioModal6" tabindex="-1" role="dialog" aria-hidden="true">\r\n        <div class="modal-content">\r\n            <div class="close-modal" data-dismiss="modal">\r\n                <div class="lr">\r\n                    <div class="rl">\r\n                    </div>\r\n                </div>\r\n            </div>\r\n            <div class="container">\r\n                <div class="row">\r\n                    <div class="col-lg-8 col-lg-offset-2">\r\n                        <div class="modal-body">\r\n                            <!-- Project Details Go Here -->\r\n                            <h2>Project Name</h2>\r\n                            <p class="item-intro text-muted">Lorem ipsum dolor sit amet consectetur.</p>\r\n                            <img class="img-responsive img-centered" src="img/portfolio/dreams-preview.png" alt="">\r\n                            <p>Dreams is a free PSD web template built by <a href="https://www.behance.net/MathavanJaya">Mathavan Jaya</a>. Dreams is a modern one page web template designed for almost any purpose. It’s a beautiful template that’s designed with the Bootstrap framework in mind.</p>\r\n                            <p>You can download the PSD template in this portfolio sample item at <a href="http://freebiesxpress.com/gallery/dreams-free-one-page-web-template/">FreebiesXpress.com</a>.</p>\r\n                            <button type="button" class="btn btn-primary" data-dismiss="modal"><i class="fa fa-times"></i> Close Project</button>\r\n                        </div>\r\n                    </div>\r\n                </div>\r\n            </div>\r\n        </div>\r\n    </div>', '', NULL, 1),
(3, 'menu', 'menu', 3, '<!-- Navigation -->\r\n    <nav class="navbar navbar-default navbar-fixed-top">\r\n        <div class="container">\r\n            <!-- Brand and toggle get grouped for better mobile display -->\r\n            <div class="navbar-header page-scroll">\r\n                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">\r\n                    <span class="sr-only">Toggle navigation</span>\r\n                    <span class="icon-bar"></span>\r\n                    <span class="icon-bar"></span>\r\n                    <span class="icon-bar"></span>\r\n                </button>\r\n                <a class="navbar-brand page-scroll" href="#page-top">Start Bootstrap</a>\r\n            </div>\r\n\r\n            <!-- Collect the nav links, forms, and other content for toggling -->\r\n            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">\r\n                <ul class="nav navbar-nav navbar-right">\r\n                    <li class="hidden">\r\n                        <a href="#page-top"></a>\r\n                    </li>\r\n                    <li>\r\n                        <a class="page-scroll" href="#services">Services</a>\r\n                    </li>\r\n                    <li>\r\n                        <a class="page-scroll" href="#portfolio">Portfolio</a>\r\n                    </li>\r\n                    <li>\r\n                        <a class="page-scroll" href="#about">About</a>\r\n                    </li>\r\n                    <li>\r\n                        <a class="page-scroll" href="#team">Team</a>\r\n                    </li>\r\n                    <li>\r\n                        <a class="page-scroll" href="#contact">Contact</a>\r\n                    </li>\r\n                </ul>\r\n            </div>\r\n            <!-- /.navbar-collapse -->\r\n        </div>\r\n        <!-- /.container-fluid -->\r\n    </nav>', '', NULL, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `yupe_feedback_feedback`
--

CREATE TABLE `yupe_feedback_feedback` (
  `id` int(11) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `answer_user` int(11) DEFAULT NULL,
  `create_time` datetime NOT NULL,
  `update_time` datetime NOT NULL,
  `name` varchar(150) NOT NULL,
  `email` varchar(150) NOT NULL,
  `phone` varchar(150) DEFAULT NULL,
  `theme` varchar(250) NOT NULL,
  `text` text NOT NULL,
  `type` int(11) NOT NULL DEFAULT '0',
  `answer` text NOT NULL,
  `answer_time` datetime DEFAULT NULL,
  `is_faq` int(11) NOT NULL DEFAULT '0',
  `status` int(11) NOT NULL DEFAULT '0',
  `ip` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `yupe_feedback_feedback`
--

INSERT INTO `yupe_feedback_feedback` (`id`, `category_id`, `answer_user`, `create_time`, `update_time`, `name`, `email`, `phone`, `theme`, `text`, `type`, `answer`, `answer_time`, `is_faq`, `status`, `ip`) VALUES
(1, NULL, NULL, '2016-02-02 23:41:48', '2016-02-02 23:41:48', 'Roman', 'ronlab@yandex.ru', '', 'test', 'test', 0, '', NULL, 0, 0, '192.168.10.1');

-- --------------------------------------------------------

--
-- Структура таблицы `yupe_gallery_gallery`
--

CREATE TABLE `yupe_gallery_gallery` (
  `id` int(11) NOT NULL,
  `name` varchar(250) NOT NULL,
  `description` text,
  `status` int(11) NOT NULL DEFAULT '1',
  `owner` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `yupe_gallery_image_to_gallery`
--

CREATE TABLE `yupe_gallery_image_to_gallery` (
  `id` int(11) NOT NULL,
  `image_id` int(11) NOT NULL,
  `gallery_id` int(11) NOT NULL,
  `create_time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `yupe_image_image`
--

CREATE TABLE `yupe_image_image` (
  `id` int(11) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `name` varchar(250) NOT NULL,
  `description` text,
  `file` varchar(250) NOT NULL,
  `create_time` datetime NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `alt` varchar(250) NOT NULL,
  `type` int(11) NOT NULL DEFAULT '0',
  `status` int(11) NOT NULL DEFAULT '1',
  `sort` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `yupe_mail_mail_event`
--

CREATE TABLE `yupe_mail_mail_event` (
  `id` int(11) NOT NULL,
  `code` varchar(150) NOT NULL,
  `name` varchar(150) NOT NULL,
  `description` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `yupe_mail_mail_template`
--

CREATE TABLE `yupe_mail_mail_template` (
  `id` int(11) NOT NULL,
  `code` varchar(150) NOT NULL,
  `event_id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL,
  `description` text,
  `from` varchar(150) NOT NULL,
  `to` varchar(150) NOT NULL,
  `theme` text NOT NULL,
  `body` text NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `yupe_menu_menu`
--

CREATE TABLE `yupe_menu_menu` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `yupe_menu_menu`
--

INSERT INTO `yupe_menu_menu` (`id`, `name`, `code`, `description`, `status`) VALUES
(1, 'Верхнее меню', 'top-menu', 'Основное меню сайта, расположенное сверху в блоке mainmenu.', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `yupe_menu_menu_item`
--

CREATE TABLE `yupe_menu_menu_item` (
  `id` int(11) NOT NULL,
  `parent_id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `regular_link` tinyint(1) NOT NULL DEFAULT '0',
  `title` varchar(150) NOT NULL,
  `href` varchar(150) NOT NULL,
  `class` varchar(150) NOT NULL,
  `title_attr` varchar(150) NOT NULL,
  `before_link` varchar(150) NOT NULL,
  `after_link` varchar(150) NOT NULL,
  `target` varchar(150) NOT NULL,
  `rel` varchar(150) NOT NULL,
  `condition_name` varchar(150) DEFAULT '0',
  `condition_denial` int(11) DEFAULT '0',
  `sort` int(11) NOT NULL DEFAULT '1',
  `status` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `yupe_menu_menu_item`
--

INSERT INTO `yupe_menu_menu_item` (`id`, `parent_id`, `menu_id`, `regular_link`, `title`, `href`, `class`, `title_attr`, `before_link`, `after_link`, `target`, `rel`, `condition_name`, `condition_denial`, `sort`, `status`) VALUES
(1, 0, 1, 0, 'Главная', 'site/index', '', 'Главная страница сайта', '', '', '', '', '', 0, 1, 1),
(2, 0, 1, 0, 'Блоги', '/blog/blog/index', '', 'Блоги', '', '', '', '', '', 0, 2, 0),
(3, 2, 1, 0, 'Пользователи', '/user/people/index', '', 'Пользователи', '', '', '', '', '', 0, 3, 0),
(4, 0, 1, 0, 'Wiki', '/wiki/default/index', '', 'Wiki', '', '', '', '', '', 0, 9, 0),
(5, 0, 1, 0, 'Войти', '/user/account/login', 'login-text', 'Войти на сайт', '', '', '', '', 'isAuthenticated', 1, 11, 1),
(6, 0, 1, 0, 'Выйти', '/user/account/logout', 'login-text', 'Выйти', '', '', '', '', 'isAuthenticated', 0, 12, 1),
(7, 0, 1, 0, 'Регистрация', '/user/account/registration', 'login-text', 'Регистрация на сайте', '', '', '', '', 'isAuthenticated', 1, 10, 1),
(8, 0, 1, 0, 'Панель управления', '/yupe/backend/index', 'login-text', 'Панель управления сайтом', '', '', '', '', 'isSuperUser', 0, 13, 1),
(9, 0, 1, 0, 'FAQ', '/feedback/contact/faq', '', 'FAQ', '', '', '', '', '', 0, 7, 0),
(10, 0, 1, 0, 'Контакты', '/feedback/contact/index', '', 'Контакты', '', '', '', '', '', 0, 7, 1),
(12, 0, 1, 0, 'Продукция', '/store/', '', '', '', '', '', '', '', 0, 14, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `yupe_migrations`
--

CREATE TABLE `yupe_migrations` (
  `id` int(11) NOT NULL,
  `module` varchar(255) NOT NULL,
  `version` varchar(255) NOT NULL,
  `apply_time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `yupe_migrations`
--

INSERT INTO `yupe_migrations` (`id`, `module`, `version`, `apply_time`) VALUES
(1, 'user', 'm000000_000000_user_base', 1454440864),
(2, 'user', 'm131019_212911_user_tokens', 1454440864),
(3, 'user', 'm131025_152911_clean_user_table', 1454440865),
(4, 'user', 'm131026_002234_prepare_hash_user_password', 1454440865),
(5, 'user', 'm131106_111552_user_restore_fields', 1454440866),
(6, 'user', 'm131121_190850_modify_tokes_table', 1454440866),
(7, 'user', 'm140812_100348_add_expire_to_token_table', 1454440866),
(8, 'user', 'm150416_113652_rename_fields', 1454440866),
(9, 'yupe', 'm000000_000000_yupe_base', 1454440868),
(10, 'yupe', 'm130527_154455_yupe_change_unique_index', 1454440868),
(11, 'yupe', 'm150416_125517_rename_fields', 1454440868),
(12, 'category', 'm000000_000000_category_base', 1454440870),
(13, 'category', 'm150415_150436_rename_fields', 1454440870),
(14, 'mail', 'm000000_000000_mail_base', 1454440872),
(15, 'image', 'm000000_000000_image_base', 1454440874),
(16, 'image', 'm150226_121100_image_order', 1454440874),
(17, 'image', 'm150416_080008_rename_fields', 1454440874),
(18, 'sitemap', 'm141004_130000_sitemap_page', 1454440876),
(19, 'sitemap', 'm141004_140000_sitemap_page_data', 1454440876),
(20, 'gallery', 'm000000_000000_gallery_base', 1454440878),
(21, 'gallery', 'm130427_120500_gallery_creation_user', 1454440878),
(22, 'gallery', 'm150416_074146_rename_fields', 1454440878),
(23, 'contentblock', 'm000000_000000_contentblock_base', 1454440880),
(24, 'contentblock', 'm140715_130737_add_category_id', 1454440880),
(25, 'contentblock', 'm150127_130425_add_status_column', 1454440881),
(26, 'feedback', 'm000000_000000_feedback_base', 1454440882),
(27, 'feedback', 'm150415_184108_rename_fields', 1454440883),
(28, 'catalog', 'm000000_000000_good_base', 1454440885),
(29, 'catalog', 'm150415_121606_rename_fields', 1454440885),
(30, 'menu', 'm000000_000000_menu_base', 1454441282),
(31, 'menu', 'm121220_001126_menu_test_data', 1454441282),
(32, 'comment', 'm000000_000000_comment_base', 1454835087),
(33, 'comment', 'm130704_095200_comment_nestedsets', 1454835088),
(34, 'comment', 'm150415_151804_rename_fields', 1454835088),
(35, 'store', 'm140812_160000_store_attribute_group_base', 1454835089),
(36, 'store', 'm140812_170000_store_attribute_base', 1454835089),
(37, 'store', 'm140812_180000_store_attribute_option_base', 1454835089),
(38, 'store', 'm140813_200000_store_category_base', 1454835090),
(39, 'store', 'm140813_210000_store_type_base', 1454835090),
(40, 'store', 'm140813_220000_store_type_attribute_base', 1454835091),
(41, 'store', 'm140813_230000_store_producer_base', 1454835091),
(42, 'store', 'm140814_000000_store_product_base', 1454835092),
(43, 'store', 'm140814_000010_store_product_category_base', 1454835092),
(44, 'store', 'm140814_000013_store_product_attribute_eav_base', 1454835092),
(45, 'store', 'm140814_000018_store_product_image_base', 1454835092),
(46, 'store', 'm140814_000020_store_product_variant_base', 1454835093),
(47, 'store', 'm141014_210000_store_product_category_column', 1454835093),
(48, 'store', 'm141015_170000_store_product_image_column', 1454835093),
(49, 'store', 'm141218_091834_default_null', 1454835093),
(50, 'store', 'm150210_063409_add_store_menu_item', 1454835093),
(51, 'store', 'm150210_105811_add_price_column', 1454835094),
(52, 'store', 'm150210_131238_order_category', 1454835094),
(53, 'store', 'm150211_105453_add_position_for_product_variant', 1454835094),
(54, 'store', 'm150226_065935_add_product_position', 1454835094),
(55, 'store', 'm150416_112008_rename_fields', 1454835094),
(56, 'store', 'm150417_180000_store_product_link_base', 1454835095);

-- --------------------------------------------------------

--
-- Структура таблицы `yupe_sitemap_page`
--

CREATE TABLE `yupe_sitemap_page` (
  `id` int(11) NOT NULL,
  `url` varchar(250) NOT NULL,
  `changefreq` varchar(20) NOT NULL,
  `priority` float NOT NULL DEFAULT '0.5',
  `status` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `yupe_sitemap_page`
--

INSERT INTO `yupe_sitemap_page` (`id`, `url`, `changefreq`, `priority`, `status`) VALUES
(1, '/', 'daily', 0.5, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `yupe_store_attribute`
--

CREATE TABLE `yupe_store_attribute` (
  `id` int(11) NOT NULL,
  `group_id` int(11) DEFAULT NULL,
  `name` varchar(250) NOT NULL,
  `title` varchar(250) DEFAULT NULL,
  `type` tinyint(4) DEFAULT NULL,
  `unit` varchar(30) DEFAULT NULL,
  `required` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `yupe_store_attribute`
--

INSERT INTO `yupe_store_attribute` (`id`, `group_id`, `name`, `title`, `type`, `unit`, `required`) VALUES
(1, 1, 'material-shtoka', 'материал штока', 0, '', 0),
(2, 1, 'material-lopasti', 'материал лопасти', 1, '', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `yupe_store_attribute_group`
--

CREATE TABLE `yupe_store_attribute_group` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `position` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `yupe_store_attribute_group`
--

INSERT INTO `yupe_store_attribute_group` (`id`, `name`, `position`) VALUES
(1, 'весла', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `yupe_store_attribute_option`
--

CREATE TABLE `yupe_store_attribute_option` (
  `id` int(11) NOT NULL,
  `attribute_id` int(11) DEFAULT NULL,
  `position` tinyint(4) DEFAULT NULL,
  `value` varchar(255) DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `yupe_store_category`
--

CREATE TABLE `yupe_store_category` (
  `id` int(11) NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `slug` varchar(150) NOT NULL,
  `name` varchar(250) NOT NULL,
  `image` varchar(250) DEFAULT NULL,
  `short_description` text,
  `description` text,
  `meta_title` varchar(250) DEFAULT NULL,
  `meta_description` varchar(250) DEFAULT NULL,
  `meta_keywords` varchar(250) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `sort` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `yupe_store_category`
--

INSERT INTO `yupe_store_category` (`id`, `parent_id`, `slug`, `name`, `image`, `short_description`, `description`, `meta_title`, `meta_description`, `meta_keywords`, `status`, `sort`) VALUES
(1, NULL, 'vesla', 'Весла', NULL, '', '', '', '', '', 1, 1),
(2, 1, 'vesla-katamarannye', 'весла катамаранные', NULL, '', '', '', '', '', 1, 2);

-- --------------------------------------------------------

--
-- Структура таблицы `yupe_store_producer`
--

CREATE TABLE `yupe_store_producer` (
  `id` int(11) NOT NULL,
  `name_short` varchar(150) NOT NULL,
  `name` varchar(250) NOT NULL,
  `slug` varchar(150) NOT NULL,
  `image` varchar(250) DEFAULT NULL,
  `short_description` text,
  `description` text,
  `meta_title` varchar(250) DEFAULT NULL,
  `meta_keywords` varchar(250) DEFAULT NULL,
  `meta_description` varchar(250) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `yupe_store_product`
--

CREATE TABLE `yupe_store_product` (
  `id` int(11) NOT NULL,
  `type_id` int(11) DEFAULT NULL,
  `producer_id` int(11) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `sku` varchar(100) DEFAULT NULL,
  `name` varchar(250) NOT NULL,
  `slug` varchar(150) NOT NULL,
  `price` decimal(19,3) NOT NULL DEFAULT '0.000',
  `discount_price` decimal(19,3) DEFAULT NULL,
  `discount` decimal(19,3) DEFAULT NULL,
  `description` text,
  `short_description` text,
  `data` text,
  `is_special` tinyint(1) NOT NULL DEFAULT '0',
  `length` decimal(19,3) DEFAULT NULL,
  `width` decimal(19,3) DEFAULT NULL,
  `height` decimal(19,3) DEFAULT NULL,
  `weight` decimal(19,3) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `in_stock` tinyint(4) NOT NULL DEFAULT '1',
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `create_time` datetime NOT NULL,
  `update_time` datetime NOT NULL,
  `meta_title` varchar(250) DEFAULT NULL,
  `meta_keywords` varchar(250) DEFAULT NULL,
  `meta_description` varchar(250) DEFAULT NULL,
  `image` varchar(250) DEFAULT NULL,
  `average_price` decimal(19,3) DEFAULT NULL,
  `purchase_price` decimal(19,3) DEFAULT NULL,
  `recommended_price` decimal(19,3) DEFAULT NULL,
  `position` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `yupe_store_product`
--

INSERT INTO `yupe_store_product` (`id`, `type_id`, `producer_id`, `category_id`, `sku`, `name`, `slug`, `price`, `discount_price`, `discount`, `description`, `short_description`, `data`, `is_special`, `length`, `width`, `height`, `weight`, `quantity`, `in_stock`, `status`, `create_time`, `update_time`, `meta_title`, `meta_keywords`, `meta_description`, `image`, `average_price`, `purchase_price`, `recommended_price`, `position`) VALUES
(1, 1, NULL, 2, '', 'Весло универсальное "Кобра"', 'veslo-universalnoe-kobra', '2500.000', NULL, NULL, '', '', '', 0, NULL, NULL, NULL, NULL, NULL, 1, 1, '2016-02-07 11:56:30', '2016-02-07 19:29:24', '', '', '', '86e1923adc3644ea4b6bc114ae614c59.png', NULL, NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `yupe_store_product_attribute_eav`
--

CREATE TABLE `yupe_store_product_attribute_eav` (
  `product_id` int(11) NOT NULL,
  `attribute` varchar(250) NOT NULL,
  `value` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `yupe_store_product_attribute_eav`
--

INSERT INTO `yupe_store_product_attribute_eav` (`product_id`, `attribute`, `value`) VALUES
(1, 'material-shtoka', '<p>алюминий</p>'),
(1, 'material-lopasti', 'пвх');

-- --------------------------------------------------------

--
-- Структура таблицы `yupe_store_product_category`
--

CREATE TABLE `yupe_store_product_category` (
  `id` int(11) NOT NULL,
  `product_id` int(11) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `yupe_store_product_image`
--

CREATE TABLE `yupe_store_product_image` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `name` varchar(250) NOT NULL,
  `title` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `yupe_store_product_image`
--

INSERT INTO `yupe_store_product_image` (`id`, `product_id`, `name`, `title`) VALUES
(1, 1, 'fc61dcd2f4b506d709f9499a6685e091.png', ''),
(2, 1, '6539a0f3f049947b956f6c28711e4dbe.png', '');

-- --------------------------------------------------------

--
-- Структура таблицы `yupe_store_product_link`
--

CREATE TABLE `yupe_store_product_link` (
  `id` int(11) NOT NULL,
  `type_id` int(11) DEFAULT NULL,
  `product_id` int(11) NOT NULL,
  `linked_product_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `yupe_store_product_link_type`
--

CREATE TABLE `yupe_store_product_link_type` (
  `id` int(11) NOT NULL,
  `code` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `yupe_store_product_link_type`
--

INSERT INTO `yupe_store_product_link_type` (`id`, `code`, `title`) VALUES
(1, 'similar', 'Похожие'),
(2, 'related', 'Сопутствующие');

-- --------------------------------------------------------

--
-- Структура таблицы `yupe_store_product_variant`
--

CREATE TABLE `yupe_store_product_variant` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `attribute_id` int(11) NOT NULL,
  `attribute_value` varchar(255) DEFAULT NULL,
  `amount` float DEFAULT NULL,
  `type` tinyint(4) NOT NULL,
  `sku` varchar(50) DEFAULT NULL,
  `position` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `yupe_store_type`
--

CREATE TABLE `yupe_store_type` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `main_category_id` int(11) DEFAULT NULL,
  `categories` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `yupe_store_type`
--

INSERT INTO `yupe_store_type` (`id`, `name`, `main_category_id`, `categories`) VALUES
(1, 'весла (тип товара)', 1, 'N;');

-- --------------------------------------------------------

--
-- Структура таблицы `yupe_store_type_attribute`
--

CREATE TABLE `yupe_store_type_attribute` (
  `type_id` int(11) NOT NULL,
  `attribute_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `yupe_store_type_attribute`
--

INSERT INTO `yupe_store_type_attribute` (`type_id`, `attribute_id`) VALUES
(1, 1),
(1, 2);

-- --------------------------------------------------------

--
-- Структура таблицы `yupe_user_tokens`
--

CREATE TABLE `yupe_user_tokens` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `token` varchar(255) DEFAULT NULL,
  `type` int(11) NOT NULL,
  `status` int(11) DEFAULT NULL,
  `create_time` datetime NOT NULL,
  `update_time` datetime DEFAULT NULL,
  `ip` varchar(255) DEFAULT NULL,
  `expire_time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `yupe_user_tokens`
--

INSERT INTO `yupe_user_tokens` (`id`, `user_id`, `token`, `type`, `status`, `create_time`, `update_time`, `ip`, `expire_time`) VALUES
(4, 1, 'p~k7dCIdQ74nhV8dMJLyob8vHUI1qK6X', 4, 0, '2016-02-07 11:02:53', '2016-02-07 11:02:53', '192.168.10.1', '2016-02-14 11:02:53');

-- --------------------------------------------------------

--
-- Структура таблицы `yupe_user_user`
--

CREATE TABLE `yupe_user_user` (
  `id` int(11) NOT NULL,
  `update_time` datetime NOT NULL,
  `first_name` varchar(250) DEFAULT NULL,
  `middle_name` varchar(250) DEFAULT NULL,
  `last_name` varchar(250) DEFAULT NULL,
  `nick_name` varchar(250) NOT NULL,
  `email` varchar(250) NOT NULL,
  `gender` tinyint(1) NOT NULL DEFAULT '0',
  `birth_date` date DEFAULT NULL,
  `site` varchar(250) NOT NULL DEFAULT '',
  `about` varchar(250) NOT NULL DEFAULT '',
  `location` varchar(250) NOT NULL DEFAULT '',
  `status` int(11) NOT NULL DEFAULT '2',
  `access_level` int(11) NOT NULL DEFAULT '0',
  `visit_time` datetime DEFAULT NULL,
  `create_time` datetime NOT NULL,
  `avatar` varchar(150) DEFAULT NULL,
  `hash` varchar(255) NOT NULL DEFAULT '65ed09ada4c6899ab2720b27995b9b5c0.71037800 1454440865',
  `email_confirm` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `yupe_user_user`
--

INSERT INTO `yupe_user_user` (`id`, `update_time`, `first_name`, `middle_name`, `last_name`, `nick_name`, `email`, `gender`, `birth_date`, `site`, `about`, `location`, `status`, `access_level`, `visit_time`, `create_time`, `avatar`, `hash`, `email_confirm`) VALUES
(1, '2016-02-02 22:22:04', '', '', '', 'Roman', 'ronlab@yandex.ru', 0, NULL, '', '', '', 1, 1, '2016-02-09 07:31:38', '2016-02-02 22:22:04', NULL, '$2y$13$f5kUr6gfwTrIjRq0nM2kyuS0iC47vCowfW5.u8PF4PcovwnOnfnha', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `yupe_yupe_settings`
--

CREATE TABLE `yupe_yupe_settings` (
  `id` int(11) NOT NULL,
  `module_id` varchar(100) NOT NULL,
  `param_name` varchar(100) NOT NULL,
  `param_value` varchar(255) NOT NULL,
  `create_time` datetime NOT NULL,
  `update_time` datetime NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `type` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `yupe_yupe_settings`
--

INSERT INTO `yupe_yupe_settings` (`id`, `module_id`, `param_name`, `param_value`, `create_time`, `update_time`, `user_id`, `type`) VALUES
(1, 'yupe', 'siteDescription', 'Производство снаряжения для водного туризма: весла для байдарок и катамаранов, катамараны и комплектующие.', '2016-02-02 22:27:12', '2016-02-02 22:27:12', 1, 1),
(2, 'yupe', 'siteName', 'ВЯТСКИЕ БЕРЕГА', '2016-02-02 22:27:12', '2016-02-02 22:27:12', 1, 1),
(3, 'yupe', 'siteKeyWords', 'Весла, вёсла, оптом, продажа,  весла оптом,  весла байдарочные, весла для катамаранов, весла для катамаранов, весла катамаранные, катамараны, комплектующие ', '2016-02-02 22:27:12', '2016-02-02 22:27:12', 1, 1),
(4, 'yupe', 'email', 'ronlab@yandex.ru', '2016-02-02 22:27:12', '2016-02-02 22:27:12', 1, 1),
(5, 'yupe', 'theme', 'berega', '2016-02-02 22:27:12', '2016-02-02 23:19:56', 1, 1),
(6, 'yupe', 'backendTheme', '', '2016-02-02 22:27:12', '2016-02-02 22:27:12', 1, 1),
(7, 'yupe', 'coreCacheTime', '3600', '2016-02-02 22:39:51', '2016-02-02 22:39:51', 1, 1),
(8, 'yupe', 'uploadPath', 'uploads', '2016-02-02 22:39:51', '2016-02-02 22:39:51', 1, 1),
(9, 'yupe', 'editor', 'redactor', '2016-02-02 22:39:51', '2016-02-02 22:39:51', 1, 1),
(10, 'yupe', 'availableLanguages', 'ru', '2016-02-02 22:39:51', '2016-02-02 22:39:51', 1, 1),
(11, 'yupe', 'defaultLanguage', 'ru', '2016-02-02 22:39:51', '2016-02-02 22:39:51', 1, 1),
(12, 'yupe', 'defaultBackendLanguage', 'ru', '2016-02-02 22:39:51', '2016-02-02 22:39:51', 1, 1),
(13, 'yupe', 'allowedIp', '', '2016-02-02 22:39:51', '2016-02-02 22:39:51', 1, 1),
(14, 'yupe', 'hidePanelUrls', '0', '2016-02-02 22:39:51', '2016-02-02 22:39:51', 1, 1),
(15, 'yupe', 'logo', 'images/logo.png', '2016-02-02 22:39:51', '2016-02-02 22:39:51', 1, 1),
(16, 'yupe', 'allowedExtensions', 'gif, jpeg, png, jpg, zip, rar', '2016-02-02 22:39:51', '2016-02-02 22:39:51', 1, 1),
(17, 'yupe', 'mimeTypes', 'image/gif, image/jpeg, image/png, application/zip, application/rar', '2016-02-02 22:39:51', '2016-02-02 22:39:51', 1, 1),
(18, 'yupe', 'maxSize', '5242880', '2016-02-02 22:39:51', '2016-02-02 22:39:51', 1, 1);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `yupe_catalog_good`
--
ALTER TABLE `yupe_catalog_good`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ux_yupe_catalog_good_alias` (`slug`),
  ADD KEY `ix_yupe_catalog_good_status` (`status`),
  ADD KEY `ix_yupe_catalog_good_category` (`category_id`),
  ADD KEY `ix_yupe_catalog_good_user` (`user_id`),
  ADD KEY `ix_yupe_catalog_good_change_user` (`change_user_id`),
  ADD KEY `ix_yupe_catalog_good_article` (`article`),
  ADD KEY `ix_yupe_catalog_good_price` (`price`);

--
-- Индексы таблицы `yupe_category_category`
--
ALTER TABLE `yupe_category_category`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ux_yupe_category_category_alias_lang` (`slug`,`lang`),
  ADD KEY `ix_yupe_category_category_parent_id` (`parent_id`),
  ADD KEY `ix_yupe_category_category_status` (`status`);

--
-- Индексы таблицы `yupe_comment_comment`
--
ALTER TABLE `yupe_comment_comment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ix_yupe_comment_comment_status` (`status`),
  ADD KEY `ix_yupe_comment_comment_model_model_id` (`model`,`model_id`),
  ADD KEY `ix_yupe_comment_comment_model` (`model`),
  ADD KEY `ix_yupe_comment_comment_model_id` (`model_id`),
  ADD KEY `ix_yupe_comment_comment_user_id` (`user_id`),
  ADD KEY `ix_yupe_comment_comment_parent_id` (`parent_id`),
  ADD KEY `ix_yupe_comment_comment_level` (`level`),
  ADD KEY `ix_yupe_comment_comment_root` (`root`),
  ADD KEY `ix_yupe_comment_comment_lft` (`lft`),
  ADD KEY `ix_yupe_comment_comment_rgt` (`rgt`);

--
-- Индексы таблицы `yupe_contentblock_content_block`
--
ALTER TABLE `yupe_contentblock_content_block`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ux_yupe_contentblock_content_block_code` (`code`),
  ADD KEY `ix_yupe_contentblock_content_block_type` (`type`),
  ADD KEY `ix_yupe_contentblock_content_block_status` (`status`);

--
-- Индексы таблицы `yupe_feedback_feedback`
--
ALTER TABLE `yupe_feedback_feedback`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ix_yupe_feedback_feedback_category` (`category_id`),
  ADD KEY `ix_yupe_feedback_feedback_type` (`type`),
  ADD KEY `ix_yupe_feedback_feedback_status` (`status`),
  ADD KEY `ix_yupe_feedback_feedback_isfaq` (`is_faq`),
  ADD KEY `ix_yupe_feedback_feedback_answer_user` (`answer_user`);

--
-- Индексы таблицы `yupe_gallery_gallery`
--
ALTER TABLE `yupe_gallery_gallery`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ix_yupe_gallery_gallery_status` (`status`),
  ADD KEY `ix_yupe_gallery_gallery_owner` (`owner`);

--
-- Индексы таблицы `yupe_gallery_image_to_gallery`
--
ALTER TABLE `yupe_gallery_image_to_gallery`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ux_yupe_gallery_image_to_gallery_gallery_to_image` (`image_id`,`gallery_id`),
  ADD KEY `ix_yupe_gallery_image_to_gallery_gallery_to_image_image` (`image_id`),
  ADD KEY `ix_yupe_gallery_image_to_gallery_gallery_to_image_gallery` (`gallery_id`);

--
-- Индексы таблицы `yupe_image_image`
--
ALTER TABLE `yupe_image_image`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ix_yupe_image_image_status` (`status`),
  ADD KEY `ix_yupe_image_image_user` (`user_id`),
  ADD KEY `ix_yupe_image_image_type` (`type`),
  ADD KEY `ix_yupe_image_image_category_id` (`category_id`),
  ADD KEY `fk_yupe_image_image_parent_id` (`parent_id`);

--
-- Индексы таблицы `yupe_mail_mail_event`
--
ALTER TABLE `yupe_mail_mail_event`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ux_yupe_mail_mail_event_code` (`code`);

--
-- Индексы таблицы `yupe_mail_mail_template`
--
ALTER TABLE `yupe_mail_mail_template`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ux_yupe_mail_mail_template_code` (`code`),
  ADD KEY `ix_yupe_mail_mail_template_status` (`status`),
  ADD KEY `ix_yupe_mail_mail_template_event_id` (`event_id`);

--
-- Индексы таблицы `yupe_menu_menu`
--
ALTER TABLE `yupe_menu_menu`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ux_yupe_menu_menu_code` (`code`),
  ADD KEY `ix_yupe_menu_menu_status` (`status`);

--
-- Индексы таблицы `yupe_menu_menu_item`
--
ALTER TABLE `yupe_menu_menu_item`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ix_yupe_menu_menu_item_menu_id` (`menu_id`),
  ADD KEY `ix_yupe_menu_menu_item_sort` (`sort`),
  ADD KEY `ix_yupe_menu_menu_item_status` (`status`);

--
-- Индексы таблицы `yupe_migrations`
--
ALTER TABLE `yupe_migrations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_migrations_module` (`module`);

--
-- Индексы таблицы `yupe_sitemap_page`
--
ALTER TABLE `yupe_sitemap_page`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ux_yupe_sitemap_page_url` (`url`);

--
-- Индексы таблицы `yupe_store_attribute`
--
ALTER TABLE `yupe_store_attribute`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ux_yupe_store_attribute_name_group` (`name`,`group_id`),
  ADD KEY `ix_yupe_store_attribute_title` (`title`),
  ADD KEY `fk_yupe_store_attribute_group` (`group_id`);

--
-- Индексы таблицы `yupe_store_attribute_group`
--
ALTER TABLE `yupe_store_attribute_group`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `yupe_store_attribute_option`
--
ALTER TABLE `yupe_store_attribute_option`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ix_yupe_store_attribute_option_attribute_id` (`attribute_id`),
  ADD KEY `ix_yupe_store_attribute_option_position` (`position`);

--
-- Индексы таблицы `yupe_store_category`
--
ALTER TABLE `yupe_store_category`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ux_yupe_store_category_alias` (`slug`),
  ADD KEY `ix_yupe_store_category_parent_id` (`parent_id`),
  ADD KEY `ix_yupe_store_category_status` (`status`);

--
-- Индексы таблицы `yupe_store_producer`
--
ALTER TABLE `yupe_store_producer`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ix_yupe_store_producer_slug` (`slug`);

--
-- Индексы таблицы `yupe_store_product`
--
ALTER TABLE `yupe_store_product`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ux_yupe_store_product_alias` (`slug`),
  ADD KEY `ix_yupe_store_product_status` (`status`),
  ADD KEY `ix_yupe_store_product_type_id` (`type_id`),
  ADD KEY `ix_yupe_store_product_producer_id` (`producer_id`),
  ADD KEY `ix_yupe_store_product_price` (`price`),
  ADD KEY `ix_yupe_store_product_discount_price` (`discount_price`),
  ADD KEY `ix_yupe_store_product_create_time` (`create_time`),
  ADD KEY `ix_yupe_store_product_update_time` (`update_time`),
  ADD KEY `fk_yupe_store_product_category` (`category_id`);

--
-- Индексы таблицы `yupe_store_product_attribute_eav`
--
ALTER TABLE `yupe_store_product_attribute_eav`
  ADD KEY `ix_yupe_store_product_attribute_eav_product_id` (`product_id`),
  ADD KEY `ix_yupe_store_product_attribute_eav_attribute` (`attribute`);

--
-- Индексы таблицы `yupe_store_product_category`
--
ALTER TABLE `yupe_store_product_category`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ix_yupe_store_product_category_product_id` (`product_id`),
  ADD KEY `ix_yupe_store_product_category_category_id` (`category_id`);

--
-- Индексы таблицы `yupe_store_product_image`
--
ALTER TABLE `yupe_store_product_image`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_yupe_store_product_image_product` (`product_id`);

--
-- Индексы таблицы `yupe_store_product_link`
--
ALTER TABLE `yupe_store_product_link`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ux_yupe_store_product_link_product` (`product_id`,`linked_product_id`),
  ADD KEY `fk_yupe_store_product_link_linked_product` (`linked_product_id`),
  ADD KEY `fk_yupe_store_product_link_type` (`type_id`);

--
-- Индексы таблицы `yupe_store_product_link_type`
--
ALTER TABLE `yupe_store_product_link_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ux_yupe_store_product_link_type_code` (`code`),
  ADD UNIQUE KEY `ux_yupe_store_product_link_type_title` (`title`);

--
-- Индексы таблицы `yupe_store_product_variant`
--
ALTER TABLE `yupe_store_product_variant`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_yupe_store_product_variant_product` (`product_id`),
  ADD KEY `idx_yupe_store_product_variant_attribute` (`attribute_id`),
  ADD KEY `idx_yupe_store_product_variant_value` (`attribute_value`);

--
-- Индексы таблицы `yupe_store_type`
--
ALTER TABLE `yupe_store_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ux_yupe_store_type_name` (`name`),
  ADD KEY `fk_yupe_store_type_main_category` (`main_category_id`);

--
-- Индексы таблицы `yupe_store_type_attribute`
--
ALTER TABLE `yupe_store_type_attribute`
  ADD PRIMARY KEY (`type_id`,`attribute_id`);

--
-- Индексы таблицы `yupe_user_tokens`
--
ALTER TABLE `yupe_user_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ix_yupe_user_tokens_user_id` (`user_id`);

--
-- Индексы таблицы `yupe_user_user`
--
ALTER TABLE `yupe_user_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ux_yupe_user_user_nick_name` (`nick_name`),
  ADD UNIQUE KEY `ux_yupe_user_user_email` (`email`),
  ADD KEY `ix_yupe_user_user_status` (`status`);

--
-- Индексы таблицы `yupe_yupe_settings`
--
ALTER TABLE `yupe_yupe_settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ux_yupe_yupe_settings_module_id_param_name_user_id` (`module_id`,`param_name`,`user_id`),
  ADD KEY `ix_yupe_yupe_settings_module_id` (`module_id`),
  ADD KEY `ix_yupe_yupe_settings_param_name` (`param_name`),
  ADD KEY `fk_yupe_yupe_settings_user_id` (`user_id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `yupe_catalog_good`
--
ALTER TABLE `yupe_catalog_good`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `yupe_category_category`
--
ALTER TABLE `yupe_category_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `yupe_comment_comment`
--
ALTER TABLE `yupe_comment_comment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `yupe_contentblock_content_block`
--
ALTER TABLE `yupe_contentblock_content_block`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT для таблицы `yupe_feedback_feedback`
--
ALTER TABLE `yupe_feedback_feedback`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT для таблицы `yupe_gallery_gallery`
--
ALTER TABLE `yupe_gallery_gallery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `yupe_gallery_image_to_gallery`
--
ALTER TABLE `yupe_gallery_image_to_gallery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `yupe_image_image`
--
ALTER TABLE `yupe_image_image`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `yupe_mail_mail_event`
--
ALTER TABLE `yupe_mail_mail_event`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `yupe_mail_mail_template`
--
ALTER TABLE `yupe_mail_mail_template`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `yupe_menu_menu`
--
ALTER TABLE `yupe_menu_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT для таблицы `yupe_menu_menu_item`
--
ALTER TABLE `yupe_menu_menu_item`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT для таблицы `yupe_migrations`
--
ALTER TABLE `yupe_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;
--
-- AUTO_INCREMENT для таблицы `yupe_sitemap_page`
--
ALTER TABLE `yupe_sitemap_page`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT для таблицы `yupe_store_attribute`
--
ALTER TABLE `yupe_store_attribute`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT для таблицы `yupe_store_attribute_group`
--
ALTER TABLE `yupe_store_attribute_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT для таблицы `yupe_store_attribute_option`
--
ALTER TABLE `yupe_store_attribute_option`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `yupe_store_category`
--
ALTER TABLE `yupe_store_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT для таблицы `yupe_store_producer`
--
ALTER TABLE `yupe_store_producer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `yupe_store_product`
--
ALTER TABLE `yupe_store_product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT для таблицы `yupe_store_product_category`
--
ALTER TABLE `yupe_store_product_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `yupe_store_product_image`
--
ALTER TABLE `yupe_store_product_image`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT для таблицы `yupe_store_product_link`
--
ALTER TABLE `yupe_store_product_link`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `yupe_store_product_link_type`
--
ALTER TABLE `yupe_store_product_link_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT для таблицы `yupe_store_product_variant`
--
ALTER TABLE `yupe_store_product_variant`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `yupe_store_type`
--
ALTER TABLE `yupe_store_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT для таблицы `yupe_user_tokens`
--
ALTER TABLE `yupe_user_tokens`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT для таблицы `yupe_user_user`
--
ALTER TABLE `yupe_user_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT для таблицы `yupe_yupe_settings`
--
ALTER TABLE `yupe_yupe_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `yupe_catalog_good`
--
ALTER TABLE `yupe_catalog_good`
  ADD CONSTRAINT `fk_yupe_catalog_good_category` FOREIGN KEY (`category_id`) REFERENCES `yupe_category_category` (`id`) ON DELETE SET NULL ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_yupe_catalog_good_change_user` FOREIGN KEY (`change_user_id`) REFERENCES `yupe_user_user` (`id`) ON DELETE SET NULL ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_yupe_catalog_good_user` FOREIGN KEY (`user_id`) REFERENCES `yupe_user_user` (`id`) ON DELETE SET NULL ON UPDATE NO ACTION;

--
-- Ограничения внешнего ключа таблицы `yupe_category_category`
--
ALTER TABLE `yupe_category_category`
  ADD CONSTRAINT `fk_yupe_category_category_parent_id` FOREIGN KEY (`parent_id`) REFERENCES `yupe_category_category` (`id`) ON DELETE SET NULL ON UPDATE NO ACTION;

--
-- Ограничения внешнего ключа таблицы `yupe_comment_comment`
--
ALTER TABLE `yupe_comment_comment`
  ADD CONSTRAINT `fk_yupe_comment_comment_parent_id` FOREIGN KEY (`parent_id`) REFERENCES `yupe_comment_comment` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_yupe_comment_comment_user_id` FOREIGN KEY (`user_id`) REFERENCES `yupe_user_user` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Ограничения внешнего ключа таблицы `yupe_feedback_feedback`
--
ALTER TABLE `yupe_feedback_feedback`
  ADD CONSTRAINT `fk_yupe_feedback_feedback_answer_user` FOREIGN KEY (`answer_user`) REFERENCES `yupe_user_user` (`id`) ON DELETE SET NULL ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_yupe_feedback_feedback_category` FOREIGN KEY (`category_id`) REFERENCES `yupe_category_category` (`id`) ON DELETE SET NULL ON UPDATE NO ACTION;

--
-- Ограничения внешнего ключа таблицы `yupe_gallery_gallery`
--
ALTER TABLE `yupe_gallery_gallery`
  ADD CONSTRAINT `fk_yupe_gallery_gallery_owner` FOREIGN KEY (`owner`) REFERENCES `yupe_user_user` (`id`) ON DELETE SET NULL ON UPDATE NO ACTION;

--
-- Ограничения внешнего ключа таблицы `yupe_gallery_image_to_gallery`
--
ALTER TABLE `yupe_gallery_image_to_gallery`
  ADD CONSTRAINT `fk_yupe_gallery_image_to_gallery_gallery_to_image_gallery` FOREIGN KEY (`gallery_id`) REFERENCES `yupe_gallery_gallery` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_yupe_gallery_image_to_gallery_gallery_to_image_image` FOREIGN KEY (`image_id`) REFERENCES `yupe_image_image` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Ограничения внешнего ключа таблицы `yupe_image_image`
--
ALTER TABLE `yupe_image_image`
  ADD CONSTRAINT `fk_yupe_image_image_category_id` FOREIGN KEY (`category_id`) REFERENCES `yupe_category_category` (`id`) ON DELETE SET NULL ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_yupe_image_image_parent_id` FOREIGN KEY (`parent_id`) REFERENCES `yupe_image_image` (`id`) ON DELETE SET NULL ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_yupe_image_image_user_id` FOREIGN KEY (`user_id`) REFERENCES `yupe_user_user` (`id`) ON DELETE SET NULL ON UPDATE NO ACTION;

--
-- Ограничения внешнего ключа таблицы `yupe_mail_mail_template`
--
ALTER TABLE `yupe_mail_mail_template`
  ADD CONSTRAINT `fk_yupe_mail_mail_template_event_id` FOREIGN KEY (`event_id`) REFERENCES `yupe_mail_mail_event` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Ограничения внешнего ключа таблицы `yupe_menu_menu_item`
--
ALTER TABLE `yupe_menu_menu_item`
  ADD CONSTRAINT `fk_yupe_menu_menu_item_menu_id` FOREIGN KEY (`menu_id`) REFERENCES `yupe_menu_menu` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `yupe_store_attribute`
--
ALTER TABLE `yupe_store_attribute`
  ADD CONSTRAINT `fk_yupe_store_attribute_group` FOREIGN KEY (`group_id`) REFERENCES `yupe_store_attribute_group` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `yupe_store_attribute_option`
--
ALTER TABLE `yupe_store_attribute_option`
  ADD CONSTRAINT `fk_yupe_store_attribute_option_attribute` FOREIGN KEY (`attribute_id`) REFERENCES `yupe_store_attribute` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `yupe_store_category`
--
ALTER TABLE `yupe_store_category`
  ADD CONSTRAINT `fk_yupe_store_category_parent` FOREIGN KEY (`parent_id`) REFERENCES `yupe_store_category` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `yupe_store_product`
--
ALTER TABLE `yupe_store_product`
  ADD CONSTRAINT `fk_yupe_store_product_category` FOREIGN KEY (`category_id`) REFERENCES `yupe_store_category` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_yupe_store_product_producer` FOREIGN KEY (`producer_id`) REFERENCES `yupe_store_producer` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_yupe_store_product_type` FOREIGN KEY (`type_id`) REFERENCES `yupe_store_type` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `yupe_store_product_attribute_eav`
--
ALTER TABLE `yupe_store_product_attribute_eav`
  ADD CONSTRAINT `fk_yupe_store_product_attribute_eav_attribute` FOREIGN KEY (`attribute`) REFERENCES `yupe_store_attribute` (`name`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_yupe_store_product_attribute_eav_product` FOREIGN KEY (`product_id`) REFERENCES `yupe_store_product` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `yupe_store_product_category`
--
ALTER TABLE `yupe_store_product_category`
  ADD CONSTRAINT `fk_yupe_store_product_category_category` FOREIGN KEY (`category_id`) REFERENCES `yupe_store_category` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_yupe_store_product_category_product` FOREIGN KEY (`product_id`) REFERENCES `yupe_store_product` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `yupe_store_product_image`
--
ALTER TABLE `yupe_store_product_image`
  ADD CONSTRAINT `fk_yupe_store_product_image_product` FOREIGN KEY (`product_id`) REFERENCES `yupe_store_product` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `yupe_store_product_link`
--
ALTER TABLE `yupe_store_product_link`
  ADD CONSTRAINT `fk_yupe_store_product_link_linked_product` FOREIGN KEY (`linked_product_id`) REFERENCES `yupe_store_product` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_yupe_store_product_link_product` FOREIGN KEY (`product_id`) REFERENCES `yupe_store_product` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_yupe_store_product_link_type` FOREIGN KEY (`type_id`) REFERENCES `yupe_store_product_link_type` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `yupe_store_product_variant`
--
ALTER TABLE `yupe_store_product_variant`
  ADD CONSTRAINT `fk_yupe_store_product_variant_attribute` FOREIGN KEY (`attribute_id`) REFERENCES `yupe_store_attribute` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_yupe_store_product_variant_product` FOREIGN KEY (`product_id`) REFERENCES `yupe_store_product` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `yupe_store_type`
--
ALTER TABLE `yupe_store_type`
  ADD CONSTRAINT `fk_yupe_store_type_main_category` FOREIGN KEY (`main_category_id`) REFERENCES `yupe_store_category` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `yupe_store_type_attribute`
--
ALTER TABLE `yupe_store_type_attribute`
  ADD CONSTRAINT `fk_yupe_store_type_attribute_type` FOREIGN KEY (`type_id`) REFERENCES `yupe_store_type` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `yupe_user_tokens`
--
ALTER TABLE `yupe_user_tokens`
  ADD CONSTRAINT `fk_yupe_user_tokens_user_id` FOREIGN KEY (`user_id`) REFERENCES `yupe_user_user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `yupe_yupe_settings`
--
ALTER TABLE `yupe_yupe_settings`
  ADD CONSTRAINT `fk_yupe_yupe_settings_user_id` FOREIGN KEY (`user_id`) REFERENCES `yupe_user_user` (`id`) ON DELETE SET NULL ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

/**********************************/
/********** General CSS ***********/
/**********************************/
body {
    color: #000000;
    font-family: 'Montserrat', sans-serif;
    font-weight: 400;
    background: #ffffff;
}

a {
    color: #FF6F61;
    transition: 0.5s;
}

a:hover,
a:active,
a:focus {
    color: #000000;
    outline: none;
    text-decoration: none;
}

p {
    padding: 0;
    margin: 0 0 15px 0;
    color: #000000;
}

h1,
h2,
h3,
h4,
h5,
h6 {
    margin: 0 0 15px 0;
    padding: 0;
    color: #000000;
    font-weight: 600;
}

h4,
h5,
h6 {
    font-weight: 400;
}

.back-to-top {
    position: fixed;
    display: none;
    background: #FF6F61;
    color: #ffffff;
    width: 35px;
    height: 35px;
    text-align: center;
    line-height: 1;
    font-size: 16px;
    right: 15px;
    bottom: 15px;
    transition: background 0.5s;
    border-radius: 4px;
    z-index: 11;
}

.back-to-top:hover {
    background: #000000;
}

.back-to-top i {
    padding-top: 9px;
    color: #ffffff;
}


/**********************************/
/********* Form Input CSS *********/
/**********************************/
.form-control,
.custom-select {
    width: 100%;
    height: 35px;
    padding: 5px 15px;
    color: #999999;
    border: 1px solid #cccccc;
    margin-bottom: 15px
}

.form-control:focus,
.custom-select:focus {
    box-shadow: none;
    border-color: #FF6F61;
}

.custom-radio,
.custom-checkbox {
    margin-bottom: 15px;
}

.custom-radio .custom-control-label::before,
.custom-checkbox .custom-control-label::before {
    border-color: #cccccc;
}

.custom-radio .custom-control-input:checked~.custom-control-label::before,
.custom-checkbox .custom-control-input:checked~.custom-control-label::before {
    color: #ffffff;
    background: #FF6F61;
}

button.btn {
    color: #ffffff;
    background: #000000;
    border: 1px solid #000000;
}

button.btn:hover {
    color: #ffffff;
    background: #FF6F61;
    border-color: #FF6F61;
}


/**********************************/
/*********** Top Bar CSS **********/
/**********************************/
.top-bar {
    padding: 2px 0;
    background: #000000;
}

.top-bar .tb-contact p {
    display: inline-block;
    margin: 0;
    color: #FF6F61;
    font-size: 14px;
}

.top-bar .tb-contact p i {
    margin-right: 6px;
}

.top-bar .tb-contact p:first-child {
    margin-right: 15px;
}

.top-bar .tb-menu {
    font-size: 0;
    text-align: right;
}

.top-bar .tb-menu a {
    color: #FF6F61;
    font-size: 14px;
    margin: 0 8px;
}

.top-bar .tb-menu a:hover {
    color: #ffffff;
}

.top-bar .tb-menu a:last-child {
    margin-right: 0;
}

.top-bar .tb-menu a::after {
    position: absolute;
    content: "/";
    margin: 1px 0 0 6px;
    color: #FF6F61;
    font-size: 14px;
}

.top-bar .tb-menu a:last-child::after {
    display: none;
}

@media (max-width: 768px) {
    .top-bar .tb-contact,
    .top-bar .tb-menu {
        text-align: center;
    }
}


/**********************************/
/*********** Brand CSS ************/
/**********************************/
.brand {
    margin: 15px 0;
    background: #ffffff;
}

.brand .b-logo {
    text-align: left;
    overflow: hidden;
}

.brand .b-logo a img {
    max-width: 100%;
    max-height: 60px;
}

.brand .b-ads {
    overflow: hidden;
}

.brand .b-ads a img {
    max-width: 100%;
    max-height: 100%;
}

.brand .b-search {
    width: 100%;
}

.brand .b-search input[type=text] {
    width: 100%;
    height: 40px;
    padding: 0 15px;
    color: #666666;
    border: 1px solid #cccccc;
    border-radius: 4px;
}

.brand .b-search input[type=text]:focus {
    border-color: #FF6F61;
}

.brand .b-search button {
    position: absolute;
    width: 40px;
    height: 40px;
    top: 0;
    right: 15px;
    border: none;
    background: none;
    color: #FF6F61;
    border-radius: 0 4px 4px 0;
}

.brand .b-search button:hover {
    background: #FF6F61;
    color: #ffffff;
}

@media (min-width: 768px) {
    .brand {
        max-height: 90px;
    }
}

@media (max-width: 767.98px) {
    .brand .b-logo,
    .brand .b-ads,
    .brand .b-search {
        text-align: center;
        margin-bottom: 15px;
    }
    
    .brand .b-search {
        margin-bottom: 0;
    }
}


/**********************************/
/*********** Nav Bar CSS **********/
/**********************************/
.nav-bar {
    position: relative;
}

.nav-bar.nav-sticky {
    position: fixed;
    top: 0;
    width: 100%;
    box-shadow: 0 2px 5px rgba(0, 0, 0, .3);
    z-index: 999;
}

.nav-bar .navbar {
    height: 100%;
    padding: 0;
}

.navbar-dark .navbar-nav .nav-link,
.navbar-dark .navbar-nav .nav-link:focus,
.navbar-dark .navbar-nav .nav-link:hover,
.navbar-dark .navbar-nav .nav-link.active {
    padding: 10px 10px 8px 10px;
    color: #ffffff;
}

.navbar-dark .navbar-nav .nav-link:hover,
.navbar-dark .navbar-nav .nav-link.active {
    border-bottom: 2px solid #000000;
    transition: none;
}

.nav-bar .dropdown-menu {
    margin-top: 0;
    border: 0;
    border-radius: 0;
    background: #f8f9fa;
}

@media (min-width: 768px) {
    .nav-bar,
    .nav-bar .navbar {
        background: #FF6F61 !important;
    }
    
    .nav-bar .navbar-brand {
        display: none;
    }
    
    .nav-bar a.nav-link {
        padding: 8px 15px;
        font-size: 15px;
        text-transform: uppercase;
    }
}

@media (max-width: 768px) {   
    .nav-bar,
    .nav-bar .navbar {
        padding: 3px 0;
        background: #FF6F61 !important;
    }
    
    .nav-bar a.nav-link {
        padding: 5px;
    }
    
    .nav-bar .dropdown-menu {
        box-shadow: none;
    }
    
    .nav-bar .social {
        display: none;
    }
}

.nav-bar .social {
    font-size: 0;
    overflow: hidden;
}

.nav-bar .social a {
    display: inline-block;
    margin-left: 5px;
    width: 30px;
    height: 30px;
    padding: 3px 0;
    text-align: center;
    font-size: 14px;
    background: #FF6F61;
    border: 1px solid #ffffff;
    border-radius: 4px;
}

.nav-bar .social a:hover {
    background: #ffffff;
    border: 1px solid #ffffff;
}

.nav-bar .social a i {
    color: #ffffff;
}

.nav-bar .social a:hover i {
    color: #FF6F61;
}


/**********************************/
/********** Top News CSS **********/
/**********************************/
.top-news {
    position: relative;
    width: 100%;
    padding: 30px 0 0 0;
}

.top-news .tn-img {
    position: relative;
    overflow: hidden;
}

.top-news .tn-img img {
    width: 100%;
}

.top-news .tn-img:hover img {
    filter: blur(3px);
    -webkit-filter: blur(3px);
}

.top-news .tn-title {
    position: absolute;
    top: 0; 
    right: 0;
    bottom: 0; 
    left: 0;
    padding: 15px 10px 15px 20px;
    background-image: linear-gradient(rgba(0, 0, 0, .0), rgba(0, 0, 0, .3), rgba(0, 0, 0, .9));
    display: flex;
    align-items: flex-end;
}

.top-news .tn-title a {
    display: block;
    width: 100%;
    color: #ffffff;
    font-size: 18px;
    font-weight: 400;
    transition: .3s;
}

.top-news .tn-left .tn-title a {
    font-size: 30px;
    font-weight: 600;
}

.top-news .tn-title a:hover {
    color: #FF6F61;
}

.top-news .tn-left {
    margin-bottom: 30px;
}

.top-news .tn-right {
    margin-bottom: 60px;
    padding: 0 30px;
}

.top-news .tn-right .col-md-6 {
    padding: 0;
}

.top-news .slick-prev,
.top-news .slick-next {
    width: 28px;
    height: 28px;
    z-index: 1;
    transition: .5s;
    color: #ffffff;
    background: #000000;
    border-radius: 4px;
}

.top-news .slick-prev {
    left: 30px;
}

.top-news .slick-next {
    right: 30px;
}

.top-news .slick-prev:hover,
.top-news .slick-prev:focus,
.top-news .slick-next:hover,
.top-news .slick-next:focus {
    color: #ffffff;
    background: #FF6F61;
}

.top-news .slick-prev::before,
.top-news .slick-next::before {
    font-family: "Font Awesome 5 Free";
    font-size: 18px;
    font-weight: 900;
    color: #ffffff;
}

.top-news .slick-prev::before {
    content: "\f104";
}

.top-news .slick-next::before {
    content: "\f105";
}


/**********************************/
/******* Category News CSS ********/
/**********************************/
.cat-news {
    position: relative;
    width: 100%;
    padding: 0;
}

.cat-news .col-md-6 {
    margin-bottom: 30px;
}

.cat-news h2 {
    color: #000000;
    margin-bottom: 30px;
    padding-bottom: 15px;
    border-bottom: 3px double #000000;
}

.cat-news .cn-img {
    position: relative;
    overflow: hidden;
}

.cat-news .cn-img img {
    width: 100%;
}

.cat-news .cn-img:hover img {
    filter: blur(3px);
    -webkit-filter: blur(3px);
}

.cat-news .cn-title {
    position: absolute;
    top: 0; 
    right: 0;
    bottom: 0; 
    left: 0;
    padding: 15px 10px 15px 20px;
    background-image: linear-gradient(rgba(0, 0, 0, .0), rgba(0, 0, 0, .3), rgba(0, 0, 0, .9));
    display: flex;
    align-items: flex-end;
}

.cat-news .cn-title a {
    display: block;
    width: 100%;
    color: #ffffff;
    font-size: 18px;
    font-weight: 400;
    transition: .3s;
}

.cat-news .cn-title a:hover {
    color: #FF6F61;
}

.cat-news .slick-prev,
.cat-news .slick-next {
    top: -62px;
    width: 28px;
    height: 28px;
    z-index: 1;
    transition: .5s;
    color: #ffffff;
    background: #000000;
    border-radius: 4px;
}

.cat-news .slick-prev {
    left: calc(100% - 85px);
}

.cat-news .slick-next {
    right: 14px;
}

.cat-news .slick-prev:hover,
.cat-news .slick-prev:focus,
.cat-news .slick-next:hover,
.cat-news .slick-next:focus {
    color: #ffffff;
    background: #FF6F61;
}

.cat-news .slick-prev::before,
.cat-news .slick-next::before {
    font-family: "Font Awesome 5 Free";
    font-size: 18px;
    font-weight: 900;
    color: #ffffff;
}

.cat-news .slick-prev::before {
    content: "\f104";
}

.cat-news .slick-next::before {
    content: "\f105";
}


/**********************************/
/********** Tab News CSS **********/
/**********************************/
.tab-news {
    position: relative;
}

.tab-news .col-md-6 {
    margin-bottom: 60px;
}

.tab-news .nav.nav-pills .nav-link {
    color: #ffffff;
    background: #000000;
    border-radius: 0;
}

.tab-news .nav.nav-pills .nav-link:hover,
.tab-news .nav.nav-pills .nav-link.active {
    color: #ffffff;
    background: #FF6F61;
}

.tab-news .tab-content {
    padding: 30px 15px 15px 15px;
    background: rgba(0, 0, 0, .05);
}

.tab-news .tn-news {
    display: flex;
    align-items: center;
    margin-bottom: 15px;
    background: #ffffff;
}

.tab-news .tn-img {
    width: 150px;
}

.tab-news .tn-img img {
    width: 150px;
}

.tab-news .tn-title {
    padding: 10px 15px;
}

.tab-news .tn-title a {
    color: #000000;
    font-size: 18px;
    font-weight: 400;
    transition: all .3s;
}

.tab-news .tn-title a:hover {
    color: #FF6F61;
}



/**********************************/
/********** Main News CSS *********/
/**********************************/
.main-news {
    position: relative;
    width: 100%;
    margin-bottom: 30px;
}

.main-news .col-md-4 {
    margin-bottom: 30px;
}

.main-news .mn-img {
    position: relative;
    overflow: hidden;
}

.main-news .mn-img img {
    width: 100%;
}

.main-news .mn-img:hover img {
    filter: blur(3px);
    -webkit-filter: blur(3px);
}

.main-news .mn-title {
    position: absolute;
    top: 0; 
    right: 0;
    bottom: 0; 
    left: 0;
    padding: 15px 10px 15px 20px;
    background-image: linear-gradient(rgba(0, 0, 0, .0), rgba(0, 0, 0, .3), rgba(0, 0, 0, .9));
    display: flex;
    align-items: flex-end;
}

.main-news .mn-title a {
    display: block;
    width: 100%;
    color: #ffffff;
    font-size: 18px;
    font-weight: 400;
    transition: .3s;
}

.main-news .mn-title a:hover {
    color: #FF6F61;
}

.main-news .mn-list {
    margin-bottom: 30px;
}

.main-news .mn-list h2 {
    color: #000000;
    margin-bottom: 30px;
    padding-bottom: 15px;
    border-bottom: 3px double #000000;
}

.main-news .mn-list ul {
    margin: 0;
    padding: 0;
    list-style: none;
}

.main-news .mn-list ul li {
    margin: 0 0 12px 22px; 
}

.main-news .mn-list ul li:last-child {
    margin-bottom: 0; 
}

.main-news .mn-list ul li a {
    color: #000000;
    display: block;
    line-height: 23px;
}

.main-news .mn-list ul li::before {
    position: absolute;
    content: '\f061';
    font-family: 'Font Awesome 5 Free';
    font-weight: 900;
    color: #000000;
    left: 1px;
}

.main-news .mn-list ul li a:hover {
    color: #FF6F61;
}


/**********************************/
/********* Breadcrumb CSS *********/
/**********************************/
.breadcrumb-wrap {
    position: relative;
    width: 100%;
    background: #ffffff;
}

.breadcrumb-wrap .breadcrumb {
    margin: 25px 0 0 0;
    padding: 0;
    background: none;
}

.breadcrumb-wrap .breadcrumb .breadcrumb-item + .breadcrumb-item::before {
    color: #353535;
}

.breadcrumb-wrap .breadcrumb .breadcrumb-item.active {
    color: #353535;
}


/**********************************/
/********* Single News CSS ********/
/**********************************/
.single-news {
    position: relative;
    width: 100%;
    padding: 25px 0 0 0;
    margin-bottom: 15px;
}

.single-news .sn-img {
    position: relative;
    overflow: hidden;
}

.single-news .sn-img img {
    width: 100%;
}

.single-news .sn-content {
    position: relative;
    width: 100%;
    padding: 30px 0;
}

.single-news .sn-content h1.sn-title {
    display: block;
    width: 100%;
    color: #000000;
}

.single-news .sn-related {
    margin-bottom: 45px;
}

.single-news .sn-related h2 {
    color: #000000;
    margin-bottom: 30px;
    padding-bottom: 15px;
    border-bottom: 3px double #000000;
}

.single-news .sn-slider .sn-img {
    position: relative;
    overflow: hidden;
}

.single-news .sn-slider .sn-img img {
    width: 100%;
}

.single-news .sn-slider .sn-img:hover img {
    filter: blur(3px);
    -webkit-filter: blur(3px);
}

.single-news .sn-slider .sn-title {
    position: absolute;
    top: 0; 
    right: 0;
    bottom: 0; 
    left: 0;
    padding: 15px 10px 15px 20px;
    background-image: linear-gradient(rgba(0, 0, 0, .0), rgba(0, 0, 0, .3), rgba(0, 0, 0, .9));
    display: flex;
    align-items: flex-end;
}

.single-news .sn-slider .sn-title a {
    display: block;
    width: 100%;
    color: #ffffff;
    font-size: 18px;
    font-weight: 400;
    transition: .3s;
}

.single-news .sn-slider .sn-title a:hover {
    color: #FF6F61;
}

.single-news .sn-slider .slick-prev,
.single-news .sn-slider .slick-next {
    top: -62px;
    width: 28px;
    height: 28px;
    z-index: 1;
    transition: .5s;
    color: #ffffff;
    background: #000000;
    border-radius: 4px;
}

.single-news .sn-slider .slick-prev {
    left: calc(100% - 85px);
}

.single-news .sn-slider .slick-next {
    right: 14px;
}

.single-news .sn-slider .slick-prev:hover,
.single-news .sn-slider .slick-prev:focus,
.single-news .sn-slider .slick-next:hover,
.single-news .sn-slider .slick-next:focus {
    color: #ffffff;
    background: #FF6F61;
}

.single-news .sn-slider .slick-prev::before,
.single-news .sn-slider .slick-next::before {
    font-family: "Font Awesome 5 Free";
    font-size: 18px;
    font-weight: 900;
    color: #ffffff;
}

.single-news .sn-slider .slick-prev::before {
    content: "\f104";
}

.single-news .sn-slider .slick-next::before {
    content: "\f105";
}


/**********************************/
/*********** Sidebar CSS **********/
/**********************************/
.sidebar {
    position: relative;
    width: 100%;
}

.sidebar .sidebar-widget {
    position: relative;
    width: 100%;
    margin-bottom: 45px;
}

.sidebar .sidebar-widget h2.sw-title {
    color: #000000;
    margin-bottom: 30px;
    padding-bottom: 15px;
    border-bottom: 3px double #000000;
}

.sidebar .sidebar-widget .news-list {
    position: relative;
    margin-bottom: 30px;
}

.sidebar .news-list .nl-item {
    display: flex;
    align-items: center;
    margin-bottom: 15px;
}

.sidebar .news-list .nl-item .nl-img {
    width: 100px;
}

.sidebar .news-list .nl-item .nl-img img {
    width: 100px;
}

.sidebar .news-list .nl-item .nl-title {
    padding-left: 15px;
}

.sidebar .news-list .nl-item .nl-title a {
    color: #000000;
    font-size: 16px;
    font-weight: 400;
    transition: all .3s;
}

.sidebar .news-list .nl-item .nl-title a:hover {
    color: #FF6F61;
}

.sidebar .sidebar-widget .tab-news {
    position: relative;
    margin-bottom: 30px;
}

.sidebar .tab-news .nav.nav-pills .nav-link {
    color: #ffffff;
    background: #000000;
    border-radius: 0;
}

.sidebar .tab-news .nav.nav-pills .nav-link:hover,
.sidebar .tab-news .nav.nav-pills .nav-link.active {
    color: #ffffff;
    background: #FF6F61;
}

.sidebar .tab-news .tab-content {
    padding: 15px 0 0 0;
    background: transparent;
}

.sidebar .tab-news .tab-content .container {
    padding: 0;
}

.sidebar .tab-news .tn-news {
    display: flex;
    align-items: center;
    margin-bottom: 15px;
}

.sidebar .tab-news .tn-img {
    width: 100px;
}

.sidebar .tab-news .tn-img img {
    width: 100px;
}

.sidebar .tab-news .tn-title {
    padding: 0 0 0 15px;
}

.sidebar .tab-news .tn-title a {
    color: #000000;
    font-size: 16px;
    font-weight: 400;
    transition: all .3s;
}

.sidebar .tab-news .tn-title a:hover {
    color: #FF6F61;
}

.sidebar .sidebar-widget .category {
    position: relative;
}

.sidebar .category ul {
    margin: 0;
    padding: 0;
    list-style: none;
}

.sidebar .category ul li {
    margin: 0 0 12px 22px; 
}

.sidebar .category ul li:last-child {
    margin-bottom: 0; 
}

.sidebar .category ul li a {
    display: inline-block;
    color: #000000;
    line-height: 23px;
}

.sidebar .category ul li a:hover {
    color: #FF6F61;
}

.sidebar .category ul li::before {
    position: absolute;
    content: '\f061';
    font-family: 'Font Awesome 5 Free';
    font-weight: 900;
    color: #000000;
    left: 1px;
}

.sidebar .category ul li span {
    display: inline-block;
    float: right;
}

.sidebar .sidebar-widget .tags {
    position: relative;
}

.sidebar .sidebar-widget .tags a {
    display: inline-block;
    margin-bottom: 5px;
    padding: 5px 10px;
    color: #000000;
    background: #ffffff;
    border: 1px solid #000000;
    border-radius: 4px;
}

.sidebar .sidebar-widget .tags a:hover {
    color: #ffffff;
    background: #FF6F61;
    border: 1px solid #FF6F61;
}

.sidebar .sidebar-widget .image a {
    display: block;
    width: 100%;
    overflow: hidden;
}

.sidebar .sidebar-widget .image img {
    max-width: 100%;
    transition: .3s;
}

.sidebar .sidebar-widget .image img:hover {
    transform: scale(1.1);
    filter: blur(3px);
    -webkit-filter: blur(3px);
}


/**********************************/
/********** Contact CSS ***********/
/**********************************/
.contact {
    position: relative;
    padding: 25px 0 15px 0;
}

.contact .contact-form,
.contact .contact-info {
    margin-bottom: 45px;
}

.contact .contact-info h4 {
    margin-bottom: 10px;
    font-size: 16px;
    font-weight: 400;
}

.contact .contact-info h4 i {
    color: #000000;
    margin-right: 5px;
}

.contact .social {
    position: relative;
    width: 100%;
}

.contact .social a {
    display: inline-block;
    margin: 10px 10px 0 0;
    width: 40px;
    height: 40px;
    padding: 7px 0;
    text-align: center;
    font-size: 18px;
    border: 1px solid #000000;
    border-radius: 4px;
}

.contact .social a i {
    color: #000000;
}

.contact .social a:hover {
    background: #FF6F61;
    border-color: #FF6F61;
}

.contact .social a:hover i {
    color: #ffffff;
}


/**********************************/
/********** Footer CSS ************/
/**********************************/
.footer {
    position: relative;
    padding: 60px 0 0 0;
    background: #111111;
}

.footer .footer-widget {
    position: relative;
    width: 100%;
    margin-bottom: 60px;
}

.footer .footer-widget .title {
    color: #ffffff;
    font-size: 25px;
    letter-spacing: 1px;
    padding-bottom: 10px;
    margin-bottom: 25px;
    border-bottom: 3px double #ffffff;
}

.footer .footer-widget p {
    color: #ffffff;
}

.footer .footer-widget ul {
    margin: 0;
    padding: 0;
    list-style: none;
}

.footer .footer-widget ul li {
    margin-bottom: 12px; 
}

.footer .footer-widget ul li:last-child {
    margin-bottom: 0; 
}

.footer .footer-widget ul li a {
    color: #ffffff;
    white-space: nowrap;
    display: block;
    line-height: 23px;
}

.footer .footer-widget ul li a::before {
    content: '\f061';
    font-family: 'Font Awesome 5 Free';
    font-weight: 900;
    padding-right: 5px;
}

.footer .footer-widget ul li a:hover {
    padding-left: 10px;
    color: #FF6F61;
}

.footer .contact-info p {
    margin-bottom: 10px;
    color: #ffffff;
    font-size: 16px;
}

.footer .contact-info p i {
    color: #ffffff;
    margin-right: 5px;
}

.footer .social {
    position: relative;
    width: 100%;
}

.footer .social a {
    display: inline-block;
    margin: 10px 5px 0 0;
    width: 35px;
    height: 35px;
    padding: 5px 0;
    text-align: center;
    font-size: 18px;
    background: #ffffff;
    border-radius: 4px;
}

.footer .social a i {
    color: #111111;
}

.footer .social a:hover {
    background: #FF6F61;
}

.footer .social a:hover i {
    color: #ffffff;
}

.footer .newsletter {
    position: relative;
    width: 100%;
}

.footer .newsletter form {
    position: relative;
    width: 100%;
}

.footer .newsletter input {
    width: 100%;
    height: 35px;
    padding: 0 15px;
    border: 1px solid #ffffff;
    border-radius: 4px;
}

.footer .newsletter .btn {
    position: absolute;
    width: 80px;
    height: 35px;
    top: 0;
    right: 0;
    padding: 0 15px;
    border: none;
    background: #111111;
    color: #ffffff;
    font-size: 14px;
    border: 1px solid #ffffff;
    border-radius: 0 4px 4px 0;
}

.footer .newsletter .btn:hover {
    background: #FF6F61;
}

.footer .newsletter input:focus,
.footer .newsletter .btn:focus {
    box-shadow: none;
}


/**********************************/
/******** Footer Menu CSS *********/
/**********************************/
.footer-menu {
    position: relative;
    background: #111111;
}

.footer-menu .container {
    padding: 15px 0;
    border-top: 1px solid #000000;
}

.footer-menu .f-menu {
    font-size: 0;
    text-align: center;
}

.footer-menu .f-menu a {
    color: #ffffff;
    font-size: 14px;
    margin-right: 15px;
    padding-right: 15px;
    border-right: 1px solid #ffffff;
}

.footer-menu .f-menu a:hover {
    color: #FF6F61;
}

.footer-menu .f-menu a:last-child {
    margin-right: 0;
    padding-right: 0;
    border-right: none;
}


/**********************************/
/******** Footer Bottom CSS *******/
/**********************************/
.footer-bottom {
    position: relative;
    padding: 25px 0;
    background: #000000;
}

.footer-bottom .copyright {
    text-align: left;
}

.footer-bottom .template-by {
    text-align: right;
}

.footer-bottom .copyright p,
.footer-bottom .template-by p {
    color: #ffffff;
    font-weight: 400;
    margin: 0;
}

.footer-bottom .copyright p a,
.footer-bottom .template-by p a {
    font-weight: 600;
}

.footer-bottom .copyright p a:hover,
.footer-bottom .template-by p a:hover {
    color: #ffffff;
}

@media (max-width: 768.98px) {
    .footer-bottom .copyright,
    .footer-bottom .template-by {
        text-align: center; 
    } 
}

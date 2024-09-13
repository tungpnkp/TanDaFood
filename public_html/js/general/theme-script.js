(function ($) {
    "use strict"; // Start of use strict
    var pageindexhome = 1;
    $(document).on('click', '.loadMoreHome', function () {
        var anchorLink = $(this);
        anchorLink.attr("disabled", true);
        $('#btnSentWaitHome').fadeIn("slow");
        var numperpage = $("input[name*='HiddenFieldNumberHome']").val();
        pageindexhome += 1;
        var data = {
            pageindex: pageindexhome,
            type: "get_data_product_home",
        }
        $.post(window.location.protocol + "//" + window.location.host + '/frontend/post/GetData4.ashx', data, function (result) {
            var obj = JSON.parse(result.trim());
            var num = obj.num;
            if (obj.status === "100") {
                var st = obj.message;
                $(".best-service-section.product-list").find("div.loadproduct").append(st);
                setTimeout(function () {
                    $('#btnSentWaitHome').fadeOut("slow");
                    anchorLink.attr("disabled", false);
                }, 500);
                if (parseInt(num) < parseInt(numperpage)) {
                    $(".loadMoreHome").hide();
                }
                else {
                    $(".loadMoreHome").show();
                }
            }
            else {
                console.log("Error: " + obj.message);
                anchorLink.fadeOut("slow");
                setTimeout(function () {
                    $('#btnSentWaitHome').fadeOut("slow");
                    anchorLink.attr("disabled", false);
                }, 500);
            }
        });
    });


    var pageindex = 1;

    $(document).on('click', '.loadMoreProducts', function () {
        var anchorLink = $(this);
        //var strcate = anchorLink.attr("data-type");
        anchorLink.attr("disabled", true);
        var cids = $("input[name*='HiddenFieldcIds']").val();
        var numperpage = $("input[name*='HiddenFieldProductNumPerPage']").val();
        var dactinh = ""; // $(".chkfeature").find("input[type='checkbox']:checked").map(function () { return this.value; }).get().join(",");
        var sortby = $(".dropsort_category option:selected").val();
        pageindex += 1;
        var data = {
            pageindex: pageindex,
            cids: cids,
            sortby: sortby,
            dactinh: dactinh,
            type: "get_data_product_cate_list",
        }
        $("#loadMoreWaiting").fadeIn("slow");
        $.post(window.location.protocol + "//" + window.location.host + '/frontend/post/GetData4.ashx', data, function (result) {
            //console.log("result: " + result.trim());
            var obj = JSON.parse(result.trim());
            var num = obj.num;
            //console.log("num: " + num);
            if (obj.status === "100") {
                var st = obj.message;
                $(".view-product-list").find("div.loadproduct").append(st);
                setTimeout(function () {
                    $("#loadMoreWaiting").fadeOut("slow");
                    anchorLink.attr("disabled", false);
                }, 500);
                if (parseInt(num) < parseInt(numperpage)) {
                    $(".loadMoreProducts").hide();
                }
                else {
                    $(".loadMoreProducts").show();
                }
            }
            else {
                console.log("Error: " + obj.message);
                anchorLink.fadeOut("slow");
                setTimeout(function () {
                    $("#loadMoreWaiting").fadeOut("slow");
                    anchorLink.attr("disabled", false);
                }, 500);
                $(".loadMoreProducts").hide();
            }
        });
    });
    $(document).on('click', '.loadMoreTagsProducts', function () {
        var anchorLink = $(this);
        //var strcate = anchorLink.attr("data-type");
        anchorLink.attr("disabled", true);
        $('#btnSentWait').fadeIn("slow");
        var key = $("input[name*='HiddenFieldKeyWord']").val();
        var numperpage = $("input[name*='HiddenFieldProductNumPerPage']").val();
        pageindex += 1;
        var data = {
            pageindex: pageindex,
            key: key,
            type: "get_data_tags_products_list",
        }
        $.post(window.location.protocol + "//" + window.location.host + '/frontend/post/GetData4.ashx', data, function (result) {
            //console.log("result: " + result.trim());
            var obj = JSON.parse(result.trim());
            var num = obj.num;
            //console.log("num: " + num);
            if (obj.status === "100") {
                var st = obj.message;
                $(".view-product-list").find("div.loadproduct").append(st);
                setTimeout(function () {
                    $('#btnSentWait').fadeOut("slow");
                    anchorLink.attr("disabled", false);
                }, 500);
                if (parseInt(num) < parseInt(numperpage)) {
                    $(".loadMoreTagsProducts").hide();
                }
                else {
                    $(".loadMoreTagsProducts").show();
                }
            }
            else {
                console.log("Error: " + obj.message);
                anchorLink.fadeOut("slow");
                setTimeout(function () {
                    $('#btnSentWait').fadeOut("slow");
                    anchorLink.attr("disabled", false);
                }, 500);
                $(".loadMoreTagsProducts").hide();
            }
        });
    });

    var pagecheckbox = 1;
    //$(document).on('change', '.chkfeature_category input[type="checkbox"]', function () {
    //    var anchorLink = $(this);
    //    //var strcate = anchorLink.attr("data-type");
    //    anchorLink.attr("disabled", true);
    //    var cids = $("input[name*='HiddenFieldcIds']").val();
    //    var numperpage = $("input[name*='HiddenFieldProductNumPerPage']").val();
    //    var dactinh = $(".chkfeature_category").find("input[type='checkbox']:checked").map(function () { return this.value; }).get().join(",");
    //    var sortby = $(".dropsort_category option:selected").val();
    //    $(".view-product-list").find("ul.row").empty();
    //    //pagecheckbox += 1;
    //    var data = {
    //        pageindex: pagecheckbox,
    //        cids: cids,
    //        sortby: sortby,
    //        dactinh: dactinh,
    //        type: "get_data_product_checkbox_list",
    //    }
    //    $("#loadMoreWaiting").fadeIn("slow");
    //    $.post(window.location.protocol + "//" + window.location.host + '/frontend/post/GetData4.ashx', data, function (result) {
    //        //console.log("result: " + result.trim());
    //        var obj = JSON.parse(result.trim());
    //        var num = obj.num;
    //        //console.log("num: " + num);
    //        if (obj.status === "100") {
    //            var st = obj.message;
    //            $(".view-product-list").find("ul.row").append(st).fadeIn("slow");
    //            setTimeout(function () {
    //                $("#loadMoreWaiting").fadeOut("slow");
    //                anchorLink.attr("disabled", false);
    //            }, 500);
    //            if (parseInt(num) < parseInt(numperpage)) {
    //                $(".loadMoreProducts").hide();
    //            }
    //            else {
    //                $(".loadMoreProducts").show();
    //            }
    //        }
    //        else {
    //            console.log("Error: " + obj.message);
    //            anchorLink.fadeOut("slow");
    //            setTimeout(function () {
    //                $("#loadMoreWaiting").fadeOut("slow");
    //                anchorLink.attr("disabled", false);
    //            }, 500);
    //            $(".loadMoreProducts").hide();
    //        }
    //    });
    //});
    $(document).on('change', '.dropsort_category', function () {
        var anchorLink = $(this);
        anchorLink.attr("disabled", true);
        var cids = $("input[name*='HiddenFieldcIds']").val();
        var numperpage = $("input[name*='HiddenFieldProductNumPerPage']").val();
        //var dactinh = $(".chkfeature_category").find("input[type='checkbox']:checked").map(function () { return this.value; }).get().join(",");
        var sortby = $(".dropsort_category option:selected").val();
        $(".view-product-list").find("ul.row").empty();
        //pagecheckbox += 1;
        var data = {
            pageindex: pagecheckbox,
            cids: cids,
            sortby: sortby,
            //dactinh: dactinh,
            type: "get_data_product_checkbox_list",
        }
        $("#loadMoreWaiting").fadeIn("slow");
        $.post(window.location.protocol + "//" + window.location.host + '/frontend/post/GetData4.ashx', data, function (result) {
            var obj = JSON.parse(result.trim());
            var num = obj.num;
            //console.log("num: " + num);
            if (obj.status === "100") {
                var st = obj.message;
                $(".view-product-list").find("div.loadproduct").append(st).fadeIn("slow");
                setTimeout(function () {
                    $("#loadMoreWaiting").fadeOut("slow");
                    anchorLink.attr("disabled", false);
                }, 500);
                if (parseInt(num) < parseInt(numperpage)) {
                    $(".loadMoreProducts").hide();
                }
                else {
                    $(".loadMoreProducts").show();
                }
            }
            else {
                console.log("Error: " + obj.message);
                //anchorLink.fadeOut("slow");
                setTimeout(function () {
                    $("#loadMoreWaiting").fadeOut("slow");
                    anchorLink.attr("disabled", false);
                }, 500);
                $(".loadMoreProducts").hide();
            }
        });
    });

    // Nhóm chuyen mục
    var pageindexgroup = 1;
    $(document).on('click', '.loadMoreGroups', function () {
        var anchorLink = $(this);
        //var strcate = anchorLink.attr("data-type");
        anchorLink.attr("disabled", true);
        var cids = $("input[name*='HiddenFieldcIds']").val();
        var numperpage = $("input[name*='HiddenFieldProductNumPerPage']").val();
        var dactinh = ""; //$(".chkfeature_groups").find("input[type='checkbox']:checked").map(function () { return this.value; }).get().join(",");
        var sortby = $(".dropsort_groups option:selected").val();
        pageindexgroup += 1;
        var data = {
            pageindex: pageindexgroup,
            cids: cids,
            sortby: sortby,
            dactinh: dactinh,
            type: "get_data_product_groups_list",
        }
        $("#loadMoreWaiting").fadeIn("slow");
        $.post(window.location.protocol + "//" + window.location.host + '/frontend/post/GetData4.ashx', data, function (result) {
            //console.log("result: " + result.trim());
            var obj = JSON.parse(result.trim());
            var num = obj.num;
            //console.log("num: " + num);
            if (obj.status === "100") {
                var st = obj.message;
                $(".view-product-list").find("div.loadproduct").append(st);
                setTimeout(function () {
                    $("#loadMoreWaiting").fadeOut("slow");
                    anchorLink.attr("disabled", false);
                }, 500);
                if (parseInt(num) < parseInt(numperpage)) {
                    $(".loadMoreGroups").hide();
                }
                else {
                    $(".loadMoreGroups").show();
                }
            }
            else {
                console.log("Error: " + obj.message);
                anchorLink.fadeOut("slow");
                setTimeout(function () {
                    $("#loadMoreWaiting").fadeOut("slow");
                    anchorLink.attr("disabled", false);
                }, 500);
                $(".loadMoreGroups").hide();
            }
        });
    });
    $(document).on('change', '.chkfeature_groups input[type="checkbox"]', function () {
        var anchorLink = $(this);
        //var strcate = anchorLink.attr("data-type");
        anchorLink.attr("disabled", true);
        var cids = $("input[name*='HiddenFieldcIds']").val();
        var numperpage = $("input[name*='HiddenFieldProductNumPerPage']").val();
        var dactinh = ""; //$(".chkfeature_groups").find("input[type='checkbox']:checked").map(function () { return this.value; }).get().join(",");
        var sortby = $(".dropsort_groups option:selected").val();
        $(".view-product-list").find("ul.row").empty();
        console.log("dactinh: " + dactinh);
        var pagecheckbox = 1;
        var data = {
            pageindex: pagecheckbox,
            cids: cids,
            sortby: sortby,
            dactinh: dactinh,
            type: "get_data_product_checkbox_groups_list",
        }
        $("#loadMoreWaiting").fadeIn("slow");
        $.post(window.location.protocol + "//" + window.location.host + '/frontend/post/GetData4.ashx', data, function (result) {
            //console.log("result: " + result.trim());
            var obj = JSON.parse(result.trim());
            var num = obj.num;
            //console.log("num: " + num);
            if (obj.status === "100") {
                var st = obj.message;
                $(".view-product-list").find("div.loadproduct").append(st).fadeIn("slow");
                setTimeout(function () {
                    $("#loadMoreWaiting").fadeOut("slow");
                    anchorLink.attr("disabled", false);
                }, 500);
                if (parseInt(num) < parseInt(numperpage)) {
                    $(".loadMoreGroups").hide();
                }
                else {
                    $(".loadMoreGroups").show();
                }
            }
            else {
                console.log("Error: " + obj.message);
                anchorLink.fadeOut("slow");
                setTimeout(function () {
                    $("#loadMoreWaiting").fadeOut("slow");
                    anchorLink.attr("disabled", false);
                }, 500);
                $(".loadMoreGroups").hide();
            }
        });
    });

    // Nhóm đặc tính
    var pageindexfeature = 1;
    $(document).on('click', '.loadMoreFeatures', function () {
        var anchorLink = $(this);
        //var strcate = anchorLink.attr("data-type");
        anchorLink.attr("disabled", true);
        var cids = $("input[name*='HiddenFieldcIds']").val();
        var numperpage = $("input[name*='HiddenFieldProductNumPerPage']").val();
        var dactinh = ""; //$(".chkfeature_features").find("input[type='checkbox']:checked").map(function () { return this.value; }).get().join(",");
        var sortby = $(".dropsort_features option:selected").val();
        pageindexfeature += 1;
        var data = {
            pageindex: pageindexfeature,
            cids: cids,
            sortby: sortby,
            dactinh: dactinh,
            type: "get_data_product_feature_list",
        }
        $("#loadMoreWaiting").fadeIn("slow");
        $.post(window.location.protocol + "//" + window.location.host + '/frontend/post/GetData4.ashx', data, function (result) {
            //console.log("result: " + result.trim());
            var obj = JSON.parse(result.trim());
            var num = obj.num;
            //console.log("num: " + num);
            if (obj.status === "100") {
                var st = obj.message;
                $(".view-product-list").find("div.loadproduct").append(st);
                setTimeout(function () {
                    $("#loadMoreWaiting").fadeOut("slow");
                    anchorLink.attr("disabled", false);
                }, 500);
                if (parseInt(num) < parseInt(numperpage)) {
                    $(".loadMoreFeatures").hide();
                }
                else {
                    $(".loadMoreFeatures").show();
                }
            }
            else {
                console.log("Error: " + obj.message);
                anchorLink.fadeOut("slow");
                setTimeout(function () {
                    $("#loadMoreWaiting").fadeOut("slow");
                    anchorLink.attr("disabled", false);
                }, 500);
                $(".loadMoreFeatures").hide();
            }
        });
    });
    $(document).on('change', '.chkfeature_features input[type="checkbox"]', function () {
        var anchorLink = $(this);
        //var strcate = anchorLink.attr("data-type");
        anchorLink.attr("disabled", true);
        var cids = $("input[name*='HiddenFieldcIds']").val();
        var numperpage = $("input[name*='HiddenFieldProductNumPerPage']").val();
        var dactinh = ""; //$(".chkfeature_features").find("input[type='checkbox']:checked").map(function () { return this.value; }).get().join(",");
        var sortby = $(".dropsort_features option:selected").val();
        $(".view-product-list").find("ul.row").empty();
        console.log("dactinh: " + dactinh);
        var pagecheckbox = 1;
        var data = {
            pageindex: pagecheckbox,
            cids: cids,
            sortby: sortby,
            dactinh: dactinh,
            type: "get_data_product_checkbox_features_list",
        }
        $("#loadMoreWaiting").fadeIn("slow");
        $.post(window.location.protocol + "//" + window.location.host + '/frontend/post/GetData4.ashx', data, function (result) {
            //console.log("result: " + result.trim());
            var obj = JSON.parse(result.trim());
            var num = obj.num;
            //console.log("num: " + num);
            if (obj.status === "100") {
                var st = obj.message;
                $(".view-product-list").find("div.loadproduct").append(st).fadeIn("slow");
                setTimeout(function () {
                    $("#loadMoreWaiting").fadeOut("slow");
                    anchorLink.attr("disabled", false);
                }, 500);
                if (parseInt(num) < parseInt(numperpage)) {
                    $(".loadMoreFeatures").hide();
                }
                else {
                    $(".loadMoreFeatures").show();
                }
            }
            else {
                console.log("Error: " + obj.message);
                anchorLink.fadeOut("slow");
                setTimeout(function () {
                    $("#loadMoreWaiting").fadeOut("slow");
                    anchorLink.attr("disabled", false);
                }, 500);
                $(".loadMoreFeatures").hide();
            }
        });
    });
    $(document).on('change', '.dropsort_features', function () {
        var anchorLink = $(this);
        //var strcate = anchorLink.attr("data-type");
        anchorLink.attr("disabled", true);
        var cids = $("input[name*='HiddenFieldcIds']").val();
        var numperpage = $("input[name*='HiddenFieldProductNumPerPage']").val();
        var dactinh = ""; //$(".chkfeature_features").find("input[type='checkbox']:checked").map(function () { return this.value; }).get().join(",");
        var sortby = $(".dropsort_features option:selected").val();
        $(".view-product-list").find("ul.row").empty();
        //pagecheckbox += 1;
        var data = {
            pageindex: pagecheckbox,
            cids: cids,
            sortby: sortby,
            dactinh: dactinh,
            type: "get_data_product_checkbox_features_list",
        }
        $("#loadMoreWaiting").fadeIn("slow");
        $.post(window.location.protocol + "//" + window.location.host + '/frontend/post/GetData4.ashx', data, function (result) {
            var obj = JSON.parse(result.trim());
            var num = obj.num;
            //console.log("num: " + num);
            if (obj.status === "100") {
                var st = obj.message;
                $(".view-product-list").find("div.loadproduct").append(st).fadeIn("slow");
                setTimeout(function () {
                    $("#loadMoreWaiting").fadeOut("slow");
                    anchorLink.attr("disabled", false);
                }, 500);
                if (parseInt(num) < parseInt(numperpage)) {
                    $(".loadMoreFeatures").hide();
                }
                else {
                    $(".loadMoreFeatures").show();
                }
            }
            else {
                console.log("Error: " + obj.message);
                anchorLink.fadeOut("slow");
                setTimeout(function () {
                    $("#loadMoreWaiting").fadeOut("slow");
                    anchorLink.attr("disabled", false);
                }, 500);
                $(".loadMoreFeatures").hide();
            }
        });
    });
    function preview_img() {
        $(".img_par").hover(function () {
            if ($(this).find('.preview_gif').length) {
                $(this).find('.preview_img').hide()
                $(this).find('.there_video_icons').hide()
                if (!$(this).find('.preview_gif').attr("src")) {
                    var src = $(this).find('.preview_gif').attr('data-src')
                    $(this).find('.preview_gif').attr("src", src)
                }
                $(this).find('.preview_gif').fadeIn(1000)
            }
        }, function () {
            if ($(this).find('.preview_gif').length) {
                $(this).find('.preview_img').show()
                $(this).find('.there_video_icons').show()
                $(this).find('.preview_gif').stop().fadeOut(0)
            }
        })
    }
    $(function () {
        preview_img()
    })

    $(window).load(function () {
        // auto width megamenu
        auto_width_megamenu();
        resizeTopmenu();
        js_height_full();
        rep_menu();
        js_swithlist();
        Product_slide();
        Product_select();
    });
    /* ---------------------------------------------
     Scripts ready
     --------------------------------------------- */
    $(document).ready(function () {

        var rm = $(".read_more"),
            moreText = "... Xem thêm",
            lessText = "... Thu gọn";
        rm.click(function () {
            var $this = $(this);
            $(this).closest('.block').find('li.more').each(function () {
                if ($this.text() === moreText) {
                    $(this).css("display", "block");
                }
                else {
                    $(this).css("display", "none");
                }
            });
            $this.text($this.text() === moreText ? lessText : moreText);
        });
        // Them class 'lazy' vao tat ca hinh anh tren website
        $('.row-cate-pro img, #home-slider img, .section-band-logo img, .category-slider img, .list-cate-pro img, .page-product-detail img, .box-blogs img, .row-page-news img').each(function () {
            $(this).addClass("lazy");
        });

        // goi ham lazy load
        $(function () {
            $("img.lazy").lazyload();
        });
        // setTimeout(function () { $('.chat-widget').find('.linkchat-show-popup').addClass("fade").show() }, 10000);
        // setTimeout(function () { $('#RegPopup').modal('show') }, 90000);
        $('#RegPopup .btn').click(function () {
            $('.chat-widget').find('.linkchat-show-popup').addClass("fade").show();
            //   //$('#RegPopup').modal('show');
            // //setTimeout(function () { $('#RegPopup').modal('hide') }, 50000);
            // //setTimeout(function () { $('#RegPopup').modal('show') }, 90000);
        });
        js_height_full();
        rep_menu();
        Product_slide();
        //if ($('.parallax').length > 0) {
        //    $('.parallax').each(function () {
        //        $(this).parallax("50%", 0.1);
        //    })
        //}
        $('[data-toggle="tooltip"]').tooltip();
        /* Resize top menu*/
        resizeTopmenu();
        /* Zoom image */
        //if ($('#product-zoom').length > 0) {
        //    $('#product-zoom').elevateZoom({
        //        zoomType: "inner",
        //        cursor: "crosshair",
        //        zoomWindowFadeIn: 500,
        //        zoomWindowFadeOut: 750,
        //        gallery: 'gallery_01'
        //    });
        //}
        //if ($('#product-zoom').length > 0) {
        //    if ($(window).width() > 768) {
        //        $('#product-zoom').elevateZoom({ zoomType: "inner", cursor: "crosshair", zoomWindowFadeIn: 500, zoomWindowFadeOut: 750, gallery: 'gallery_01' });
        //    }
        //}
        if ($('.social-button').length > 0) {
            setTimeout(function () { $('.social-button a.call-icon span').show() }, 1000);
            setTimeout(function () { $('.social-button a.call-icon span').hide() }, 5000);
            setTimeout(function () { $('.social-button a.sms span').show() }, 6000);
            setTimeout(function () { $('.social-button a.sms span').hide() }, 9000);
        }
        $('.collapse.in').prev('.panel-heading').addClass('active');
        $('#accordion, #bs-collapse')
            .on('show.bs.collapse', function (a) {
                $(a.target).prev('.panel-heading').addClass('active');
            })
            .on('hide.bs.collapse', function (a) {
                $(a.target).prev('.panel-heading').removeClass('active');
            });

        if ($(window).width() >= 768) {
            if ($('.pb-right-column .product-desc').length > 0) {
                var max_h = $('.pb-right-column .product-desc.nd1').height();
                if (max_h < 800) {
                    $('.nd1').css('height', 'auto');
                    $('.show-more').hide();
                }
                else {
                    $('.nd1').css('height', '800px');
                    $('.show-more').click(function (event) {
                        $('.show-more').slideToggle();
                        $('.pb-right-column .product-desc.nd1').css('height', 'auto');
                    });
                }
            }
        }
        else {
            $('.nd1').css('height', 'auto');
            $('.show-more').hide();
        }
        if ($('.page-head-service').length > 0) {
            var litop = $('.page-service #columns').find('.h1-service');
            $(".page-service .page-head-service .fist-service ul").prepend(litop);
        }
        if ($('.bacviet-toc').length > 0) {
            $("#main-toc").append('<span class="toc_toggle">[<a class="show_hide" href="#">show</a>]</span>');
            $('.bacviet-toc .toc_list').css('display', 'none');
            $(document).on('click', '.toc_toggle .show_hide', function () {
                $(this).closest('.bacviet-toc').find('.toc_list').each(function () {
                    $(this).slideToggle();
                });
                $(this).addClass('hide_show').removeClass('show_hide').html('hide');
                return false;
            });
            /* Close Toc */
            $(document).on('click', '.toc_toggle .hide_show', function () {
                $(this).closest('.bacviet-toc').find('.toc_list').each(function () {
                    $(this).slideToggle();
                });
                $(this).addClass('show_hide').removeClass('hide_show').html('show');
                return false;
            });
        }
        $('.content-shop').find('.content-pro2').after('<div class=\"show-more2\" style=\"display:block;\" onclick=\"showArticle();\"><a id=\"xem-them\" href=\"javascript:;\" class=\"readmore\">Đọc thêm</a></div>');
        //$('.chat-widget').find('.linkchat-mb').append('<a href="javascript:void(Tawk_API.toggle())" class="chat_text">Tư vấn Dịch Thuật</a>');
        //$('.chat-widget').find('.linkchat-show-popup').append('<div class="show_chat_button"><p>Tư Vấn đang yêu cầu được chát với bạn</p><a href="javascript:void(Tawk_API.toggle())" class="chat_button_yes">Đồng ý</a><a href="#" class="chat_button_close">Từ chối</a></div>');
        //$('#RegPopup').find('.modal-dialog .modal-content').append('<div class="show_dk_tuvan"><a href="javascript:void(Tawk_API.toggle())" class="dk_button_yes"><i class="fa fa-user-md""></i> Tư vấn trực tuyến online</a></div>');
        //$(document).on('click', '.chat_button_yes', function () {
        //    $(this).closest('.chat-widget').find('.linkchat-show-popup').each(function () {
        //        $(this).slideUp();
        //    });
        //    $('.chat-widget').find('.linkchat-show-popup').removeClass("fade").hide();
        //   // return false;
        //});
        //$(document).on('click', '.chat_button_close', function () {
        //    $(this).closest('.chat-widget').find('.linkchat-show-popup').each(function () {
        //        $(this).slideUp();
        //    });
        //    $('.chat-widget').find('.linkchat-show-popup').removeClass("fade").hide();
        //    return false;
        //});
        //$(document).on('click', '.show_dk_tuvan .dk_button_yes', function () {
        //    $('.chat-widget').find('.linkchat-show-popup').removeClass("fade").hide();
        //    $('#RegPopup').modal('hide');
        //});

        if ($(window).width() >= 768) {

            if ($('.content-pro2').length > 0) {
                var max_h2 = $('.content-pro2').height();
                if (max_h2 < 800) {
                    $('.content-pro2').css('height', 'auto');
                    $('.show-more2').hide();
                }
                else {
                    $('.content-pro2').css('height', '800px');
                    $('.show-more2').click(function (event) {
                        $('.show-more2').slideToggle();
                        $('.content-pro2').css('height', 'auto');
                    });
                }
            }
        }
        else {
            $('.content-pro2').css('height', 'auto');
            $('.show-more2').hide();
        }
        $(".product-gallery__thumb img").click(function () {
            $(".product-gallery__thumb").removeClass('active');
            $(this).parents('.product-gallery__thumb').addClass('active');
            var img_thumb = $(this).data('image');
            var total_index = $(this).parents('.product-gallery__thumb').index() + 1;
            $(".gallery-index .current").html(total_index);
            $('html, body').animate({
                scrollTop: $("#sliderproduct img[src='" + img_thumb + "']").offset().top
            }, 1000);
        });
        $(".product-gallery__thumb").first().addClass('active');

        $('.entry-desc').find('table').before('<div class=\"table-respon\" style=\"overflow-x:auto;\"></div>');
        $('.entry-desc').find('table').appendTo('.table-respon');
        //$('.content-text a').click(function (event) {
        //    event.preventDefault();
        //});
        if ($('#main-menu .navbar .navbar-nav').length > 0) {
            $('#main-menu .navbar .navbar-nav li a').filter(function () { return this.href == location.href }).parent().addClass('active').siblings().removeClass('active')
            $('#main-menu .navbar .navbar-nav li a').click(function () {
                $(this).parent().addClass('active').siblings().removeClass('active')
            })
        }
        //$('#video a').fancybox({
        //    width: 640,
        //    height: 400,
        //    type: 'iframe'
        //});
        //$(document).on('click', '.video-bg', function (e) {
        //    var video = $(this).get(0);
        //    if (video.paused === false) {
        //        video.pause();
        //    } else {
        //        video.play();
        //    }

        //    return false;
        //});
        $('.video-bg').click(function () { this.paused ? this.play() : this.pause(); });
        /* Popup sizechart */
        if ($('#size_chart').length > 0) {
            $('#size_chart').fancybox();
        }
        if ($('.giuseart-nav, .about-home .large-gutters .ml-auto .more').length) {
            $(".add-map").click(function () {
                var title = $(this).attr('data-title');
                var curentUrl = $(this).attr('data-href');
                //$("#loadViewPro").load(curentUrl);
                $(".bs-example-modal-lg").find('.modal-header > .modal-title').text(title);
                $(".bs-example-modal-lg").find('#loadViewPro').html(curentUrl);
                $('.bs-example-modal-lg').modal();
            });
        }
        if ($('.social-link').length > 0) {
            var href = $('.social-link a:nth-child(2)').attr('href');
            $(".section-band-logo .box-title a.ins-second").attr("href", href);
        }
        /** OWL CAROUSEL**/
        $(".owl-carousel").each(function (index, el) {
            var config = $(this).data();
            config.navText = ['<i class="fa fa-angle-left"></i>', '<i class="fa fa-angle-right"></i>'];
            config.smartSpeed = "300";
            if ($(this).hasClass('owl-style2')) {
                config.animateOut = "fadeOut";
                config.animateIn = "fadeIn";
            }
            $(this).owlCarousel(config);
        });

        $(".owl-carousel-vertical").each(function (index, el) {
            var config = $(this).data();
            config.navText = ['<span class="icon-up"></spam>', '<span class="icon-down"></span>'];
            config.smartSpeed = "900";
            config.animateOut = "";
            config.animateIn = "fadeInUp";
            $(this).owlCarousel(config);
        });
        if ($('.two-column-carousel').length) {
            $('.two-column-carousel').owlCarousel({
                loop: true,
                margin: 20,
                nav: true,
                dots: false,
                smartSpeed: 500,
                autoplay: 5000,
                navText: ['<span class="fa fa-angle-left"></span>', '<span class="fa fa-angle-right"></span>'],
                responsive: {
                    0: {
                        items: 1
                    },
                    600: {
                        items: 1
                    },
                    1024: {
                        items: 2
                    },
                    1200: {
                        items: 2
                    }
                }
            });
        }
        if ($('.welcome-carousel').length) {
            $('.welcome-carousel').owlCarousel({
                loop: true,
                margin: 10,
                nav: true,
                dots: false,
                smartSpeed: 500,
                autoplay: 5000,
                navText: ['<span class="fa fa-angle-left"></span>', '<span class="fa fa-angle-right"></span>'],
                responsive: {
                    0: {
                        items: 0
                    },
                    600: {
                        items: 2
                    },
                    1024: {
                        items: 3
                    },
                    1200: {
                        items: 3
                    }
                }
            });
        }
        /** COUNT DOWN **/
        $('[data-countdown]').each(function () {
            var $this = $(this), finalDate = $(this).data('countdown');
            $this.countdown(finalDate, function (event) {
                var fomat = '<span>%H</span><b></b><span>%M</span><b></b><span>%S</span>';
                $this.html(event.strftime(fomat));
            });
        });
        if ($('.countdown-lastest').length > 0) {
            var labels = ['Years', 'Months', 'Weeks', 'Days', 'Hrs', 'Mins', 'Secs'];
            var layout = '<span class="box-count"><span class="number">{dnn}</span> <span class="text">Days</span></span><span class="dot">:</span><span class="box-count"><span class="number">{hnn}</span> <span class="text">Hrs</span></span><span class="dot">:</span><span class="box-count"><span class="number">{mnn}</span> <span class="text">Mins</span></span><span class="dot">:</span><span class="box-count"><span class="number">{snn}</span> <span class="text">Secs</span></span>';
            $('.countdown-lastest').each(function () {
                var austDay = new Date($(this).data('y'), $(this).data('m') - 1, $(this).data('d'), $(this).data('h'), $(this).data('i'), $(this).data('s'));
                $(this).countdown({
                    until: austDay,
                    labels: labels,
                    layout: layout
                });
            });
        }
        /* Close top banner*/
        $(document).on('click', '.btn-close', function () {
            $(this).closest('.top-banner').animate({ height: 0, opacity: 0 }, 1000);
            return false;
        });
        /** SELECT CATEGORY **/
        $('.select-category').select2();
        /* Toggle nav menu*/
        $(document).on('click', '.toggle-menu', function () {
            $(this).closest('.nav-menu').find('.navbar-collapse').toggle();
            return false;
        });
        /** HOME SLIDE**/
        if ($('#home-slider').length > 0 && $('#contenhomeslider').length > 0) {
            var slider = $('#contenhomeslider').bxSlider(
                {
                    nextText: '<i class="fa fa-angle-right"></i>',
                    prevText: '<i class="fa fa-angle-left"></i>',
                    auto: true,
                    speed: 2000,
                    pause : 10000,
                    mode: 'fade'
                }

            );
        }
        /** Custom page sider**/
        if ($('#home-slider').length > 0 && $('#contenhomeslider-customPage').length > 0) {
            var slider1 = $('#contenhomeslider-customPage').bxSlider(
                {
                    nextText: '<i class="fa fa-angle-right"></i>',
                    prevText: '<i class="fa fa-angle-left"></i>',
                    auto: true,
                    pagerCustom: '#bx-pager',
                    nextSelector: '#bx-next',
                    prevSelector: '#bx-prev'
                }

            );
        }

        if ($('#home-slider').length > 0 && $('#slide-background').length > 0) {
            var slider2 = $('#slide-background').bxSlider(
                {
                    nextText: '<i class="fa fa-angle-right"></i>',
                    prevText: '<i class="fa fa-angle-left"></i>',
                    auto: true,
                    onSlideNext: function ($slideElement, oldIndex, newIndex) {
                        var corlor = $($slideElement).data('background');
                        $('#home-slider').css('background', corlor);
                    },
                    onSlidePrev: function ($slideElement, oldIndex, newIndex) {
                        var corlor = $($slideElement).data('background');
                        $('#home-slider').css('background', corlor);
                    }
                }

            );
            //slider.goToNextSlide();
        }
        $('.bxslider-background').bxSlider({
            useCSS: false,
            nextText: '<i class="fa fa-angle-right"></i>',
            prevText: '<i class="fa fa-angle-left"></i>',
            auto: true,
            onSliderLoad: function (currentIndex) {
                var current = $('.bxslider-background > li').eq(currentIndex);
                setTimeout(function () {
                    //current.find('.sl-description').show();
                    current.find('.caption').each(function () {
                        $(this).show().addClass('animated fadeInDown');
                    });
                }, 1000);
            },
            onSlideBefore: function (slideElement, oldIndex, newIndex) {
                //slideElement.find('.sl-description').hide();
                slideElement.find('.caption').each(function () {
                    $(this).hide().removeClass('animated fadeInDown');
                });
            },
            onSlideAfter: function (slideElement, oldIndex, newIndex) {
                //slideElement.find('.sl-description').show();
                setTimeout(function () {
                    slideElement.find('.caption').each(function () {
                        $(this).show().addClass('animated fadeInDown');
                    });
                }, 500);
            }
        });
        /* enter search*/
        $('#ctl00_hh_ctl00_TextBoxSearch').keydown(function (e) {
            if (e.keyCode === 13) {
                var keywords = $("#ctl00_hh_ctl00_TextBoxSearch").val().replace(/ /g, '+');
                window.location = "/tags-products/tag.html?url=" + keywords;
                return false;
            }
        });
        /* elevator click*/
        $(document).on('click', 'a.btn-elevator', function (e) {
            e.preventDefault();
            var target = this.hash;
            if ($(document).find(target).length <= 0) {
                return false;
            }
            var $target = $(target);
            $('html, body').stop().animate({
                'scrollTop': $target.offset().top - 50
            }, 500);
            return false;
        });
        $('.float-contact').find('a.chat-hotline.chat-0 i').append('<span class="text-call">Hotline</span>');
        $('.float-contact').find('.chat-hotline.chat-1 i').append('<span class="text-call">Hotline 2</span>');
        $('.float-contact').find('a.chat-hotline.chat-2 i').append('<span class="text-call">Hotline 3</span>');
        $('.form-send-contact').appendTo("#contact_form_map");
        //$('.form-send-contact').append('<div class="ps-title"><i class="fa fa-envelope"></i> Nhận tư vấn miễn phí</div>');
        /* scroll top */
        $(document).on('click', '.scroll-top', function () {
            $('body,html').animate({ scrollTop: 0 }, 400);
            return false;
        });
        /** #brand-showcase */
        $(document).on('click', '.brand-showcase-logo li', function () {
            var id = $(this).data('tab');
            $(this).closest('.brand-showcase-logo').find('li').each(function () {
                $(this).removeClass('active');
            });
            $(this).closest('li').addClass('active');
            $('.brand-showcase-content').find('.brand-showcase-content-tab').each(function () {
                $(this).removeClass('active');
            });
            $('#' + id).addClass('active');
            return false;
        });
        /* #faq */
        $(function () {
            $(".expand").on("click", function () {
                // $(this).next().slideToggle(200);
                var expand = $(this).find(">:first-child");

                if (expand.text() === "+") {
                    expand.text("-");
                } else {
                    expand.text("+");
                }
            });
        });
        // CATEGORY FILTER
        $('.slider-range-price').each(function () {
            var value_min = $(".minprice").val();
            var value_max = $(".maxprice").val();
            var MaxPr = $(".tienmax").text();
            var unit = $(this).data('unit');
            var label_reasult = $(this).data('label-reasult');
            var t = $(this);
            $(this).slider({
                range: true,
                min: 0,
                max: MaxPr,
                values: [value_min, value_max],
                slide: function (event, ui) {
                    var result = label_reasult + " " + parseFloat(ui.values[0], 10).toFixed(2).replace(/(\d)(?=(\d{3})+\.)/g, "$1,").toString().replace(".00", "") + unit + ' - ' + parseFloat(ui.values[1], 10).toFixed(2).replace(/(\d)(?=(\d{3})+\.)/g, "$1,").toString().replace(".00", "") + unit; //parseFloat(ui.values[0], 10).toFixed(2).replace(/(\d)(?=(\d{3})+\.)/g, "$1,").toString().replace(".00", "")
                    console.log(t);
                    t.closest('.slider-range').find('.amount-range-price').html(result);
                    filterSystem(ui.values[0], ui.values[1]);
                }
            });
        });
        //goi lai khi Update panel
        if ($('.left-pro').length > 0) {
            if ($(window).width() > 768) {
                var prm = Sys.WebForms.PageRequestManager.getInstance();
                prm.add_endRequest(function () {
                    $('.slider-range-price').each(function () {
                        var value_min = $(".minprice").val();
                        var value_max = $(".maxprice").val();
                        var MaxPr = $(".tienmax").text();
                        var unit = $(this).data('unit');
                        var label_reasult = $(this).data('label-reasult');
                        var t = $(this);
                        $(this).slider({
                            range: true,
                            min: 0,
                            max: MaxPr,
                            values: [value_min, value_max],
                            slide: function (event, ui) {
                                var result = label_reasult + " " + parseFloat(ui.values[0], 10).toFixed(2).replace(/(\d)(?=(\d{3})+\.)/g, "$1,").toString().replace(".00", "") + unit + ' - ' + parseFloat(ui.values[1], 10).toFixed(2).replace(/(\d)(?=(\d{3})+\.)/g, "$1,").toString().replace(".00", "") + unit; //parseFloat(ui.values[0], 10).toFixed(2).replace(/(\d)(?=(\d{3})+\.)/g, "$1,").toString().replace(".00", "")
                                console.log(t);
                                t.closest('.slider-range').find('.amount-range-price').html(result);
                                filterSystem(ui.values[0], ui.values[1]);
                            }
                        });
                    });
                });
            }
        }
        function filterSystem(minPrice, maxPrice) {
            $('.range-number').each(function () {
                $(".minprice").val(minPrice);
                $(".maxprice").val(maxPrice);
            });
        }
        $("#myInput").on("keyup", function () {
            var value = $(this).val().toLowerCase();
            $("#datatable tr").filter(function () {
                $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1);
            });
        });
        /** ALL CAT **/
        $(document).on('click', '.open-cate', function () {
            $(this).closest('.vertical-menu-content').find('li.cat-link-orther').each(function () {
                $(this).slideDown();
            });
            $(this).addClass('colse-cate').removeClass('open-cate').html('Close');
        });
        /* Close category */
        $(document).on('click', '.colse-cate', function () {
            $(this).closest('.vertical-menu-content').find('li.cat-link-orther').each(function () {
                $(this).slideUp();
            });
            $(this).addClass('open-cate').removeClass('colse-cate').html('All Categories');
            return false;
        });
        // bar ontop click
        $(document).on('click', '.vertical-megamenus-ontop-bar', function () {
            $('#vertical-megamenus-ontop').find('.box-vertical-megamenus').slideToggle();
            $('#vertical-megamenus-ontop').toggleClass('active');
            return false;
        });
        // bar click
        $(document).on('click', '.navbar-toggle', function () {
            $('.navbar-toggle').toggleClass('active');
            return false;
        });
        // View grid list product
        $(document).on('click', '.display-product-option .view-as-grid', function () {
            $(this).closest('.display-product-option').find('li').removeClass('selected');
            $(this).addClass('selected');
            $(this).closest('.view-product-list').find('.product-list').removeClass('list').addClass('grid');
            return false;
        });
        // View list list product
        $(document).on('click', '.display-product-option .view-as-list', function () {
            $(this).closest('.display-product-option').find('li').removeClass('selected');
            $(this).addClass('selected');
            $(this).closest('.view-product-list').find('.product-list').removeClass('grid').addClass('list');
            return false;
        });
        /// tre menu category
        $(document).on('click', '.tree-menu li span', function () {
            $(this).closest('li').children('ul').slideToggle();
            if ($(this).closest('li').haschildren('ul')) {
                $(this).toggleClass('open');
            }
            return false;
        });
        /* Open menu on mobile */
        $(document).on('click', '.btn-open-mobile', function () {
            var width = $(window).width();
            //if (width > 1024) {
            //    if ($('body').hasClass('home')) {
            //        if ($('#nav-top-menu').hasClass('nav-ontop') || $('#header').hasClass('optop')) {

            //        } else {

            //            return false;
            //        }
            //    }
            //}
            $(this).closest('.box-vertical-megamenus').find('.vertical-menu-content').slideToggle();
            $(this).closest('.title').toggleClass('active');
            return false;
        });
        /* Product qty */
        $(document).on('click', '.btn-plus-down', function () {
            var value = parseInt($('.qty-val').val());
            value = value - 1;
            if (value <= 0) return false;
            $('.qty-val').val(value);
            return false;
        });
        $(document).on('click', '.btn-plus-up', function () {
            var value = parseInt($('.qty-val').val());
            value = value + 1;
            if (value <= 0) return false;
            $('.qty-val').val(value);
            return false;
        });
        /* Product qty kieu 2 */
        $(document).ready(function () {
            var quantitiy = 0;
            $('.quantity-right-plus').click(function (e) {
                e.preventDefault();
                var quantity = parseInt($('.qty-vl').val());
                $('.qty-vl').val(quantity + 1);
            });

            $('.quantity-left-minus').click(function (e) {
                e.preventDefault();
                var quantity = parseInt($('.qty-vl').val());
                if (quantity > 1) {
                    $('.qty-vl').val(quantity - 1);
                }
            });
        });
        /* Close vertical */
        $(document).on('click', '*', function (e) {
            var container = $("#box-vertical-megamenus");
            if (!container.is(e.target) && container.has(e.target).length === 0) {
                //if ($('body').hasClass('home')) {
                //    if ($('#nav-top-menu').hasClass('nav-ontop')) {
                //    } else {
                //        return;
                //    }
                //}
                container.find('.vertical-menu-content').hide();
                container.find('.title').removeClass('active');
            }
        });
        /* Send conttact*/
        //$(document).on('click', '#btn-send-contact', function () {
        //    var subject = $('#subject').val(),
        //        email = $('#email').val(),
        //        order_reference = $('#order_reference').val(),
        //        message = $('#message').val();
        //    var data = {
        //        subject: subject,
        //        email: email,
        //        order_reference: order_reference,
        //        message: message
        //    };
        //    $.post('ajax_contact.php', data, function (result) {
        //        if (result.trim() === "done") {
        //            $('#email').val('');
        //            $('#order_reference').val('');
        //            $('#message').val('');
        //            $('#message-box-conact').html('<div class="alert alert-info">Your message was sent successfully. Thanks</div>');
        //        } else {
        //            $('#message-box-conact').html(result);
        //        }
        //    });
        //});
        //======================================Cart ====================
        $(document).on('click', '.addtowishlist', function () {
            var anchorLink = $(this);
            var itemCount = $(".wishlist-number").text().replace(/\,/g, '');
            if (itemCount === "") {
                itemCount = 0;
            }
            // AJAX Request
            var sectionID = anchorLink.attr('data-id');
            var cID = anchorLink.attr('data-wid');
            var data = {
                id: sectionID,
                cid: cID
            };
            $.post(window.location.protocol + "//" + window.location.host + "/addtofavoriteunfavorite.html", data, function (data) {
                if (data.trim() === "1") {
                    anchorLink.removeClass("like");
                    anchorLink.addClass("liked");
                    itemCount = parseInt(itemCount) + 1;
                    $(".wishlist-number").html(itemCount);
                    $(".countFavouritePopup").html(itemCount);
                    $('.desc-like').css('opacity', 1);
                    $('.desc-like').css('top', '50px');
                    //setTimeout(function () {
                    //    $('.desc-like').css('opacity', 0);
                    //    $('.desc-like').css('top', '-70px');
                    //}, 2000);
                    //console.log("success 1");
                    window.location.replace(window.location.protocol + "//" + window.location.host + "/my-account/wishlist.html");
                }
                else if (data.trim() === "-1") {
                    anchorLink.removeClass("liked");
                    anchorLink.addClass("like");
                    itemCount = parseInt(itemCount) - 1;
                    if (itemCount < 0) {
                        itemCount = 0;
                    }
                    $(".wishlist-number").html(itemCount);
                    $(".countFavouritePopup").html(itemCount);
                    $('.desc-like').css('opacity', 1);
                    $('.desc-like').css('top', '50px');
                    setTimeout(function () {
                        $('.desc-like').css('opacity', 0);
                        $('.desc-like').css('top', '-70px');
                    }, 2000);
                    //console.log("success -1");
                    //window.location.replace(window.location.protocol + "//" + window.location.host + "/my-account/wishlist.html");
                }
                else {
                    console.log("not success");
                }
                //console.log("ket qua: " + data.trim());
            });
        });
        //if (window.Sys && Sys.WebForms && Sys.WebForms.PageRequestManager) {
        //    Sys.WebForms.PageRequestManager.getInstance().add_endRequest(function () { js_swithlist(); Product_select(); });
        //}
        $(document).on('click', '.addtocartlist', function () {
            var anchorLink = $(this);
            var itemCount = $(".cartlist-number").text().replace(/\,/g, '');
            if (itemCount === "") {
                itemCount = 0;
            }
            if (anchorLink.hasClass("like")) {
                // AJAX Request
                var sectionID = anchorLink.attr('data-id');
                var cID = anchorLink.attr('data-cid');
                var data = {
                    id: sectionID,
                    cid: cID
                };
                $.post(window.location.protocol + "//" + window.location.host + "/addtoshoppingcartlist.html", data, function (data) {
                    if (data.trim() === "1") {
                        anchorLink.removeClass("like");
                        anchorLink.addClass("liked");
                        itemCount = parseInt(itemCount) + 1;
                        $(".cartlist-number").html(itemCount);
                        $(".countShoppingCartPopup").html(itemCount);
                        $('.desc-cart').css('opacity', 1);
                        $('.desc-cart').css('top', '50px');
                        //setTimeout(function () {
                        //    $('.desc-cart').css('opacity', 0);
                        //    $('.desc-cart').css('top', '-70px');
                        //}, 2500);
                        //console.log("success 1");
                        window.location.replace(window.location.protocol + "//" + window.location.host + "/my-account/shoppingcart.html");
                    }
                    else if (data.trim() === "0") {
                        anchorLink.removeClass("like");
                        anchorLink.addClass("liked");
                        itemCount = parseInt(itemCount);
                        if (itemCount < 0) {
                            itemCount = 0;
                        }
                        $(".cartlist-number").html(itemCount);
                        $(".countShoppingCartPopup").html(itemCount);
                        $('.desc-cart').css('opacity', 1);
                        $('.desc-cart').css('top', '50px');
                        //setTimeout(function () {
                        //    $('.desc-cart').css('opacity', 0);
                        //    $('.desc-cart').css('top', '-70px');
                        //}, 3000);
                        //console.log("success 0");
                        window.location.replace(window.location.protocol + "//" + window.location.host + "/my-account/shoppingcart.html");
                    }
                    else {
                        console.log("not success");
                    }
                    //console.log("ket qua: " + data.trim());
                });
            }
            else {
                $('.desc-cart').css('opacity', 1);
                $('.desc-cart').css('top', '50px');
                //setTimeout(function () {
                //    $('.desc-cart').css('opacity', 0);
                //    $('.desc-cart').css('top', '-70px');
                //}, 2500);
                window.location.replace(window.location.protocol + "//" + window.location.host + "/my-account/shoppingcart.html");
            }
        });
        //===================================================Check Out ==================
        var testEmail = /^[A-Z0-9._%+-]+@([A-Z0-9-]+\.)+[A-Z]{2,4}$/i;
        var rowCount = $('.table_product > tbody > tr').length;
        if (rowCount <= 0) {
            $("#PanelDatHang").hide();
        }
        $(document).on('click', '.sendCheckOut', function () {
            var anchorLink = $(this);
            var has_empty = true;
            $("#btnSentWait").fadeIn("slow");
            $('.checkOutForm .frm-user .required').each(function () {
                var txt = $(this).closest("div").find("input").val();
                if (txt === "") {
                    $(this).closest("div").find("input").css("border-color", "red");
                    $(this).show(300);
                    has_empty = false;
                }
                else {
                    $(this).hide(300);
                    $(this).closest("div").find("input").css("border-color", "#d8d8d8");
                }
            });
            var email = $(".TextBoxEmailCheckOut").val();
            if (email === "" || testEmail.test(email) === false) {
                has_empty = false;
                $(".TextBoxEmailCheckOut").css("border-color", "red");
            }
            else {
                $(".TextBoxEmailCheckOut").css("border-color", "#d8d8d8");
            }
            if (has_empty === false) {
                $("#thongbao p").html("Nhập những mục bắt buộc!");
                $("#thongbao").show(200);
                setTimeout(function () {
                    $("#thongbao").hide(200);
                    $("#btnSentWait").fadeOut("slow");
                }, 2500);
                return false;
            }
            else {
                var rowCount = $('.table_product > tbody > tr').length;
                anchorLink.attr("disabled", true);
                if (rowCount <= 0) {
                    $("#thongbao p").html("Chọn sản phẩm vào danh sách!");
                    $("#thongbao").show(200);
                    return false;
                }
                else {
                    var csrfToken = $("#csrf_token").val();
                    var cid = '99999';
                    var name = $(".TextBoxHoTenCheckOut").val();
                    var email = $(".TextBoxEmailCheckOut").val();
                    var mobile = $(".TextBoxDienThoaiCheckOut").val();
                    var address = $(".TextBoxDiaChiCheckOut").val();
                    var note = $(".TextBoxGhiChuCheckOut").val();
                    var receiveAddress = "";//$(".TextBoxDiaChi2CheckOut").val();
                    var receiveEmail = "";// $(".TextBoxReceiveEmail").val();
                    var receiveMobile = "";//$(".TextBoxDienThoai2CheckOut").val();
                    var receiveName = "";//$(".TextBoxHoTen2CheckOut").val();
                    var status = "0";
                    var hinhthuc = "0";// $(".DropDownListMethodCheckOut option:selected").val();
                    var salesid = "0";
                    var TotalOrder = $(".total_card_item").html().replace(/\,/g, '');
                    var OffMoney = "0";
                    var otherMoney = "0";
                    var dathu = "0";
                    var vat = "true";
                    var memid = $("input[name*='HiddenFieldMemId']").val();
                    var pro_pids = "";
                    var pro_soluong = "";
                    var pro_giaban = "";

                    var data = {
                        cid: cid,
                        name: name,
                        mobile: mobile,
                        email: email,
                        address: address,
                        note: note,
                        receiveAddress: receiveAddress,
                        receiveEmail: receiveEmail,
                        receiveMobile: receiveMobile,
                        receiveName: receiveName,
                        status: status,
                        hinhthuc: hinhthuc,
                        salesid: salesid,
                        TotalOrder: TotalOrder,
                        OffMoney: OffMoney,
                        otherMoney: otherMoney,
                        vat: vat,
                        memid: memid,
                        pro_pids: pro_pids,
                        pro_soluong: pro_soluong,
                        pro_giaban: pro_giaban,
                        dathu: dathu,
                        type: "addnew",
                        _token: csrfToken
                    }

                    $.post("/storeCart.html", data, function (result) {
                        const obj = result;
                        if (obj.status === "100") {
                            console.log()
                            $("#thongbao p").html(obj.message);
                            $("#thongbao").show(200);

                            setTimeout(function () {
                                //========= Reset Form =============
                                anchorLink.attr("disabled", false);
                                $('.table_product tbody').empty();
                                $('#PanelDatHang').find("input").val("");
                                $('#PanelDatHang').find("textarea").val("");
                                $('#PanelDatHang').find("input[name*='HiddenFieldMemId']").val("0");
                                $('#PanelDatHang').find("input[name*='HiddenFieldMaDonHang']").val("");
                                $('#PanelDatHang').fadeOut("slow");
                                $('#PanelKetThuc').fadeIn("slow");
                                $("#btnSentWait").fadeOut("slow");
                            }, 1500);
                        }
                        else{
                            $("#thongbao p").html("Có lỗi đã xảy ra!");
                            $("#thongbao").show(200);
                            setTimeout(function () {
                                anchorLink.attr("disabled", false);
                                $("#btnSentWait").fadeOut("slow");
                            }, 1500);
                        }
                    });
                }
            }
        });

        //==================================================== Comment ==================
        $(".TextBoxNameComment").focus(function () {
            $(this).css("border-color", "#d8d8d8");
        });
        $(".TextBoxNameComment").blur(function () {
            if ($(this).val() === "") {
                $(this).css("border-color", "red");
            }
            else {
                $(this).css("border-color", "#d8d8d8");
            }
        });
        $(".TextBoxEmailComment").focus(function () {
           $(this).css("border-color", "#d8d8d8");
        });
       $(".TextBoxEmailComment").blur(function () {
            var email = $(this).val();
           if (email === "" || testEmail.test(email) === false) {
               $(this).css("border-color", "red");
           }
            else {
                $(this).css("border-color", "#d8d8d8");
           }
       });
       $(".TextBoxPhoneComment").focus(function () {
            $(this).css("border-color", "#d8d8d8");
        });
        $(".TextBoxPhoneComment").blur(function () {
            if ($(this).val() === "") {
                $(this).css("border-color", "red");
            }
            else {
                $(this).css("border-color", "#d8d8d8");
            }
        });
        $(".TextBoxNoiDungComment").focus(function () {
            $(this).css("border-color", "#d8d8d8");
        });
        $(".TextBoxNoiDungComment").blur(function () {
            var comment = $(this).val();
            if (comment === "" || comment.length < 25) {
                $(this).css("border-color", "red");
            }
            else {
                $(this).css("border-color", "#d8d8d8");
            }
        });
        $(document).on('click', '.btnSendComment', function () {
            var fullname = $('.TextBoxNameComment').val();
            var email = $('.TextBoxEmailComment').val();
             var phone = $('.TextBoxPhoneComment').val();
            var message = $('.TextBoxNoiDungComment').val();
            var pid = $("input[name*='HiddenFieldpIdComment']").val();
            var star = $("input[name*='HiddenFieldNumberStar']").val();
            var memid = $("input[name*='HiddenFieldMemId']").val();
            var has_empty = true;
            if (fullname === "" || fullname.length < 5) {
                has_empty = false;
                $(".TextBoxNameComment").css("border-color", "red");
            }
           if (email === "" || testEmail.test(email) === false) {
               has_empty = false;
               $(".TextBoxEmailComment").css("border-color", "red");
           }
           if (phone === "" || phone.length < 9) {
                has_empty = false;
                $('.TextBoxPhoneComment').css("border-color", "red");
            }
            if (message === "") {
                //has_empty = false;
                //$(".TextBoxNoiDungComment").css("border-color", "red");
                message = "--null--";
            }
            if (star === "" || star === "0") {
                has_empty = false;
                $(".error-comment").css("display", "block");
                $(".number-star").css("color", "red");
            }
            if (has_empty === false) {
                return false;
            }
            else {
                $('.btnSendComment').attr("disabled", true);
                $('#btnSentWait').show(200);
                var data = {
                    fullname: fullname,
                    email: email,
                    phone: phone,
                    message: message,
                    pid: pid,
                    star: star,
                    memid: memid
                };
                $.post(window.location.protocol + "//" + window.location.host + '/getdatacommentform.html', data, function (result) {
                    if (result.trim() === "success") {
                        $('.TextBoxNameComment').val('');
                        $('.TextBoxEmailComment').val('');
                        $('.TextBoxPhoneComment').val('');
                        $('.TextBoxNoiDungComment').val('');
                        $(".TextBoxNameComment").css("border-color", "#d8d8d8");
                       $(".TextBoxEmailComment").css("border-color", "#d8d8d8");
                        $(".TextBoxPhoneComment").css("border-color", "#d8d8d8");
                        $(".TextBoxNoiDungComment").css("border-color", "#d8d8d8");
                        $("input[name*='HiddenFieldNumberStar']").val(0);
                        $('.starrr span').nextAll().removeClass('glyphicon-star');
                        $('.starrr span').prevAll().andSelf().addClass('glyphicon-star-empty');
                        $(".number-star").css("color", "#c7c7c7");
                        $('#btnSentWait').hide(200);
                        $('#senComment_success').show(200);
                        setTimeout(function () {
                            $('#senComment_success').hide(300);
                            $('.btnSendComment').attr("disabled", false);
                        }, 10000);
                        //console.log("success! " + result.trim());
                    } else {
                        $('#senComment_error').html(result);
                        $('#btnSentWait').hide(200);
                        $('#senComment_error').show(200);
                        setTimeout(function () {
                            //$('#senComment_error').hide(300);
                            $('.btnSendComment').attr("disabled", false);
                        }, 10000);
                        //console.log("not success! " + result.trim());
                    }
                });
            }
        });
        $(document).on('click', '.post-controls', function () {
            var type = "1";
            var anchorLink = $(this);
            var sectionCount = anchorLink.attr('data-num');
            sectionCount = parseInt(sectionCount) + 1;
            if (anchorLink.hasClass('like')) {
                type = "1";
                anchorLink.removeClass("like");
                anchorLink.addClass("liked");
                anchorLink.html("<i class='fa fa-thumbs-up'></i> <span>" + sectionCount + "</span> thích");
            }
            else {
                if (parseInt(sectionCount) > 0) {
                    sectionCount = parseInt(sectionCount) - 1;
                }
                type = "0";
                anchorLink.removeClass("liked");
                anchorLink.addClass("like");
                anchorLink.html("<i class='fa fa-thumbs-down'></i> <span>" + sectionCount + "</span> thích");
            }
            // AJAX Request
            var sectionID = anchorLink.attr('data-id');
            var data = {
                type: type,
                id: sectionID
            };
            $.post(window.location.protocol + "//" + window.location.host + "/likeunlike.html", data, function (data) {
                if (data.trim() === "success") {
                    setTimeout(function () {
                        anchorLink.removeClass("liked");
                        anchorLink.addClass("like");
                        anchorLink.attr('data-num', sectionCount);
                    }, 10000);
                    //console.log("Liked success!");
                } else {
                    console.log("Liked not success! " + data.trim());
                }
            });
        });
        $(document).on('change', '.number_card_item', function () {
            // AJAX Request
            var anchorLink = $(this);
            var sectionID = anchorLink.closest("tr").find(".delete_cartorder").attr('data-id');
            var cid = anchorLink.closest("tr").find(".delete_cartorder").attr('data-cid');
            var num = anchorLink.val();
            var data = {
                cid: cid,
                id: sectionID,
                num: num,
                kieu: "update_cart_number"
            };
            //anchorLink.attr("disabled", false);
            $.post(window.location.protocol + "//" + window.location.host + "/deleteshoppingcarttemp.html", data, function (data) {
                var obj = JSON.parse(data.trim());
                if (obj.status === "100") {
                    $("#thongbao p").html("Cập nhật thành công!");
                    $("#thongbao").show(200);
                    // Tính lại Row
                    var sum = 0;
                    var quantity;
                    $('#myTableCart > tbody  > tr').each(function () {
                        quantity = $(this).find('.number_card_item').val();
                        var price = parseFloat($(this).find('.delete_cartorder').attr('data-price'));
                        var amount = quantity * price;
                        sum += amount;
                        $(this).find('.amount_card_item').text(formatDollar(amount)).fadeIn("slow");
                        if (parseInt(quantity) === parseInt(num)) {
                            $(this).find('.amount_card_item').css("color", "#3f51b5");
                        }
                    });
                    $('.total_card_item').css("color", "#3f51b5");
                    $('.total_card_item').text(formatDollar(sum)).fadeIn("slow");

                    setTimeout(function () {
                        $("#thongbao").hide(200);
                        $('.total_card_item').css("color", "initial");
                        $("#myTableCart").find('.amount_card_item').css("color", "initial");
                    }, 2500);
                }
                else {
                    var _err = "Delete not success! Lỗi đã xảy ra: " + message;
                    console.log(_err);
                    $("#thongbao p").html(_err);
                    $("#thongbao").show(200);
                    setTimeout(function () {
                        $("#thongbao").hide(200);
                    }, 3000);
                }

            });
        });
        $(document).on('click', '.delete_cartorder, .delete_viewed_order, .delete_viewed_order', function () {
            // AJAX Request
            var anchorLink = $(this);
            var sectionID = anchorLink.attr('data-id');
            var cid = anchorLink.attr('data-cid');
            var type = anchorLink.attr('data-type');
            var danhsach = anchorLink.attr('data-list');
            var data = {
                type: type,
                cid: cid,
                id: sectionID,
                kieu: "delete_cart"
            };
            anchorLink.html("...");
            anchorLink.attr("disabled", false);
            $.post(window.location.protocol + "//" + window.location.host + "/deleteshoppingcarttemp.html", data, function (data) {
                var obj = JSON.parse(data.trim());
                if (obj.status === "100") {
                    var message = obj.message;
                    $("#thongbao p").html("Cập nhật thành công!");
                    $("#thongbao").show(200);
                    if (message === "v") { // đã xem
                        anchorLink.closest(danhsach).remove().fadeOut(300);
                        var itemCount = $(".viewdlist-number").text().replace(/\,/g, '');
                        if (itemCount === "") {
                            itemCount = 0;
                        }
                        itemCount = parseInt(itemCount) - 1;
                        if (itemCount < 0) {
                            itemCount = 0;
                        }
                        $(".viewdlist-number").html(itemCount);
                        //console.log("Delete success!");
                        if ($('#myTableViewed').length > 0) {
                            var rowCount = $('#myTableViewed >tbody >tr').length;
                            if (rowCount <= 0) {
                                $('#myTableViewed').hide(300);
                                if ($('#more_myTableViewed').length > 0) {
                                    $('#more_myTableViewed').hide(300);
                                }
                                $('#thongbao_cart').show(300);
                            }
                        }
                        else {
                            if ($('#myListViewed').length > 0) {
                                var rowCount2 = $('#myListViewed li').length;
                                if (rowCount2 <= 0) {
                                    $('#myListViewed').hide(300);
                                    if ($('#more_myTableViewed').length > 0) {
                                        $('#more_myTableViewed').hide(300);
                                    }
                                    $('#thongbao_cart').show(300);
                                }
                            }
                        }

                    }
                    else if (message === "w") { // yêu thích
                        anchorLink.closest(danhsach).remove().fadeOut(300);
                        var itemCountwishlist = $(".wishlist-number").text().replace(/\,/g, '');
                        if (itemCountwishlist === "") {
                            itemCountwishlist = 0;
                        }
                        itemCountwishlist = parseInt(itemCountwishlist) - 1;
                        if (itemCountwishlist < 0) {
                            itemCountwishlist = 0;
                        }
                        $(".wishlist-number").html(itemCountwishlist);
                        //console.log("Delete success!");
                        var rowCountwishlist = ""; // $('#myTableWish >tbody >tr').length;
                        if (danhsach === "li") {
                            rowCountwishlist = $('#myTableWish li').length;
                        }
                        else {
                            rowCountwishlist = $('#myTableWish >tbody >tr').length;
                        }
                        if (rowCountwishlist <= 0) {
                            $('#myTableWish').hide(300);
                            $('.footer_swish').hide(300);
                            if ($('#sendform_swish').length > 0) {
                                $('#sendform_swish').hide(300);
                            }
                            if ($('#more_myTableWish').length > 0) {
                                $('#more_myTableWish').hide(300);
                            }
                            $('#thongbao_cart').show(300);
                        }
                    }
                    else if (message === "c") { // giỏ hàng
                        anchorLink.closest("tr").remove().fadeOut(300);
                        var itemCountcart = $(".cartlist-number").text().replace(/\,/g, '');
                        if (itemCountcart === "") {
                            itemCountcart = 0;
                        }
                        itemCountcart = parseInt(itemCountcart) - 1;
                        if (itemCountcart < 0) {
                            itemCountcart = 0;
                        }
                        $(".cartlist-number").html(itemCountcart);
                        //console.log("Delete success!");
                        var rowCountcart = $('#myTableCart >tbody >tr').length;
                        //if (danhsach === "li") {
                        //    rowCountcart = $('#myTableCart li').length;
                        //}
                        //else {
                        //    rowCountcart = $('#myTableCart >tbody >tr').length;
                        //}
                        if (rowCountcart <= 0) {
                            $('#myTableCart').hide(300);
                            $('.more_footerCart').hide(300);
                            $('#more_myTableCart').hide(300);
                            $('#thongbao_cart').show(300);
                        }
                        else {
                            // Tính lại Row
                            var sum = 0;
                            var quantity;
                            $('#myTableCart > tbody  > tr').each(function () {
                                quantity = $(this).find('.number_card_item').val();
                                var price = parseFloat($(this).find('.delete_cartorder').attr('data-price'));
                                var amount = quantity * price;
                                sum += amount;
                                $(this).find('.amount_card_item').text(formatDollar(amount)).fadeIn("slow");
                            });
                            $('.total_card_item').css("color", "#3f51b5");
                            $('.total_card_item').text(formatDollar(sum)).fadeIn("slow");

                            setTimeout(function () {
                                $("#thongbao").hide(200);
                                $('.total_card_item').css("color", "initial");
                            }, 2500);
                        }
                    }
                    else {
                        anchorLink.html("<i class='fa fa-times'></i>");
                        anchorLink.attr("disabled", true);
                        var _err = "Lỗi đã xảy ra: " + message;
                        console.log(_err);
                        //alert(_err);
                        $("#thongbao p").html(_err);
                        $("#thongbao").show(200);
                        setTimeout(function () {
                            $("#thongbao").hide(200);
                        }, 3000);
                    }
                    setTimeout(function () {
                        $("#thongbao").hide(200);
                    }, 3000);
                }
                else {
                    anchorLink.html("<i class='fa fa-times'></i>");
                    anchorLink.attr("disabled", true);
                    var _err = "Delete not success! Lỗi đã xảy ra: " + message;
                    console.log(_err);
                    $("#thongbao p").html(_err);
                    $("#thongbao").show(200);
                    setTimeout(function () {
                        $("#thongbao").hide(200);
                    }, 3000);
                }


            });
        });


        function formatDollar(num) {
            var p = num.toFixed(2).split(".");
            return p[0].split("").reverse().reduce(function (acc, num, i, orig) {
                return num === "-" ? acc : num + (i && !(i % 3) ? "," : "") + acc;
            }, "");
        }
        //====================================================End Comment ==================
        /* Send conttact*/
        $(document).on('click', '.btnsend_contact', function () {
            var fullname = $('.TextBoxHoTenContact').val();
            var email = $('.TextBoxEmailContact').val();
            var phone = $('.TextBoxPhoneContact').val();
            var message = $('.TextBoxNoiDungContact').val();
            var pid = $("input[name*='HiddenFieldpIdContact']").val();
            $('.why-choise #btnSentWait').fadeIn("slow");
            $('.btnsend_contact').attr("disabled", true);
            var has_empty = true;
            $('.why-choise .req').each(function () {
                var txt = $(this).val();
                if (txt === "") {
                    $(this).css("border-color", "red");
                    has_empty = false;
                }
                else {
                    $(this).css("border-color", "#d8d8d8");
                }
            });
            if (has_empty === false) {
                $('.why-choise #btnSentWait').fadeOut("slow");
                $('.why-choise #sencontact_error').html("Nhập vào mục yêu cầu có khung màu đỏ!");
                $('.why-choise #sencontact_error').fadeIn("slow");
                setTimeout(function () {
                    $('.why-choise #sencontact_error').fadeOut("slow");
                    $('.why-choise #sencontact_error').html("");
                    $('.btnsend_contact').attr("disabled", false);
                }, 5000);
                return false;
            }
            else {
                $('.btnsend_contact').attr("disabled", true);
                $('#btnSentWait').show(200);
                var data = {
                    fullname: fullname,
                    email: email,
                    phone: phone,
                    message: message,
                    pid: pid
                };
                $.post(window.location.protocol + "//" + window.location.host + '/getdatacontactform.html', data, function (result) {
                    if (result.trim() === "success") {
                        $('.why-choise .req').val('');
                        $('.why-choise .req').css("border-color", "#d8d8d8");
                        $('.why-choise #sencontact_success').show(200);
                        $('.why-choise #btnSentWait').hide(200);
                        setTimeout(function () {
                            $('.why-choise #sencontact_success').hide(200);
                            $('.btnsend_contact').attr("disabled", false);
                        }, 5000);
                    } else {
                        console.log("Error: " + result.trim());
                        $('.why-choise #sencontact_error').html("Có lỗi đã xảy ra! Không thực hiện được!");
                        $('.why-choise #sencontact_error').show(200);
                        $('.why-choise #btnSentWait').hide(200);
                        setTimeout(function () {
                            //$('#sencontact_error').hide(300);
                            $('.btnsend_contact').attr("disabled", false);
                        }, 5000);
                        //console.log("not success! " + result.trim());
                    }
                });
            }
        });
        /* End Send conttact*/
        /* Send foot*/
        $(".TextBoxHoTenfoot").focus(function () {
            $(this).css("border-color", "#d8d8d8");
        });
        $(".TextBoxHoTenfoot").blur(function () {
            if ($(this).val() === "" || $(this).val().length < 5) {
                $(this).css("border-color", "red");
            }
            else {
                $(this).css("border-color", "#d8d8d8");
            }
        });
        $(".TextBoxPhonefoot").focus(function () {
            $(this).css("border-color", "#d8d8d8");
        });
        $(".TextBoxPhonefoot").blur(function () {
            if ($(this).val() === "" || $(this).val().length < 9) {
                $(this).css("border-color", "red");
            }
            else {
                $(this).css("border-color", "#d8d8d8");
            }
        });
        //  $(".TextBoxNoiDungfoot").focus(function () {
        //      $(this).css("border-color", "#d8d8d8");
        //   });
        //   $(".TextBoxNoiDungfoot").blur(function () {
        //      var comment = $(this).val();
        //    if (comment === "" || comment.length < 5) {
        //       $(this).css("border-color", "red");
        //      }
        //     else {
        //        $(this).css("border-color", "#d8d8d8");
        //      }
        //   });
        $(document).on('click', '.btnsend_contactfoot', function () {
            var fullname = $('.TextBoxHoTenfoot').val();
            var email = $('.TextBoxEmailfoot').val();
            var phone = $('.TextBoxPhonefoot').val();
            var message = $('.TextBoxNoiDungfoot').val();
            var pid = $("input[name*='HiddenFieldpIdContact']").val();

            var has_empty = true;
            if (fullname === "" || fullname.length < 5) {
                has_empty = false;
                $('.TextBoxHoTenfoot').css("border-color", "red");
            }
            if (email === "" || testEmail.test(email) === false) {
                has_empty = false;
                $('.TextBoxEmailfoot').css("border-color", "red");
            }
            if (phone === "" || phone.length < 9) {
                has_empty = false;
                $('.TextBoxPhonefoot').css("border-color", "red");
            }
            //     if (message === "" || message.length < 5) {
            //      has_empty = false;
            //      $('.TextBoxNoiDungfoot').css("border-color", "red");
            //     }
            if (has_empty === false) {
                return false;
            }
            else {
                $('.btnsend_contactfoot').attr("disabled", true);
                $('.ps-form-us .show_dangky #btnSentWaitfoot').show(200);
                var data = {
                    fullname: fullname,
                    email: email,
                    phone: phone,
                    message: message,
                    pid: pid
                };
                $.post(window.location.protocol + "//" + window.location.host + '/getdatacontactform.html', data, function (result) {
                    if (result.trim() === "success") {
                        $('.TextBoxHoTenfoot').val('');
                        $('.TextBoxEmailfoot').val('');
                        $('.TextBoxPhonefoot').val('');
                        $('.TextBoxNoiDungfoot').val('');
                        $(".TextBoxHoTenfoot").css("border-color", "#d8d8d8");
                        $(".TextBoxEmailfoot").css("border-color", "#d8d8d8");
                        $(".TextBoxPhonefoot").css("border-color", "#d8d8d8");
                        // $(".TextBoxNoiDungfoot").css("border-color", "#d8d8d8");
                        $('.ps-form-us .show_dangky #sencontact_successfoot').show(200);
                        //console.log("success! " + result.trim());
                        //$('.btnsend_contact').attr("disabled", false);
                        $('.ps-form-us .show_dangky #btnSentWaitfoot').hide(200);
                        setTimeout(function () {
                            $('.ps-form-us .show_dangky #sencontact_successfoot').hide(200);
                            $('.ps-form-us .show_dangky .btnsend_contactfoot').attr("disabled", false);
                        }, 10000);
                    } else {
                        $('.ps-form-us .show_dangky #sencontact_errorfoot').html(result);
                        $('.ps-form-us .show_dangky #sencontact_errorfoot').show(200);
                        $('.ps-form-us .show_dangky .btnsend_contactfoot').attr("disabled", false);
                        $('.ps-form-us .show_dangky #btnSentWaitfoot').hide(200);
                        setTimeout(function () {
                            //$('#sencontact_error').hide(300);
                            $('.ps-form-us .show_dangky .btnsend_contactfoot').attr("disabled", false);
                        }, 10000);
                        //console.log("not success! " + result.trim());
                    }
                });
            }
        });
        /* End Send foot*/
        /* Send Book Now*/
        $(".TextBoxHoTenBookNow").focus(function () {
            $(this).css("border-color", "#d8d8d8");
        });
        $(".TextBoxHoTenBookNow").blur(function () {
            if ($(this).val() === "" || $(this).val().length < 5) {
                $(this).css("border-color", "red");
            }
            else {
                $(this).css("border-color", "#d8d8d8");
            }
        });
        $(".TextBoxEmailBookNow").focus(function () {
            $(this).css("border-color", "#d8d8d8");
        });
        $(".TextBoxEmailBookNow").blur(function () {
            var email = $(this).val();
            if (email === "" || testEmail.test(email) === false) {
                $(this).css("border-color", "red");
            }
            else {
                $(this).css("border-color", "#d8d8d8");
            }
        });
        $(".TextBoxPhoneBookNow").focus(function () {
            $(this).css("border-color", "#d8d8d8");
        });
        $(".TextBoxPhoneBookNow").blur(function () {
            if ($(this).val() === "" || $(this).val().length < 9) {
                $(this).css("border-color", "red");
            }
            else {
                $(this).css("border-color", "#d8d8d8");
            }
        });
        $(".TextBoxTieudeBookNow").focus(function () {
            $(this).css("border-color", "#d8d8d8");
        });
        $(".TextBoxTieudeBookNow").blur(function () {
            if ($(this).val() === "" || $(this).val().length < 9) {
                $(this).css("border-color", "red");
            }
            else {
                $(this).css("border-color", "#d8d8d8");
            }
        });
        $(".TextBoxNoiDungContact").focus(function () {
            $(this).css("border-color", "#d8d8d8");
        });
        $(".TextBoxNoiDungContact").blur(function () {
            var comment = $(this).val();
            if (comment === "" || comment.length < 25) {
                $(this).css("border-color", "red");
            }
            else {
                $(this).css("border-color", "#d8d8d8");
            }
        });
        $(document).on('click', '.btnsend_booknow', function () {
            var fullname = $('.TextBoxHoTenBookNow').val();
            var email = $('.TextBoxEmailBookNow').val();
            var phone = $('.TextBoxPhoneBookNow').val();
            var tieude = $('.TextBoxTieudeBookNow').val();
            var diachi = $('.TextBoxDiaChiBookNow').val();
            var soluong = $('.TextBoxSoLuongBookNow').val();
            var message = $('.TextBoxNoiDungBookNow').val();
            var pid = $("input[name*='HiddenFieldpIdContact']").val();

            var has_empty = true;
            if (fullname === "" || fullname.length < 5) {
                has_empty = false;
                $('.TextBoxHoTenBookNow').css("border-color", "red");
            }
            if (email === "" || testEmail.test(email) === false) {
                has_empty = false;
                $('.TextBoxEmailBookNow').css("border-color", "red");
            }
            if (phone === "" || phone.length < 9) {
                has_empty = false;
                $('.TextBoxPhoneBookNow').css("border-color", "red");
            }
            if (tieude === "" || tieude.length < 9) {
                has_empty = false;
                $('.TextBoxTieudeBookNow').css("border-color", "red");
            }
            if (message === "" || message.length < 25) {
                has_empty = false;
                $('.TextBoxNoiDungBookNow').css("border-color", "red");
            }
            if (has_empty === false) {
                return false;
            }
            else {
                $('.btnsend_booknow').attr("disabled", true);
                $('#btnSentWait').show(200);
                var data = {
                    fullname: fullname,
                    email: email,
                    phone: phone,
                    tieude: tieude,
                    diachi: diachi,
                    soluong: soluong,
                    message: message,
                    pid: pid
                };
                $.post(window.location.protocol + "//" + window.location.host + '/getdatabooknowform.html', data, function (result) {
                    if (result.trim() === "success") {
                        $('.TextBoxHoTenBookNow').val('');
                        $('.TextBoxEmailBookNow').val('');
                        $('.TextBoxPhoneBookNow').val('');
                        $('.TextBoxTieudeBookNow').val('');
                        $('.TextBoxDiaChiBookNow').val('');
                        $('.TextBoxSoLuongBookNow').val('');
                        $('.TextBoxNoiDungBookNow').val('');
                        $(".TextBoxHoTenBookNow").css("border-color", "#d8d8d8");
                        $(".TextBoxEmailBookNow").css("border-color", "#d8d8d8");
                        $(".TextBoxPhoneBookNow").css("border-color", "#d8d8d8");
                        $(".TextBoxTieudeBookNow").css("border-color", "#d8d8d8");
                        $(".TextBoxNoiDungBookNow").css("border-color", "#d8d8d8");
                        $('#sencontact_success').show(200);
                        //console.log("success! " + result.trim());
                        $('#btnSentWait').hide(200);
                        setTimeout(function () {
                            $('#sencontact_success').hide(200);
                            $('.btnsend_booknow').attr("disabled", false);
                        }, 10000);
                    } else {
                        $('#sencontact_error').html(result);
                        $('#sencontact_error').show(200);
                        $('.btnsend_booknow').attr("disabled", false);
                        $('#btnSentWait').hide(200);
                        setTimeout(function () {
                            //$('#sencontact_error').hide(300);
                            $('.btnsend_booknow').attr("disabled", false);
                        }, 10000);
                        //console.log("not success! " + result.trim());
                    }
                });
            }
        });
        /* End Send Book now*/
        //==================================================== Contact Form Home ==================
        $(".TextBoxDangKyHoTen").focus(function () {
            $(this).css("border-color", "#d8d8d8");
        });
        $(".TextBoxDangKyHoTen").blur(function () {
            if ($(this).val() === "") {
                $(this).css("border-color", "red");
            }
            else {
                $(this).css("border-color", "#d8d8d8");
            }
        });
        $(".TextBoxDangKyEmail").focus(function () {
            $(this).css("border-color", "#d8d8d8");
        });
        $(".TextBoxDangKyEmail").blur(function () {
            var email = $(this).val();
            if (email === "" || testEmail.test(email) === false) {
                $(this).css("border-color", "red");
            }
            else {
                $(this).css("border-color", "#d8d8d8");
            }
        });

        $(".TextBoxDangKyPhone").focus(function () {
            $(this).css("border-color", "#d8d8d8");
        });
        $(".TextBoxDangKyPhone").blur(function () {
            if ($(this).val() === "") {
                $(this).css("border-color", "red");
            }
            else {
                $(this).css("border-color", "#d8d8d8");
            }
        });
        $(".TextBoxDangKyAddress").focus(function () {
            $(this).css("border-color", "#d8d8d8");
        });
        $(".TextBoxDangKyAddress").blur(function () {
            if ($(this).val() === "") {
                $(this).css("border-color", "red");
            }
            else {
                $(this).css("border-color", "#d8d8d8");
            }
        });
        $(".DropDownListDangKyNhom").focus(function () {
            $(this).css("border-color", "#d8d8d8");
        });
        $(".DropDownListDangKyNhom").blur(function () {
            if ($(".DropDownListDangKyNhom option:selected").val() === "0") {
                $(".DropDownListDangKyNhom").css("border", "solid 1px red");
            }
            else {
                $(".DropDownListDangKyNhom").attr('style', 'background-color:none;');
            }
        });
        $(".TextBoxDangKyNoiDung").focus(function () {
            $(this).css("border-color", "#d8d8d8");
        });
        $(".TextBoxDangKyNoiDung").blur(function () {
            var comment = $(this).val();
            if (comment === "" || comment.length < 25) {
                $(this).css("border-color", "red");
            }
            else {
                $(this).css("border-color", "#d8d8d8");
            }
        });
        $(document).on('click', '.btnSendDangKyHome', function () {
            var fullname = $('.TextBoxDangKyHoTen').val();
            var email = $('.TextBoxDangKyEmail').val();
            var phone = $('.TextBoxDangKyPhone').val();
            var diachi = $('.TextBoxDangKyAddressHome').val();
            var txtchon = $('.DropDownListDangKyNhom').find('option:selected').text();
            //var nhom = $('.DropDownListDangKyNhom option:selected').val();
            var message = $('.TextBoxDangKyNoiDung').val();
            var has_empty = true;
            if (fullname === "" || fullname.length < 5) {
                has_empty = false;
                $(".TextBoxDangKyHoTen").css("border-color", "red");
            }
            if (email === "" || testEmail.test(email) === false) {
                has_empty = false;
                $(".TextBoxDangKyEmail").css("border-color", "red");
            }
            if (phone === "" || phone.length < 9) {
                has_empty = false;
                $(".TextBoxDangKyPhone").css("border-color", "red");
            }
            if (diachi === "" || diachi.length < 5) {
                has_empty = false;
                $(".TextBoxDangKyAddressHome").css("border-color", "red");
            }
            var chon = $('.DropDownListDangKyNhom').find('option:selected').val();
            if (chon === "0") {
                has_empty = false;
                $(".DropDownListDangKyNhom").css("border", "solid 1px red");
            }
            // alert(chon);
            if (message === "" || message.length < 25) {
                has_empty = false;
                $(".TextBoxDangKyNoiDung").css("border-color", "red");
            }
            if (has_empty === false) {
                return false;
            }
            else {
                $('.btnSendDangKyHome').attr("disabled", true);
                $('#btnSentWait').show(200);
                var data = {
                    fullname: fullname,
                    email: email,
                    message: message,
                    phone: phone,
                    diachi: diachi,
                    txtnhom: txtchon,
                    nhom: chon
                };
                $.post(window.location.protocol + "//" + window.location.host + '/getdatacontactformhome.html', data, function (result) {
                    if (result.trim() === "success") {
                        $('.TextBoxDangKyHoTen').val('');
                        $('.TextBoxDangKyEmail').val('');
                        $('.TextBoxDangKyPhone').val('');
                        $('.TextBoxDangKyAddressHome').val('');
                        $('.DropDownListDangKyNhom').val('0');
                        $('.TextBoxDangKyNoiDung').val('');
                        $(".TextBoxDangKyHoTen").css("border-color", "#d8d8d8");
                        $(".TextBoxDangKyEmail").css("border-color", "#d8d8d8");
                        $(".TextBoxDangKyPhone").css("border-color", "#d8d8d8");
                        $(".TextBoxDangKyAddressHome").css("border-color", "#d8d8d8");
                        $(".TextBoxDangKyNoiDung").css("border-color", "#d8d8d8");
                        $('#btnSentWait').hide(200);
                        $('#senComment_success').show(200);
                        setTimeout(function () {
                            $('#senComment_success').hide(300);
                            $('.btnSendDangKyHome').attr("disabled", false);
                        }, 10000);
                        //console.log("success! " + result.trim());
                    } else {
                        $('#senComment_error').html(result);
                        $('#btnSentWait').hide(200);
                        $('#senComment_error').show(200);
                        setTimeout(function () {
                            $('.btnSendDangKyHome').attr("disabled", false);
                        }, 10000);
                        //console.log("not success! " + result.trim());
                    }
                });
            }
        });
        //====================================================End Contcat ==================
        /* Send Popup*/
        $(".TextBoxHoTenPupup").focus(function () {
            $(this).css("border-color", "#d8d8d8");
        });
        $(".TextBoxHoTenPopup").blur(function () {
            if ($(this).val() === "" || $(this).val().length < 5) {
                $(this).css("border-color", "red");
            }
            else {
                $(this).css("border-color", "#d8d8d8");
            }
        });
        $(".TextBoxEmailPopup").focus(function () {
            $(this).css("border-color", "#d8d8d8");
        });
        $(".TextBoxEmailPopup").blur(function () {
            var email = $(this).val();
            if (email === "" || testEmail.test(email) === false) {
                $(this).css("border-color", "red");
            }
            else {
                $(this).css("border-color", "#d8d8d8");
            }
        });
        $(".TextBoxPhonePopup").focus(function () {
            $(this).css("border-color", "#d8d8d8");
        });
        $(".TextBoxPhonePopup").blur(function () {
            if ($(this).val() === "" || $(this).val().length < 9) {
                $(this).css("border-color", "red");
            }
            else {
                $(this).css("border-color", "#d8d8d8");
            }
        });

        $(document).on('click', '.btnsend_Popup', function () {
            var fullname = $('.TextBoxHoTenPopup').val();
            var email = $('.TextBoxEmailPopup').val();
            var email = $('.TextBoxEmailPopup').val();
            var phone = $('.TextBoxPhonePopup').val();
            //     var tieude = $('.TextBoxTitlePopup').val();
            var message = $('.TextBoxNoiDungPopup').val();
            var pid = "0"; //$("input[name*='HiddenFieldpIdPopup']").val();

            var has_empty = true;
            if (fullname === "" || fullname.length < 5) {
                has_empty = false;
                $('.TextBoxHoTenPopup').css("border-color", "red");
            }
            if (email === "" || testEmail.test(email) === false) {
                has_empty = false;
                $('.TextBoxEmailPopup').css("border-color", "red");
            }
            if (phone === "" || phone.length < 9) {
                has_empty = false;
                $('.TextBoxPhonePopup').css("border-color", "red");
            }
            //     if (tieude === "" || tieude.length < 9) {
            //       has_empty = false;
            //     $('.TextBoxTitlePopup').css("border-color", "red");
            //     }
            //    if (message === "" || message.length < 5) {
            //      has_empty = false;
            //     $('.TextBoxNoiDungPopup').css("border-color", "red");
            //    }
            if (has_empty === false) {
                return false;
            }
            else {
                $('.btnsend_Popup').attr("disabled", true);
                $('#btnSentWait').show(200);
                var data = {
                    fullname: fullname,
                    email: email,
                    phone: phone,
                    //       tieude: tieude,
                    message: message,
                    pid: pid
                };
                $.post(window.location.protocol + "//" + window.location.host + '/getdatapopupform.html', data, function (result) {
                    if (result.trim() === "success") {
                        $('.TextBoxHoTenPopup').val('');
                        $('.TextBoxEmailPopup').val('');
                        $('.TextBoxPhonePopup').val('');
                        //$('.TextBoxTitlePopup').val('');
                        $('.TextBoxNoiDungPopup').val('');
                        $(".TextBoxHoTenPopup").css("border-color", "#d8d8d8");
                        $(".TextBoxEmailPopup").css("border-color", "#d8d8d8");
                        $(".TextBoxPhonePopup").css("border-color", "#d8d8d8");
                        //$(".TextBoxNoiDungPopup").css("border-color", "#d8d8d8");
                        $('#sencontact_success').show(500);
                        //console.log("success! " + result.trim());
                        $('#btnSentWait').hide(200);
                        $('#RegPopup .box-col').hide();
                        $('#RegPopup .box-note #sencontact_success').show();
                        $("#RegPopup .modal-dialog .modal-content").addClass("box-no");
                        setTimeout(function () {
                            $('#sencontact_success').hide(500);
                            $('#RegPopup .box-col').show();
                            $('.btnsend_Popup').attr("disabled", false);
                            $("#RegPopup .modal-dialog .modal-content").removeClass("box-no");
                            $('#RegPopup').modal('hide');
                        }, 20000);
                    } else {
                        $('#sencontact_error').html(result);
                        $('#sencontact_error').show(200);
                        $('.btnsend_Popup').attr("disabled", false);
                        $('#btnSentWait').hide(200);
                        setTimeout(function () {
                            $('.btnsend_Popup').attr("disabled", false);
                        }, 20000);

                        //console.log("not success! " + result.trim());
                    }
                });
            }
        });
        /* End Send Popup*/
        //====================================================End Popup ==================
        /* Send Popup*/
        $(document).on('click', '.btnsend_SendHome', function () {
            var fullname = $('.TextBoxHoTenSendHome').val();
            var email = $('.TextBoxEmailSendHome').val();
            var phone = $('.TextBoxPhoneSendHome').val();
            var tieude = $('.TextBoxTitleSendHome').val();
            var message = $('.TextBoxNoiDungSendHome').val();
            $('.contact-home__item #btnSentWait').fadeIn("slow");
            $('.btnsend_SendHome').attr("disabled", true);
            var has_empty = true;
            $('.contact-home__item .req').each(function () {
                var txt = $(this).val();
                if (txt === "") {
                    $(this).css("border-color", "red");
                    has_empty = false;
                }
                else {
                    $(this).css("border-color", "#d8d8d8");
                }
            });
            if (has_empty === false) {
                $('.contact-home__item #btnSentWait').fadeOut("slow");
                $('.contact-home__item #sencontact_error').html("Nhập vào mục yêu cầu có khung màu đỏ!");
                $('.contact-home__item #sencontact_error').fadeIn("slow");
                setTimeout(function () {
                    $('.contact-home__item #sencontact_error').fadeOut("slow");
                    $('.contact-home__item #sencontact_error').html("");
                    $('.contact-home__item .btnsend_SendHome').attr("disabled", false);
                }, 5000);
                return false;
            }
            else {
                //$('.btnsend_SendHome').attr("disabled", true);
                //$('#btnSentWait').show(200);
                var data = {
                    fullname: fullname,
                    email: email,
                    phone: phone,
                    //address: address,
                    tieude: tieude,
                    message: message,
                    memid: memid
                };
                $.post(window.location.protocol + "//" + window.location.host + '/getdatapopupform.html', data, function (result) {
                    if (result.trim() === "success") {
                        $('.contact-home__item .req').val('');
                        $('.contact-home__item .req').css("border-color", "#d8d8d8");
                        $('.contact-home__item #sencontact_success').show(200);
                        //console.log("success! " + result.trim());
                        $('.contact-home__item #btnSentWait').hide(200);
                        setTimeout(function () {
                            $('.contact-home__item #sencontact_success').hide(200);
                            $('.contact-home__item .btnsend_SendHome').attr("disabled", false);
                        }, 8000);
                    } else {
                        console.log("Error: " + result.trim());
                        $('.contact-home__item #sencontact_error').html("Có lỗi đã xảy ra! Không thực hiện được!");
                        $('.contact-home__item #sencontact_error').show(200);
                        $('.contact-home__item #btnSentWait').hide(200);
                        setTimeout(function () {
                            $('.btnsend_SendHome').attr("disabled", false);
                        }, 8000);
                        //console.log("not success! " + result.trim());
                    }
                });
            }
        });
        //==================Viewed====================
        $(document).on('click', '.LinkButtonOpenViewed', function () {
            $(".footer_swish").fadeOut("slow");
            $("#PanelSend").fadeIn("slow");
            $('html, body').animate({
                scrollTop: $("#sendform_swish").offset().top - 150
            }, 1000);
        });
        $(document).on('click', '.LinkButtonSendViewed', function () {
            var link = $(this);
            var has_empty = true;
            $('#btnSentWait').hide(200);
            $('#sendform_swish .required').each(function () {
                var txt = $(this).closest("div").find("input").val();
                if (txt === "") {
                    $(this).closest("div").find("input").css("border-color", "red");
                    has_empty = false;
                }
                else {
                    $(this).closest("div").find("input").css("border-color", "#d8d8d8");
                }
            });
            if (has_empty === false) {
                console.log("Nhập vào Form Yêu cầu!");
                return false;
            }
            else {
                link.attr("disabled", true);
                $('#btnSentWait').show(200);
                var fullname = $('.TextBoxHoTen').val();
                var email = $('.TextBoxEmail').val();
                var phone = $('.TextBoxDienThoai').val();
                var address = $(".TextBoxDiaChi").val();
                var message = $('.TextBoxNoiDung').val();
                var memid = $("input[name*='HiddenFieldMemId']").val();
                var cid = $("input[name*='HiddenFieldcIds']").val();
                if (memid === '' || typeof memid === 'undefined') {
                    memid = "0";
                }
                if (message === '' || typeof message === 'undefined') {
                    message = "";
                }
                var data = {
                    fullname: fullname,
                    email: email,
                    phone: phone,
                    address: address,
                    message: message,
                    memid: memid,
                    cid: cid,
                    parentid: "3"
                };
                $.post(window.location.protocol + "//" + window.location.host + '/getdatafavoriteform.html', data, function (result) {
                    if (result.trim() === "success") {
                        $('#sendform_swish .required').each(function () {
                            $(this).closest("div").find("input").val("");
                            $(this).closest("div").find("input").css("border-color", "#d8d8d8");
                        });
                        $(".thongbao").html("");
                        $('#PanelList').fadeOut("slow");
                        $('#PanelSend').fadeOut("slow");
                        $('#PanelKetThuc').fadeIn("slow");
                        $('#btnSentWait').hide(200);
                        setTimeout(function () {
                            link.attr("disabled", false);
                            $('html, body').animate({
                                scrollTop: $("#PanelKetThuc").offset().top - 150
                            }, 1000);
                        }, 5000);
                    } else if (result.trim() === "success_error_sentmail") {
                        $('#sendform_swish .required').each(function () {
                            $(this).closest("div").find("input").val("");
                            $(this).closest("div").find("input").css("border-color", "#d8d8d8");
                        });
                        $(".thongbao").html("Hệ thống đã tiếp nhận. Rất tiếc đang lỗi gửi Email nên chưa gửi đơn cho Quý khách được.");
                        $('#PanelList').fadeOut("slow");
                        $('#PanelSend').fadeOut("slow");
                        $('#PanelKetThuc').fadeIn("slow");
                        $('#btnSentWait').hide(200);
                        setTimeout(function () {
                            link.attr("disabled", false);
                            $('html, body').animate({
                                scrollTop: $("#PanelKetThuc").offset().top - 150
                            }, 1000);
                        }, 5000);
                    } else if (result.trim() === "success_not_sentmail") {
                        $('#sendform_swish .required').each(function () {
                            $(this).closest("div").find("input").val("");
                            $(this).closest("div").find("input").css("border-color", "#d8d8d8");
                        });
                        $(".thongbao").html("Hệ thống đã tiếp nhận. Chúng tôi sẽ sớm liên hệ Quý khách.");
                        $('#PanelList').fadeOut("slow");
                        $('#PanelSend').fadeOut("slow");
                        $('#PanelKetThuc').fadeIn("slow");
                        $('#btnSentWait').hide(200);
                        setTimeout(function () {
                            link.attr("disabled", false);
                            $('html, body').animate({
                                scrollTop: $("#PanelKetThuc").offset().top - 150
                            }, 1000);
                        }, 5000);
                    }
                    else {
                        $('#btnSentWait').hide(200);
                        console.log("Error: " + result);
                        $('#sencontact_error').html("Hệ thống đang lỗi. Rất tiếc không lưu được thông tin của Quý khách. Xin thông cảm!");
                        $('#sencontact_error').fadeIn("slow");
                        setTimeout(function () {
                            link.attr("disabled", false);
                        }, 5000);
                        console.log("Not success! " + result.trim());
                    }
                });

            }
        });
        //==================Wish====================
        $(document).on('click', '.LinkButtonOpenWish', function () {
            $(".footer_swish").fadeOut("slow");
            $("#PanelSend").fadeIn("slow");
            $('html, body').animate({
                scrollTop: $("#sendform_swish").offset().top - 150
            }, 1000);
        });
        $(document).on('click', '.LinkButtonSendWish', function () {
            var link = $(this);
            var has_empty = true;
            $('#btnSentWait').hide(200);
            $('#sendform_swish .required').each(function () {
                var txt = $(this).closest("div").find("input").val();
                if (txt === "") {
                    $(this).closest("div").find("input").css("border-color", "red");
                    has_empty = false;
                }
                else {
                    $(this).closest("div").find("input").css("border-color", "#d8d8d8");
                }
            });
            if (has_empty === false) {
                console.log("Nhập vào Form Yêu cầu!");
                return false;
            }
            else {
                link.attr("disabled", true);
                $('#btnSentWait').show(200);
                var fullname = $('.TextBoxHoTen').val();
                var email = $('.TextBoxEmail').val();
                var phone = $('.TextBoxDienThoai').val();
                var address = $(".TextBoxDiaChi").val();
                var message = $('.TextBoxNoiDung').val();
                var memid = $("input[name*='HiddenFieldMemId']").val();
                var cid = $("input[name*='HiddenFieldcIds']").val();
                if (memid === '' || typeof memid === 'undefined') {
                    memid = "0";
                }
                if (message === '' || typeof message === 'undefined') {
                    message = "";
                }
                var data = {
                    fullname: fullname,
                    email: email,
                    phone: phone,
                    address: address,
                    message: message,
                    memid: memid,
                    cid: cid,
                    parentid: "4"
                };
                $.post(window.location.protocol + "//" + window.location.host + '/getdatafavoriteform.html', data, function (result) {
                    if (result.trim() === "success") {
                        $('#sendform_swish .required').each(function () {
                            $(this).closest("div").find("input").val("");
                            $(this).closest("div").find("input").css("border-color", "#d8d8d8");
                        });
                        $(".thongbao").html("");
                        $('#PanelList').fadeOut("slow");
                        $('#PanelSend').fadeOut("slow");
                        $('#PanelKetThuc').fadeIn("slow");
                        $('#btnSentWait').hide(200);
                        setTimeout(function () {
                            link.attr("disabled", false);
                            $('html, body').animate({
                                scrollTop: $("#PanelKetThuc").offset().top - 150
                            }, 1000);
                        }, 5000);
                    }else if (result.trim() === "success_error_sentmail") {
                        $('#sendform_swish .required').each(function () {
                            $(this).closest("div").find("input").val("");
                            $(this).closest("div").find("input").css("border-color", "#d8d8d8");
                        });
                        $(".thongbao").html("Hệ thống đã tiếp nhận. Rất tiếc đang lỗi gửi Email nên chưa gửi đơn cho Quý khách được.");
                        $('#PanelList').fadeOut("slow");
                        $('#PanelSend').fadeOut("slow");
                        $('#PanelKetThuc').fadeIn("slow");
                        $('#btnSentWait').hide(200);
                        setTimeout(function () {
                            link.attr("disabled", false);
                            $('html, body').animate({
                                scrollTop: $("#PanelKetThuc").offset().top - 150
                            }, 1000);
                        }, 5000);
                    } else if (result.trim() === "success_not_sentmail") {
                        $('#sendform_swish .required').each(function () {
                            $(this).closest("div").find("input").val("");
                            $(this).closest("div").find("input").css("border-color", "#d8d8d8");
                        });
                        $(".thongbao").html("Hệ thống đã tiếp nhận. Chúng tôi sẽ sớm liên hệ Quý khách.");
                        $('#PanelList').fadeOut("slow");
                        $('#PanelSend').fadeOut("slow");
                        $('#PanelKetThuc').fadeIn("slow");
                        $('#btnSentWait').hide(200);
                        setTimeout(function () {
                            link.attr("disabled", false);
                            $('html, body').animate({
                                scrollTop: $("#PanelKetThuc").offset().top - 150
                            }, 1000);
                        }, 5000);
                    }
                    else {
                        $('#btnSentWait').hide(200);
                        console.log("Error: " + result);
                        $('#sencontact_error').html("Hệ thống đang lỗi. Rất tiếc không lưu được thông tin của Quý khách. Xin thông cảm!");
                        $('#sencontact_error').fadeIn("slow");
                        setTimeout(function () {
                            link.attr("disabled", false);
                        }, 5000);
                        console.log("Not success! " + result.trim());
                    }
                });

            }
        });
        $('.fancybox').fancybox({
            prevEffect: 'none',
            nextEffect: 'none',

            closeBtn: false,
            arrows: false,
            nextClick: true,

            autoCenter: true,

            helpers: {
                thumbs: {
                    width: 75,
                    height: 75
                }
            },
            afterShow: function () {
                $('.zoomContainer').remove();
                $('img.fancybox-image').elevateZoom({
                    zoomType: "inner",
                    cursor: "crosshair",
                    zoomWindowFadeIn: 500,
                    zoomWindowFadeOut: 750
                });
            },
            afterClose: function () {
                $('.zoomContainer').remove();
            }
        });

        $(document).on('click', '.product-image .product-img-thumb a', function () {
            var image = $(this).data('image');
            $(this).closest('.product-image').find('.product-full img.preview_img').attr('src', image);
            return false;
        });
        $(document).on('click', '.adprobook, .adprobook2', function () {
            //var sectionID = $(this).attr('data-id');
            var title = $(this).attr('data-title');
            var curentUrl = $(this).attr('data-href');
            $("#loadViewPro").load(curentUrl);
            $(".bs-example-modal-lg").find('.modal-header > .modal-title').text(title);
            $('.bs-example-modal-lg').modal();
        });
        $(document).on('click', '.adbook', function () {
            var sectionID = $(this).attr('data-id');
            var title = $(this).attr('data-title');
            $("#loadViewPro").load(location.href.substring(0, location.href.lastIndexOf('/')) + "/send-book/" + sectionID + ".aspx");
            $(".bs-example-modal-lg").find('.modal-header > h3').text(title);
            $('.bs-example-modal-lg').modal();
        });
        if ($('table').length > 0) {
            $(".center_column table").addClass('table table-bordered');
        }
        if ($('.products-style8').length > 0) {
            $('.products-style8').each(function () {
                $(this).find(".nav-tab2 li a").on('click', function (event) {
                    event.preventDefault();
                    $(this).parents('.products-style8').find(".nav-tab2 li").removeClass('active');
                    $(this).addClass('active');
                    var z_url = $(this).find('img').attr("src");
                    var z_Name = $(this).find('img').attr("alt");
                    $(this).parents('.products-style8').find(".product .product-container .product-thumb a img").attr("src", z_url.replace("Thumb_", ""));
                    $(this).parents('.products-style8').find(".tab-container .tab-panel .name-color").innerHTML(z_Name);
                });
            });
        }
        if ($('.box-center-home').length > 0) {
            $('.video').click(function () { this.paused ? this.play() : this.pause(); });
        }
        if ($('.partner').length > 0) {
            $('.category-page').find('.section-band-logo').hide();
        }

        //Poppup video
        if ($('.video-btn').length > 0) {
            $('.video-btn').fancybox();
        }
        //Video Light Box
        if ($('.btn-video').length > 0) {
            $('.btn-video').fancybox({
                openEffect: 'none',
                closeEffect: 'none',
                prevEffect: 'none',
                nextEffect: 'none',

                arrows: false,
                helpers: {
                    media: {},
                    buttons: {}
                }
            });
        }
        //Light Box
        if ($('.fancybox').length > 0) {
            $('.fancybox').fancybox({
                beforeShow: function () {
                    this.title = $(this.element).data("caption");
                },
                fullScreen: {
                    requestOnStart: true
                }
            }).attr('data-fancybox', 'gallery');
        }
        // Open form search in header 10
        $(document).on('click', '.form-search .icon', function () {
            $(this).closest('.form-search').find('.form-search-inner').fadeIn(600);
            $(this).closest('.form-search').find('.form-search-inner .input-serach input').focus();
        });
        /* Close form search in header 10*/
        $(document).on('click', '*', function (e) {
            var container = $(".form-search");
            var icon = $(".form-search .icon");
            if (!container.is(e.target) && container.has(e.target).length === 0 && !icon.is(e.target) && icon.has(e.target).length === 0) {
                container.find('.form-search-inner').fadeOut(600);
            }
        });

        //SLIDE FULL SCREEN
        var slideSection = $(".slide-fullscreen .item-slide");
        slideSection.each(function () {
            if ($(this).attr("data-background")) {
                $(this).css("background-image", "url(" + $(this).data("background") + ")");
            }
        });
        //
        $(document).on('click', '.block-tab-category .bar', function () {
            $(this).toggleClass('active');
            $(this).closest('.block-tab-category').find('.tab-cat').toggleClass('show');
        });
        //testimonial-carousel
        if ($('.testimonial-carousel').length > 0) {
            var owl = $('.testimonial-carousel');
            owl.owlCarousel(
                {
                    margin: 30,
                    autoplay: false,
                    dots: false,
                    loop: true,
                    responsive: {
                        0: {
                            items: 1
                        },
                        480: {
                            items: 1
                        },
                        600: {
                            items: 2
                        },
                        1000: {
                            items: 3
                        }
                    },
                    nav: true,
                    smartSpeed: 1000,
                    navText: ['<i class="fa fa-angle-left"></i>', '<i class="fa fa-angle-right"></i>']
                }
            );
            owl.trigger('next.owl.carousel');
            owl.on('changed.owl.carousel', function (event) {
                owl.find('.owl-item.active').removeClass('item-center');
                var caption = owl.find('.owl-item.active').first().next().find('.info').html();
                owl.closest('.block-testimonials,.block-testimonials2').find('.testimonial-caption').html(caption).addClass('zoomIn animated').one('webkitAnimationEnd mozAnimationEnd MSAnimationEnd oanimationend animationend', function () {
                    $(this).removeClass('zoomIn animated');
                });
                setTimeout(function () {
                    owl.find('.owl-item.active').first().next().addClass('item-center');
                    owl.find('.owl-item.active').first().next().addClass('zoomIn animated').one('webkitAnimationEnd mozAnimationEnd MSAnimationEnd oanimationend animationend', function () {
                        $(this).removeClass('zoomIn animated');
                    });
                }, 100);
            });

        }
        if ($('.testimonial-carousel2').length > 0) {
            var owl1 = $('.testimonial-carousel2');
            owl1.owlCarousel(
                {
                    margin: 0,
                    autoplay: true,
                    dots: false,
                    loop: true,
                    items: 3,
                    nav: false,
                    smartSpeed: 1000,
                    navText: ['<i class="fa fa-angle-left"></i>', '<i class="fa fa-angle-right"></i>']
                }
            );
            owl1.trigger('next.owl.carousel');
            owl1.on('changed.owl.carousel', function (event) {
                owl1.find('.owl-item.active').removeClass('item-center');
                var caption = owl.find('.owl-item.active').first().next().find('.info').html();
                owl1.closest('.block-testimonials,.block-testimonials2').find('.testimonial-caption').html(caption).addClass('fadeIn animated').one('webkitAnimationEnd mozAnimationEnd MSAnimationEnd oanimationend animationend', function () {
                    $(this).removeClass('fadeIn animated');
                });
                setTimeout(function () {
                    owl1.find('.owl-item.active').first().next().addClass('item-center');
                    owl1.find('.owl-item.active').first().next().addClass('fadeIn animated').one('webkitAnimationEnd mozAnimationEnd MSAnimationEnd oanimationend animationend', function () {
                        $(this).removeClass('fadeIn animated');
                    });
                }, 100);
            });
        }
        $('.list-brand').bxSlider({
            mode: 'vertical',
            minSlides: 4,
            maxSlides: 3,
            pager: false,
            useCSS: false
        });
        if ($('.box-product-carousel').length > 0) {
            var owl2 = $('.box-product-carousel');
            owl2.owlCarousel(
                {
                    margin: 0,
                    autoplay: true,
                    dots: false,
                    loop: false,
                    items: 1,
                    nav: true,
                    smartSpeed: 1000,
                    navText: ['<i class="fa fa-angle-left"></i>', '<i class="fa fa-angle-right"></i>']
                }
            );
        }
        //
        $(document).on('click', '.block-top-brands2 .list-brands a', function () {
            var tab = $(this).attr('href');
            $(this).closest('.list-brands').find('a.tab-nav').each(function () {
                $(this).removeClass('active');
            });
            $(this).addClass('active');
            $(this).closest('.block-top-brands2').find('.brand-products .tab-panel').each(function () {
                $(this).removeClass('active');
            });
            $(tab).addClass('active');
            return false;
        });
    });
    $(window).load(function () {
        if ($('.list-photo').length > 0) {
            $('.list-photo').masonry({
                "itemSelector": ".item",
                "columnWidth": ".grid-sizer"
            });
        }

    });

    $(document).ready(function () {
        // Get media - with autoplay disabled (audio or video)
        if ($('video').length) {
            var media = $('video').not("[autoplay='autoplay']");
            var tolerancePixel = 40;

            function checkMedia() {
                // Get current browser top and bottom
                var scrollTop = $(window).scrollTop() + tolerancePixel;
                var scrollBottom = $(window).scrollTop() + $(window).height() - tolerancePixel;
                media.each(function (index, el) {
                    var yTopMedia = $(this).offset().top;
                    var yBottomMedia = $(this).height() + yTopMedia;

                    if (scrollTop < yBottomMedia && scrollBottom > yTopMedia) { //view explaination in `In brief` section above
                        $(this).get(0).play();
                    } else {
                        $(this).get(0).pause();
                    }
                });
            }
            $(document).on('scroll', checkMedia);
        }

    });
    $(document).on('click', '.video-player ul.nav-tabs li', function () {
        $('.video-player ul.nav-tabs li').removeClass('active');
        $(this).addClass('active');
    });
    /* ---------------------------------------------
     Scripts resize
     --------------------------------------------- */
    $(window).resize(function () {
        // auto width megamenu
        auto_width_megamenu();
        // Remove menu ontop
        remove_menu_ontop();
        // resize top menu
        resizeTopmenu();
        js_height_full();
        rep_menu();
        Product_slide();
    });
    /* ---------------------------------------------
     Scripts scroll
     --------------------------------------------- */
    $(window).scroll(function () {
        resizeTopmenu();
        rep_menu();
        Product_slide();
        /* Show hide scrolltop button */
        if ($(window).scrollTop() === 0) {
            $('.scroll-top').stop(false, true).fadeOut(600);
        } else {
            $('.scroll-top').stop(false, true).fadeIn(600);
        }
        /* Main menu on top */
        var h = $(window).scrollTop();
        var max_h = $('#header').height() + $('#top-banner').height();
        var width = $(window).width();
        if (width > 991) {
            if (h > 45) {
                $('#header').addClass('optop').removeClass('noptop');
            } else {
                $('#header').removeClass('optop').addClass('noptop');
            }
            if (h > (max_h + vertical_menu_height) - 50) {
                // fix top menu
                $('#nav-top-menu').addClass('nav-ontop');
                $('#header').find('.vertical-menu-content').hide();
                //$('#nav-top-menu').find('.title').removeClass('active');
                // add cart box on top menu
                //$('.btn-cart .cart-block').appendTo('#shopping-cart-box-ontop .shopping-cart-box-ontop-content');
                //$('#shopping-cart-box-ontop').fadeIn();
                $('#user-info-top').appendTo('#user-info-opntop');
                //$('#header .header-search-box .form-inline').appendTo('#form-search-opntop');
            } else {
                $('#nav-top-menu').removeClass('nav-ontop');
                if ($('body').hasClass('home')) {
                    $('#nav-top-menu').find('.vertical-menu-content').removeAttr('style');
                    if (width > 1024) {
                        $('#nav-top-menu').find('.vertical-menu-content').show();
                        $('.home #header').find('.vertical-menu-content').show();
                    } else {
                        $('#nav-top-menu').find('.vertical-menu-content').hide();
                    }
                    $('#nav-top-menu').find('.vertical-menu-content').removeAttr('style');
                }
                ///
                //$('#shopping-cart-box-ontop .cart-block').appendTo('.btn-cart');
                //$('#shopping-cart-box-ontop').fadeOut();
                $('#user-info-opntop #user-info-top').appendTo('.top-header .container');
                //$('#form-search-opntop .form-inline').appendTo('#header .header-search-box');
            }
        }
    });
    var vertical_menu_height = $('#box-vertical-megamenus .box-vertical-megamenus').innerHeight();
    /**==============================
    ***  Auto width megamenu
    ===============================**/
    function auto_width_megamenu() {
        var full_width = parseInt($('.container').innerWidth());
        //full_width = $( document ).width();
        var menu_width = parseInt($('.vertical-menu-content').actual('width'));
        $('.vertical-menu-content').find('.vertical-dropdown-menu').each(function () {
            $(this).width((full_width - menu_width) - 2);
        });
    }
    /**==============================
    ***  Remove menu on top
    ===============================**/
    function remove_menu_ontop() {
        var width = parseInt($(window).width());
        if (width < 768) {
            $('#nav-top-menu').removeClass('nav-ontop');
            if ($('body').hasClass('home')) {
                if (width > 1024)
                    $('#nav-top-menu').find('.vertical-menu-content').show();
                else {
                    $('#nav-top-menu').find('.vertical-menu-content').hide();
                }
            }
            ///
            $('#shopping-cart-box-ontop .cart-block').appendTo('#cart-block');
            $('#shopping-cart-box-ontop').fadeOut();
            $('#user-info-opntop #user-info-top').appendTo('.top-header .container');
            $('#form-search-opntop .form-inline').appendTo('#header .header-search-box');
            //left right
            $('#left_column .left-module').appendTo('#bottom_column');
        }
        else {
            $('#bottom_column .left-module').appendTo('#left_column');
        }
    }

    //if (".mega-menu".length > 0)
    //{
    //    var width = parseInt($(window).width());
    //    if (width < 768) {
    //        $(".dropdown-toggle").attr("data-toggle", "dropdown");
    //    }
    //}

    /* Top menu*/
    function scrollCompensate() {
        var inner = document.createElement('p');
        inner.style.width = "100%";
        inner.style.height = "200px";
        var outer = document.createElement('div');
        outer.style.position = "absolute";
        outer.style.top = "0px";
        outer.style.left = "0px";
        outer.style.visibility = "hidden";
        outer.style.width = "200px";
        outer.style.height = "150px";
        outer.style.overflow = "hidden";
        outer.appendChild(inner);
        document.body.appendChild(outer);
        var w1 = parseInt(inner.offsetWidth);
        outer.style.overflow = 'scroll';
        var w2 = parseInt(inner.offsetWidth);
        if (w1 === w2) w2 = outer.clientWidth;
        document.body.removeChild(outer);
        return (w1 - w2);
    }

    function resizeTopmenu() {
        if ($(window).width() + scrollCompensate() >= 768) {
            var main_menu_w = $('#main-menu .navbar').innerWidth();

            if ($('#main-menu').hasClass('menu-option9') || $('#main-menu').hasClass('menu-option10') || $('#main-menu').hasClass('menu-option11') || $('#main-menu').hasClass('menu-option14')) {
                return false;
            }

            $("#main-menu ul.mega_dropdown").each(function () {
                var menu_width = $(this).innerWidth();
                var offset_left = $(this).position().left;
                if (menu_width > main_menu_w) {
                    $(this).css('width', main_menu_w + 'px');
                    $(this).css('left', '0');
                } else {
                    if ((menu_width + offset_left) > main_menu_w) {
                        var t = main_menu_w - menu_width;
                        var left = parseInt((t / 2));
                        $(this).css('left', left);
                    }
                }
            });
        }

        if ($(window).width() + scrollCompensate() < 1025) {
            $("#main-menu li.dropdown:not(.active) >a").attr('data-toggle', 'dropdown');
        } else {
            $("#main-menu li.dropdown >a").removeAttr('data-toggle');
        }
    }
    function js_swithlist() {
        //strFavouriteProductId
        (function ($) {
            if ($('.strFavouriteProductId').length > 0) {
                var productid = $(".strFavouriteProductId").html();
                if (productid.length > 0) {
                    var arr = productid.split(',');
                    $('body .addtowishlist').each(function () {
                        var anchorLink = $(this);
                        var sectionID = anchorLink.attr('data-id');
                        for (var i = 0; i < arr.length; i++) {
                            var aid = arr[i].trim();
                            if (aid === sectionID) {
                                if (anchorLink.hasClass('like')) {
                                    anchorLink.removeClass("like");
                                    anchorLink.addClass("liked");
                                }
                                else {
                                    anchorLink.addClass("liked");
                                }
                                break;
                            }
                            //console.log("success pid:" + sectionID + " - arr: " + aid);
                        }
                    });
                }
            }
        })(jQuery);
        (function ($) {
            if ($('.strShoppingCartProductId').length > 0) {
                var productid = $(".strShoppingCartProductId").html();
                if (productid.length > 0) {
                    var arr = productid.split(',');
                    $('body .addtocartlist').each(function () {
                        var anchorLink = $(this);
                        var sectionID = anchorLink.attr('data-id');
                        for (var i = 0; i < arr.length; i++) {
                            var aid = arr[i].trim();
                            if (aid === sectionID) {
                                if (anchorLink.hasClass('like')) {
                                    anchorLink.removeClass("like");
                                    anchorLink.addClass("liked");
                                }
                                else {
                                    anchorLink.addClass("liked");
                                }
                            }
                            //console.log("success pid:" + sectionID + " - arr: " + aid);
                        }
                    });
                }
            }
        })(jQuery);
    }
    /* ---------------------------------------------
     Height Full
     --------------------------------------------- */
    function js_height_full() {
        (function ($) {
            var heightSlide = $(window).outerHeight();
            $(".full-height").css("height", heightSlide);
        })(jQuery);
    }
    function rep_menu() {
        if ($(window).width() < 768) {
            $('#left_column .block').appendTo('#right_column');
        }
        else {
            $('#right_column .block').appendTo('#left_column');
        }
    }
    function Product_slide() {
        var width = $(window).width();
        if (width < 768) {
            $('#sliderproduct').addClass('box-product-carousel');
        }
        else {
            $('#sliderproduct').removeClass('box-product-carousel');
        }
    }
    function Product_select() {
        if ($(window).width() < 991) {
            $('.view-product-list').find('.content-header').prepend("<div class=\"filter-mb\">Bộ lọc<span><i class=\"fa fa-sliders\" aria-hidden=\"true\"></i></span></div>");
            $('.filter-mb').click(function () {
                $('.content-header .content-header-left').toggle();
            });
            $('.layered-filter-brand .filter-brand .layered_subtitle').click(function () {
                $(this).toggleClass('group-layered');
                $(this).parent().find('.check-box-list').toggleClass('active');//.slideToggle('medium')
                return false;
            });
        }
    }
})(jQuery); // End of use strict

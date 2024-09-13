@extends('Layouts.layout')

@section('header-content')
    @include('Layouts.header')
@endsection

@section('footer-content')
    @include('Layouts.footer')
@endsection

@section('main-content')
    <!--breadcrumbs area start-->
    <div class="breadcrumbs_area">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <div class="breadcrumb_content">
                        <h1>HTX Núi Ba Vì</h1>
                        <ul>
                            <li><a href="/index.html">Trang chủ</a></li>
                            <li><a href="/blog.html">Blog</a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!--breadcrumbs area end-->

    <!--blog body area start-->
    <div class="blog_details">
        <div class="container">
            <div class="row">
                <div class="col-lg-9 col-md-12">
                    <!--blog grid area start-->
                    <div class="blog_wrapper blog_wrapper_details">
                        <article class="single_blog">
                            <figure>
                                <div class="post_header">
                                    <h3 class="post_title">{{ $blog_detail->title }}</h3>
                                    <div class="blog_meta">
                                        <p>Đăng bởi: <a href="#">admin</a> / Ngày:  <a href="#"></a> {{ date('m-d-Y', strtotime($blog_detail->created_at)) }} / Danh mục : <a href="#">blog</a></p>
                                    </div>
                                </div>
                                <div class="blog_thumb">
                                    <a href="#"><img src="/documents/website/{{ $blog_detail->image }}" alt=""></a>
                                </div>
                                <figcaption class="blog_content">
                                    <div class="post_content">
                                        {!! $blog_detail->content !!}
                                    </div>
                                    <div class="entry_content">
                                        <div class="post_meta">
                                            <span>Tags: </span>
                                            <span><a href="#">blogs</a></span>
                                        </div>

                                        <div class="social_sharing">
                                            <p>share this post:</p>
                                            <ul>
                                                <li><a href="#" title="facebook"><i class="fa fa-facebook"></i></a></li>
                                                <li><a href="#" title="twitter"><i class="fa fa-twitter"></i></a></li>
                                                <li><a href="#" title="pinterest"><i class="fa fa-pinterest"></i></a></li>
                                                <li><a href="#" title="google+"><i class="fa fa-google-plus"></i></a></li>
                                                <li><a href="#" title="linkedin"><i class="fa fa-linkedin"></i></a></li>
                                            </ul>
                                        </div>
                                    </div>
                                </figcaption>
                            </figure>
                        </article>
                        <div class="related_posts">
                            <h3>Bài viết khác</h3>
                            <div class="row">
                                @foreach($blog_other as $key => $blog)
                                    <div class="col-lg-4 col-md-4 col-sm-6">
                                        <article class="single_related">
                                            <figure>
                                                <div class="related_thumb">
                                                    <a href="/blog-details/{{ $blog->id }}.html"><img src="{{ is_file('documents/website/' . $blog->image) ? '/documents/website/' . $blog->image : '/assets/img/blog/blog1.jpg' }}" alt=""></a>
                                                </div>
                                                <figcaption class="related_content">
                                                    <h4><a href="#">{{ $blog->title }}</a></h4>
                                                    <div class="blog_meta">
                                                        <span class="author">By : <a href="#">admin</a> / </span>
                                                        <span class="meta_date"> {{date('m/d/Y', strtotime($blog->created_at))}}	</span>
                                                    </div>
                                                </figcaption>
                                            </figure>
                                        </article>
                                    </div>
                                @endforeach
                            </div>
                        </div>
{{--                        <div class="comments_box">--}}
{{--                            <h3>3 Comments	</h3>--}}
{{--                            <div class="comment_list">--}}
{{--                                <div class="comment_thumb">--}}
{{--                                    <img src="assets/img/blog/comment3.png.jpg" alt="">--}}
{{--                                </div>--}}
{{--                                <div class="comment_content">--}}
{{--                                    <div class="comment_meta">--}}
{{--                                        <h5><a href="#">Admin</a></h5>--}}
{{--                                        <span>October 16, 2018 at 1:38 am</span>--}}
{{--                                    </div>--}}
{{--                                    <p>But I must explain to you how all this mistaken idea of denouncing pleasure</p>--}}
{{--                                    <div class="comment_reply">--}}
{{--                                        <a href="#">Reply</a>--}}
{{--                                    </div>--}}
{{--                                </div>--}}

{{--                            </div>--}}
{{--                            <div class="comment_list list_two">--}}
{{--                                <div class="comment_thumb">--}}
{{--                                    <img src="assets/img/blog/comment3.png.jpg" alt="">--}}
{{--                                </div>--}}
{{--                                <div class="comment_content">--}}
{{--                                    <div class="comment_meta">--}}
{{--                                        <h5><a href="#">Demo</a></h5>--}}
{{--                                        <span>October 16, 2018 at 1:38 am</span>--}}
{{--                                    </div>--}}
{{--                                    <p>Quisque semper nunc vitae erat pellentesque, ac placerat arcu consectetur</p>--}}
{{--                                    <div class="comment_reply">--}}
{{--                                        <a href="#">Reply</a>--}}
{{--                                    </div>--}}
{{--                                </div>--}}
{{--                            </div>--}}
{{--                            <div class="comment_list">--}}
{{--                                <div class="comment_thumb">--}}
{{--                                    <img src="assets/img/blog/comment3.png.jpg" alt="">--}}
{{--                                </div>--}}
{{--                                <div class="comment_content">--}}
{{--                                    <div class="comment_meta">--}}
{{--                                        <h5><a href="#">Admin</a></h5>--}}
{{--                                        <span>October 16, 2018 at 1:38 am</span>--}}
{{--                                    </div>--}}
{{--                                    <p>Quisque orci nibh, porta vitae sagittis sit amet, vehicula vel mauris. Aenean at</p>--}}
{{--                                    <div class="comment_reply">--}}
{{--                                        <a href="#">Reply</a>--}}
{{--                                    </div>--}}
{{--                                </div>--}}
{{--                            </div>--}}
{{--                        </div>--}}
{{--                        <div class="comments_form">--}}
{{--                            <h3>Leave a Reply </h3>--}}
{{--                            <p>Your email address will not be published. Required fields are marked *</p>--}}
{{--                            <form action="#">--}}
{{--                                <div class="row">--}}
{{--                                    <div class="col-12">--}}
{{--                                        <label for="review_comment">Comment </label>--}}
{{--                                        <textarea name="comment" id="review_comment" ></textarea>--}}
{{--                                    </div>--}}
{{--                                    <div class="col-lg-4 col-md-4">--}}
{{--                                        <label for="author">Name</label>--}}
{{--                                        <input id="author"  type="text">--}}

{{--                                    </div>--}}
{{--                                    <div class="col-lg-4 col-md-4">--}}
{{--                                        <label for="email">Email </label>--}}
{{--                                        <input id="email"  type="text">--}}
{{--                                    </div>--}}
{{--                                    <div class="col-lg-4 col-md-4">--}}
{{--                                        <label for="website">Website </label>--}}
{{--                                        <input id="website"  type="text">--}}
{{--                                    </div>--}}
{{--                                </div>--}}
{{--                                <button class="button" type="submit">Post Comment</button>--}}
{{--                            </form>--}}
{{--                        </div>--}}
                    </div>
                    <!--blog grid area start-->
                </div>
                <div class="col-lg-3 col-md-12">
                    <div class="blog_sidebar_widget">
                        <div class="widget_list widget_search">
                            <div class="widget_title">
                                <h3>Tìm kiếm</h3>
                            </div>
                            <form method="POST" action="/blog.html">
                                <input type="hidden" name="_token" value="{{ csrf_token() }}" />
                                <input placeholder="Search..." type="text" name="text" required>
                                <button type="submit">Tìm kiếm</button>
                            </form>
                        </div>
{{--                        <div class="widget_list comments">--}}
{{--                            <div class="widget_title">--}}
{{--                                <h3>Recent Comments</h3>--}}
{{--                            </div>--}}
{{--                            <div class="post_wrapper">--}}
{{--                                <div class="post_thumb">--}}
{{--                                    <a href="blog-details.html"><img src="assets/img/blog/comment2.png.jpg" alt=""></a>--}}
{{--                                </div>--}}
{{--                                <div class="post_info">--}}
{{--                                    <span> <a href="#">demo</a> says:</span>--}}
{{--                                    <a href="blog-details.html">Quisque semper nunc</a>--}}
{{--                                </div>--}}
{{--                            </div>--}}
{{--                            <div class="post_wrapper">--}}
{{--                                <div class="post_thumb">--}}
{{--                                    <a href="blog-details.html"><img src="assets/img/blog/comment2.png.jpg" alt=""></a>--}}
{{--                                </div>--}}
{{--                                <div class="post_info">--}}
{{--                                    <span><a href="#">admin</a> says:</span>--}}
{{--                                    <a href="blog-details.html">Quisque orci porta...</a>--}}
{{--                                </div>--}}
{{--                            </div>--}}
{{--                            <div class="post_wrapper">--}}
{{--                                <div class="post_thumb">--}}
{{--                                    <a href="blog-details.html"><img src="assets/img/blog/comment2.png.jpg" alt=""></a>--}}
{{--                                </div>--}}
{{--                                <div class="post_info">--}}
{{--                                    <span><a href="#">demo</a> says:</span>--}}
{{--                                    <a href="blog-details.html">Quisque semper nunc</a>--}}
{{--                                </div>--}}
{{--                            </div>--}}
{{--                        </div>--}}
                        <div class="widget_list widget_post">
                            <div class="widget_title">
                                <h3>Bài viết mới</h3>
                            </div>
                            @foreach($new_blogs as $key => $blog)
                                <div class="post_wrapper">
                                    <div class="post_thumb">
                                        <a href="/blog-details/{{ $blog->id}}.html"><img src="{{is_file('documents/website/' . $blog->image) ? '/documents/website/' . $blog->image : '/assets/img/blog/blog1.jpg'}}" alt=""></a>
                                    </div>
                                    <div class="post_info">
                                        <h4><a href="/blog-details/{{ $blog->id}}.html">{{ $blog->title }}</a></h4>
                                        <span>{{ date('Y-m-d', strtotime($blog->created_at)) }}</span>
                                    </div>
                                </div>
                            @endforeach
                        </div>
{{--                        <div class="widget_list widget_categories">--}}
{{--                            <div class="widget_title">--}}
{{--                                <h3>Categories</h3>--}}
{{--                            </div>--}}
{{--                            <ul>--}}
{{--                                <li><a href="#">Audio</a></li>--}}
{{--                                <li><a href="#">Company</a></li>--}}
{{--                                <li><a href="#">Gallery</a></li>--}}
{{--                                <li><a href="#">Image</a></li>--}}
{{--                                <li><a href="#">Other</a></li>--}}
{{--                                <li><a href="#">Travel</a></li>--}}
{{--                            </ul>--}}
{{--                        </div>--}}
{{--                        <div class="widget_list widget_tag">--}}
{{--                            <div class="widget_title">--}}
{{--                                <h3>Tag products</h3>--}}
{{--                            </div>--}}
{{--                            <div class="tag_widget">--}}
{{--                                <ul>--}}
{{--                                    <li><a href="#">asian</a></li>--}}
{{--                                    <li><a href="#">brown</a></li>--}}
{{--                                    <li><a href="#">euro</a></li>--}}
{{--                                </ul>--}}
{{--                            </div>--}}
{{--                        </div>--}}
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!--blog section area end-->
@endsection
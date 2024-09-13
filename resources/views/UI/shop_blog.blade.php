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
                        <h1>Bài viết giới thiệu sản phẩm</h1>
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

    <!--blog area start-->
    <div class="blog_page_section blog_reverse mt-70">
        <div class="container">
            <div class="row">
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
                        <div class="widget_list widget_post">
                            <div class="widget_title">
                                <h3>Bài viết mới nhất</h3>
                            </div>
                            @foreach($new_blogs as $key => $blog)
                            <div class="post_wrapper">
                                @if(is_file("documents/website/" . $blog->image))
                                    <div class="post_thumb">
                                        <a href="/blog-details/{{ $blog->id }}.html"><img src="documents/website/{{ $blog->image }}" alt=""></a>
                                    </div>
                                @else
                                    <div class="post_thumb">
                                        <a href="/blog-details/{{ $blog->id }}.html"><img src="assets/img/blog/blog1.jpg" alt=""></a>
                                    </div>
                                @endif
                                <div class="post_info">
                                    <h4><a href="/blog-details/{{ $blog->id}}.html">{{ $blog->title }}</a></h4>
                                    <span>{{ date('Y-m-d', strtotime($blog->created_at)) }}</span>
                                </div>
                            </div>
                            @endforeach
                        </div>
{{--                        <div class="widget_list widget_categories">--}}
{{--                            <div class="widget_title">--}}
{{--                                <h3>Danh mục</h3>--}}
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
                    </div>
                </div>
                <div class="col-lg-9 col-md-12">
                    <div class="blog_wrapper blog_wrapper_sidebar">
                        <div class="row">
                            @foreach($blogs as $key => $blog)
                                <div class="col-lg-4 col-md-4 col-sm-6">
                                    <article class="single_blog">
                                        <figure>
                                            @if(is_file("documents/website/" . $blog->image))
                                            <div class="blog_thumb">
                                                <a href="/blog-details/{{ $blog->id }}.html"><img src="documents/website/{{ $blog->image }}" alt=""></a>
                                            </div>
                                            @else
                                                <div class="blog_thumb">
                                                    <a href="/blog-details/{{ $blog->id }}.html"><img src="assets/img/blog/blog1.jpg" alt=""></a>
                                                </div>
                                            @endif
                                            <figcaption class="blog_content">
                                                <h4 class="post_title"><a href="/blog-details/{{ $blog->id }}.html">{{$blog->title }}</a></h4>
                                                <div class="articles_date">
                                                    <p>{{ date('d/m/Y', strtotime($blog->created_at)) }} | <a href="#">Blog</a> </p>
                                                </div>
                                            </figcaption>
                                        </figure>
                                    </article>
                                </div>
                            @endforeach
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!--blog area end-->

    <!--blog pagination area start-->
    <div class="blog_pagination">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <div class="pagination">
                        <ul>
                            @for($i = $blogs->currentPage() > 1 ? $blogs->currentPage() - 1 : 1;$i <= $blogs->currentPage() + 1;$i++)
                                @if($i > $blogs->lastPage())
                                    @continue
                                @endif
                                <li {!! $blogs->currentPage() == $i ? "class='current'" : '' !!}><a href="?page={{$i}}">{{ $i }}</a></li>
                            @endfor
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!--blog pagination area end-->


@endsection
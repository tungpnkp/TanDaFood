@extends('Layouts.layout')

@section('header-content')
    @include('Layouts.header')
@endsection

@section('footer-content')
    @include('Layouts.footer')
@endsection

@section('main-content')
    <br>
    <hr>
    <!--testimonial area start-->
    <div class="faq-client-say-area">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 col-md-12">
                    <div class="faq-client_title">
                        <h2>CHÍNH SÁCH BẢO MẬT THÔNG TIN
                        </h2>
                    </div>
                    <h4>CHÍNH SÁCH BẢO MẬT THÔNG TIN KHÁCH HÀNG:
                    </h4>
                    <p>
                        <strong>1. Mục đích và phạm vi thu thập:</strong>
                        <br>
                        - Việc thu thập dữ liệu chủ yếu trên các website nhãn hàng của Sơn Tinh Food bao gồm: Họ tên, số điện thoại, địa chỉ của khách hàng. Đây là các thông tin mà ban quản trị website cần khách hàng cung cấp để liên hệ, tư vấn hỗ trợ, xác nhận và gửi hàng cho quý khách hàng.
                        <br>
                        - Trong quá trình giao dịch thanh toán tại, chúng tôi chỉ lưu giữ thông tin chi tiết về đơn hàng đã thanh toán của thành viên, các thông tin về số tài khoản ngân hàng của thành viên sẽ không được lưu giữ.
                        <br>
                        - Thời gian giao nhận hàng, theo thỏa thuận giữa nhà cung cấp và khách hàng vào thời điểm phù hợp nhất.
                        <br>
                    </p>
                    <p>
                        <strong>2. Phạm vi sử dụng thông tin:
                        </strong>
                        <br>
                        Sơn Tinh Food sử dụng thông tin thành viên cung cấp để:
                        <br>
                        Cung cấp các dịch vụ đến thành viên;
                        <br>
                        - Gửi các thông báo về các hoạt động trao đổi thông tin giữa thành viên và các website nhãn hàng tương ứng;
                        <br>
                        - Ngăn ngừa các hoạt động phá hủy tài khoản người dùng của thành viên hoặc các hoạt động giả mạo thành viên;
                        <br>
                        - Liên lạc và giải quyết với thành viên trong những trường hợp đặc biệt.
                        <br>
                        - Không sử dụng thông tin cá nhân của thành viên ngoài mục đích xác nhận và liên hệ có liên quan đến giao dịch tại các website nhãn hàng.
                        <br>
                        - Trong trường hợp có yêu cầu của pháp luật: Công ty có trách nhiệm hợp tác cung cấp thông tin cá nhân thành viên khi có yêu cầu từ cơ quan tư pháp bao gồm: Viện kiểm sát, tòa án, cơ quan công an điều tra liên quan đến hành vi vi phạm pháp luật nào đó của khách hàng. Ngoài ra, không ai có quyền xâm phạm vào thông tin cá nhân của thành viên.
                    </p>
                    <p>
                        <strong>3. Thời gian lưu trữ thông tin:
                        </strong>
                        <br>
                        Dữ liệu cá nhân của thành viên sẽ được lưu trữ cho đến khi có yêu cầu hủy bỏ. Còn lại trong mọi trường hợp thông tin cá nhân thành viên sẽ được bảo mật.
                    </p>
                    <p>
                        <strong>4. Địa chỉ của đơn vị thu thập và quản lý thông tin cá nhân:
                        </strong> <br>
                        Văn phòng Điều hành: Cửa hàng Sơn Tinh Food
                        <br>
                        Địa chỉ:
                        <br>
                        Điện thoại:
                    </p>
                    <p>
                        <trong>5. Phương tiện và công dụng để người dùng tiếp cận và chỉnh sửa dữ liệu cá nhân của mình.
                        </trong><br>
                        - Thành viên có quyền tự kiểm tra, cập nhật, điều chỉnh hoặc hủy bỏ thông tin cá nhân của mình bằng cách yêu cầu trực tiếp trên website mỗi nhãn hàng thực hiện việc này.
                        <br>
                        - Thành viên có quyền gửi khiếu nại về người bán đến Ban quản trị của website. Khi tiếp nhận những phản hồi này, sẽ xác nhận lại thông tin, trường hợp đúng như phản ánh của thành viên tùy theo mức độ, ban quản trị website mỗi nhãn hàng sẽ có những biện pháp xử lý kịp thời phù hợp tương ứng.
                    </p>
                    <p>
                        <strong>6. Cam kết bảo mật thông tin cá nhân khách hàng:
                        </strong>
                        <br>
                        - Thông tin cá nhân của thành viên trên hệ thống website nhãn hàng được Sơn Tinh Food cam kết bảo mật tuyệt đối theo chính sách bảo vệ thông tin cá nhân của mỗi website nhãn hàng đó. Việc thu thập và sử dụng thông tin của mỗi thành viên chỉ được thực hiện khi có sự đồng ý của khách hàng đó trừ những trường hợp pháp luật có quy định khác.
                        <br>
                        - Không sử dụng, không chuyển giao, cung cấp hay tiết lộ cho bên thứ 3 nào về thông tin cá nhân của thành viên khi không có sự cho phép đồng ý từ thành viên.
                        <br>
                        - Trong trường hợp máy chủ lưu trữ thông tin bị hacker tấn công dẫn đến mất mát dữ liệu cá nhân thành viên, ban quản trị website mỗi nhãn hàn sẽ có trách nhiệm thông báo vụ việc cho cơ quan chức năng điều tra xử lý kịp thời và thông báo cho thành viên được biết.
                        <br>
                        - Bảo mật tuyệt đối mọi thông tin giao dịch trực tuyến của thành viên bao gồm thông tin hóa đơn kế toán chứng từ số hóa trên các website nhãn hàng.
                        <br>
                        - Ban quản trị các website nhãn hàng yêu cầu các cá nhân khi đăng ký/mua hàng là Thành viên, phải cung cấp đầy đủ thông tin cá nhân có liên quan như: Họ và tên, địa chỉ liên lạc, điện thoại…., và chịu trách nhiệm về tính pháp lý của những thông tin trên. Ban quản trị website các nhãn hàng không chịu trách nhiệm cũng như không giải quyết mọi khiếu nại có liên quan đến quyền lợi của thành viên đó nếu xét thấy tất cả thông tin cá nhân của thành viên đó cung cấp khi đăng ký ban đầu là không chính xác.
                    </p>
                    <p>BQT Sơn Tinh Food</p>
                </div>
            </div>
        </div>
    </div>

@endsection
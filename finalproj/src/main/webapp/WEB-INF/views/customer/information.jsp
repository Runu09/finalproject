<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="../inc/top.jsp"%>

<style>
.icon_wrap.type01{
	padding: 10px 0;
	border: 1px solid #ddd;
}

.icon_wrap {
    position: relative;
}

.mar_b40 {
    margin-bottom: 40px !important;
}

.icon_wrap > ol {
    display: table;
    width: 100%;
}

.icon_wrap > ol > li:first-child {
    border: none;
}

.icon_wrap.col5 > ol > li {
    width: 20%;
}
.icon_wrap > ol > li {
    display: table-cell;
    float: inherit;
    border-left: 1px solid #ddd;
}
.icon_wrap > ol > li {
    padding: 0 10px;
}
.icon_wrap > ol > li, .icon_wrap > dl, .icon_wrap > div {
    position: relative;
    float: left;
    text-align: center;
    box-sizing: border-box;
}

.icon_wrap.col5 > ol > li {
    width: 20%;
}
.icon_wrap > ol > li {
    display: table-cell;
    float: inherit;
    border-left: 1px solid #ddd;
}
.icon_wrap > ol > li {
    padding: 0 10px;
}
.icon_wrap > ol > li, .icon_wrap > dl, .icon_wrap > div {
    position: relative;
    float: left;
    text-align: center;
    box-sizing: border-box;
}

ol {
    display: block;
    list-style-type: decimal;
    margin-block-start: 1em;
    margin-block-end: 1em;
    margin-inline-start: 0px;
    margin-inline-end: 0px;
    padding-inline-start: 40px;
}

.icon_wrap > ol > li .label {
    display: inline-block;
    position: absolute;
    top: 0;
    left: 20px;
    width: 47px;
    height: 47px;
    border-radius: 50%;
    text-align: center;
    color: #555;
    font-size: 18px;
    font-weight: bold;
    font-family: 'latofont';
    line-height: 47px;
    background: #f0f0f0;
}

.icon_wrap.type01 ol li .icoset_m {
    margin: 30px 0 5px;
}

.icoset_m {
    width: 84px;
    height: 76px;
}

.icoset_m, .icoset_s {
    display: inline-block;
    content: '';
    background-repeat: no-repeat;
}

.icon_wrap > ol > li > .txt {
    font-size: 18px;
    line-height: 1.3;
    color: #222;
    text-align: center;
}

.icoset_m.booking.ico_info_01 {
    background-position: 0 -140px;
}

.icoset_m.booking.ico_info_02 {
    background-position: -84px -140px;
}

.icoset_m.booking.ico_info_03 {
    background-position: -168px -140px;
}

.icoset_m.booking.ico_info_04 {
    background-position: -252px -140px;
}

.icoset_m.booking.ico_info_05 {
    background-position: -336px -140px;
}
</style>

<body>

<!-- breadcrumb start -->
<section class="breadcrumb-section no-bg pt-0" id="block"
	style="width: 100%;">
	<div class="breadcrumb-content overlay-black">
		<div>
			<h2>이용 안내</h2>
		</div>
	</div>
	<div class="title-breadcrumb">OnAir</div>
</section>
<!-- breadcrumb end -->


<!-- section start-->
<section class="small-section bg-inner" data-sticky_parent>
    <div class="container">
        <div class="row">
            <div class="col-lg-3">
                <div class="pro_sticky_info" data-sticky_column>
                    <div class="faq-tab">
                        <ul class="nav nav-tabs" id="top-tab" role="tablist">
                            <li class="nav-item">
                            	<a data-bs-toggle="tab" class="nav-link" href="#항공권 예약">항공권 예약</a>
                            </li>
                            <li class="nav-item">
                            	<a data-bs-toggle="tab" class="nav-link" href="#항공권 변경">항공권 변경</a>
                            </li>
                            <li class="nav-item">
                            	<a data-bs-toggle="tab" class="nav-link" href="#항공권 취소&환불">항공권 취소&환불</a>
                            </li>
                            <li class="nav-item">
                            	<a data-bs-toggle="tab" class="nav-link" href="#운임 안내">운임 안내</a>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
            <div class="col-lg-9">
                <div class="product_img_scroll" data-sticky_column>
                    <div class="faq-content tab-content" id="top-tabContent">
                        <div class="tab-pane fade show active" id="항공권 예약">
                            <div>
                                <div class="card">
                                    <div class="card-header">
                                        <h5>
                                            온라인 항공권 예약
                                        </h5>
                                    </div>
                                    <div class="card-body">
                                        <div class="icon_wrap type01 col5 mar_b40"> 
											<ol> 
												<li> 
													<span class="label">01</span> 
													<span class="icoset_m booking ico_info_01">
														<img alt="여정선택" src="../assets/images/여정선택.png">
													</span> 
													<p class="txt">여정 선택</p> 
												</li> 
												<li> 
													<span class="label">02</span> 
													<span class="icoset_m booking ico_info_02">
														<img alt="항공편 선택" src="../assets/images/항공편 선택.png">
													</span> 
													<p class="txt">항공편 선택</p> 
												</li> 
												<li> 
													<span class="label">03</span> 
													<span class="icoset_m booking ico_info_03">
														<img alt="탑승정보 입력" src="../assets/images/탑승정보 입력.png">
													</span> 
													<p class="txt">탑승정보 입력</p> 
												</li> 
												<li> 
													<span class="label">04</span> 
													<span class="icoset_m booking ico_info_04">
														<img alt="좌석배정/결제" src="../assets/images/좌석배정&결제.png">
													</span> 
													<p class="txt">좌석배정/결제</p> 
												</li> 
												<li> 
													<span class="label">05</span> 
													<span class="icoset_m booking ico_info_05">
														<img alt="예약완료" src="../assets/images/예약완료.png">
													</span> 
													<p class="txt">예약완료</p> 
												</li> 
											</ol>
										</div>
                                    </div>
                                </div>
                                <div class="card">
                                    <div class="card-header">
                                        <h5>
                                            Section 1.10.32 of "de Finibus Bonorum et Malorum", written by Cicero in
                                            45 BC
                                        </h5>
                                    </div>
                                    <div class="card-body">
                                        Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium
                                        doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore
                                        veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim
                                        ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia
                                        consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque
                                        porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur,
                                        adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et
                                        dolore magnam aliquam quaerat voluptatem.
                                    </div>
                                </div>
                                <div class="card">
                                    <div class="card-header">
                                        <h5>
                                            1914 translation by H. Rackham
                                        </h5>
                                    </div>
                                    <div class="card-body">
                                        But I must explain to you how all this mistaken idea of denouncing pleasure
                                        and praising pain was born and I will give you a complete account of the
                                        system, and expound the actual teachings of the great explorer of the truth,
                                        the master-builder of human happiness. No one rejects, dislikes, or avoids
                                        pleasure itself, because it is pleasure, but because those who do not know
                                        how to pursue pleasure rationally encounter consequences that are extremely
                                        painful. Nor again is there anyone who loves or pursues or desires to obtain
                                        pain of itself, because it is pain, but because occasionally circumstances
                                        occur in which toil and pain can procure him some great pleasure.
                                    </div>
                                </div>
                                <div class="card">
                                    <div class="card-header">
                                        <h5>
                                            Section 1.10.33 of "de Finibus Bonorum et Malorum", written by Cicero in
                                            45 BC
                                        </h5>
                                    </div>
                                    <div class="card-body">
                                        At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis
                                        praesentium voluptatum deleniti atque corrupti quos dolores et quas
                                        molestias excepturi sint occaecati cupiditate non provident, similique sunt
                                        in culpa qui officia deserunt mollitia animi, id est laborum et dolorum
                                        fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero
                                        tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus
                                        id quod maxime placeat facere possimus,
                                    </div>
                                </div>
                                <div class="card">
                                    <div class="card-header">
                                        <h5>
                                            Section 1.10.32 of "de Finibus Bonorum et Malorum", written by Cicero in
                                            45 BC
                                        </h5>
                                    </div>
                                    <div class="card-body">
                                        Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium
                                        doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore
                                        veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim
                                        ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia
                                        consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque
                                        porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur,
                                        adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et
                                        dolore magnam aliquam quaerat voluptatem.
                                    </div>
                                </div>
                                <div class="card">
                                    <div class="card-header">
                                        <h5>
                                            1914 translation by H. Rackham
                                        </h5>
                                    </div>
                                    <div class="card-body">
                                        But I must explain to you how all this mistaken idea of denouncing pleasure
                                        and praising pain was born and I will give you a complete account of the
                                        system, and expound the actual teachings of the great explorer of the truth,
                                        the master-builder of human happiness. No one rejects, dislikes, or avoids
                                        pleasure itself, because it is pleasure, but because those who do not know
                                        how to pursue pleasure rationally encounter consequences that are extremely
                                        painful. Nor again is there anyone who loves or pursues or desires to obtain
                                        pain of itself, because it is pain, but because occasionally circumstances
                                        occur in which toil and pain can procure him some great pleasure.
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="tab-pane fade" id="항공권 변경">
                            <div>
                                <div class="card">
                                    <div class="card-header">
                                        <h5>
                                            The standard Lorem Ipsum passage, used since the 1500s
                                        </h5>
                                    </div>
                                    <div class="card-body">
                                        Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod
                                        tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
                                        quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
                                        consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
                                        cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat
                                        non proident, sunt in culpa qui officia deserunt mollit anim id est laborum
                                    </div>
                                </div>
                                <div class="card">
                                    <div class="card-header">
                                        <h5>
                                            Section 1.10.32 of "de Finibus Bonorum et Malorum", written by Cicero in
                                            45 BC
                                        </h5>
                                    </div>
                                    <div class="card-body">
                                        Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium
                                        doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore
                                        veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim
                                        ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia
                                        consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque
                                        porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur,
                                        adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et
                                        dolore magnam aliquam quaerat voluptatem.
                                    </div>
                                </div>
                                <div class="card">
                                    <div class="card-header">
                                        <h5>
                                            1914 translation by H. Rackham
                                        </h5>
                                    </div>
                                    <div class="card-body">
                                        But I must explain to you how all this mistaken idea of denouncing pleasure
                                        and praising pain was born and I will give you a complete account of the
                                        system, and expound the actual teachings of the great explorer of the truth,
                                        the master-builder of human happiness. No one rejects, dislikes, or avoids
                                        pleasure itself, because it is pleasure, but because those who do not know
                                        how to pursue pleasure rationally encounter consequences that are extremely
                                        painful. Nor again is there anyone who loves or pursues or desires to obtain
                                        pain of itself, because it is pain, but because occasionally circumstances
                                        occur in which toil and pain can procure him some great pleasure.
                                    </div>
                                </div>
                                <div class="card">
                                    <div class="card-header">
                                        <h5>
                                            Section 1.10.33 of "de Finibus Bonorum et Malorum", written by Cicero in
                                            45 BC
                                        </h5>
                                    </div>
                                    <div class="card-body">
                                        At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis
                                        praesentium voluptatum deleniti atque corrupti quos dolores et quas
                                        molestias excepturi sint occaecati cupiditate non provident, similique sunt
                                        in culpa qui officia deserunt mollitia animi, id est laborum et dolorum
                                        fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero
                                        tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus
                                        id quod maxime placeat facere possimus,
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="tab-pane fade" id="항공권 취소&환불">
                            <div>
                                <div class="card">
                                    <div class="card-header">
                                        <h5>
                                            The standard Lorem Ipsum passage, used since the 1500s
                                        </h5>
                                    </div>
                                    <div class="card-body">
                                        Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod
                                        tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
                                        quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
                                        consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
                                        cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat
                                        non proident, sunt in culpa qui officia deserunt mollit anim id est laborum
                                    </div>
                                </div>
                                <div class="card">
                                    <div class="card-header">
                                        <h5>
                                            Section 1.10.32 of "de Finibus Bonorum et Malorum", written by Cicero in
                                            45 BC
                                        </h5>
                                    </div>
                                    <div class="card-body">
                                        Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium
                                        doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore
                                        veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim
                                        ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia
                                        consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque
                                        porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur,
                                        adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et
                                        dolore magnam aliquam quaerat voluptatem.
                                    </div>
                                </div>
                                <div class="card">
                                    <div class="card-header">
                                        <h5>
                                            1914 translation by H. Rackham
                                        </h5>
                                    </div>
                                    <div class="card-body">
                                        But I must explain to you how all this mistaken idea of denouncing pleasure
                                        and praising pain was born and I will give you a complete account of the
                                        system, and expound the actual teachings of the great explorer of the truth,
                                        the master-builder of human happiness. No one rejects, dislikes, or avoids
                                        pleasure itself, because it is pleasure, but because those who do not know
                                        how to pursue pleasure rationally encounter consequences that are extremely
                                        painful. Nor again is there anyone who loves or pursues or desires to obtain
                                        pain of itself, because it is pain, but because occasionally circumstances
                                        occur in which toil and pain can procure him some great pleasure.
                                    </div>
                                </div>
                                <div class="card">
                                    <div class="card-header">
                                        <h5>
                                            Section 1.10.33 of "de Finibus Bonorum et Malorum", written by Cicero in
                                            45 BC
                                        </h5>
                                    </div>
                                    <div class="card-body">
                                        At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis
                                        praesentium voluptatum deleniti atque corrupti quos dolores et quas
                                        molestias excepturi sint occaecati cupiditate non provident, similique sunt
                                        in culpa qui officia deserunt mollitia animi, id est laborum et dolorum
                                        fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero
                                        tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus
                                        id quod maxime placeat facere possimus,
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="tab-pane fade" id="운임 안내">
                            <div>
                                <div class="card">
                                    <div class="card-header">
                                        <h5>
                                            The standard Lorem Ipsum passage, used since the 1500s
                                        </h5>
                                    </div>
                                    <div class="card-body">
                                        Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod
                                        tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
                                        quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
                                        consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
                                        cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat
                                        non proident, sunt in culpa qui officia deserunt mollit anim id est laborum
                                    </div>
                                </div>
                                <div class="card">
                                    <div class="card-header">
                                        <h5>
                                            Section 1.10.32 of "de Finibus Bonorum et Malorum", written by Cicero in
                                            45 BC
                                        </h5>
                                    </div>
                                    <div class="card-body">
                                        Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium
                                        doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore
                                        veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim
                                        ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia
                                        consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque
                                        porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur,
                                        adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et
                                        dolore magnam aliquam quaerat voluptatem.
                                    </div>
                                </div>
                                <div class="card">
                                    <div class="card-header">
                                        <h5>
                                            1914 translation by H. Rackham
                                        </h5>
                                    </div>
                                    <div class="card-body">
                                        But I must explain to you how all this mistaken idea of denouncing pleasure
                                        and praising pain was born and I will give you a complete account of the
                                        system, and expound the actual teachings of the great explorer of the truth,
                                        the master-builder of human happiness. No one rejects, dislikes, or avoids
                                        pleasure itself, because it is pleasure, but because those who do not know
                                        how to pursue pleasure rationally encounter consequences that are extremely
                                        painful. Nor again is there anyone who loves or pursues or desires to obtain
                                        pain of itself, because it is pain, but because occasionally circumstances
                                        occur in which toil and pain can procure him some great pleasure.
                                    </div>
                                </div>
                                <div class="card">
                                    <div class="card-header">
                                        <h5>
                                            Section 1.10.33 of "de Finibus Bonorum et Malorum", written by Cicero in
                                            45 BC
                                        </h5>
                                    </div>
                                    <div class="card-body">
                                        At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis
                                        praesentium voluptatum deleniti atque corrupti quos dolores et quas
                                        molestias excepturi sint occaecati cupiditate non provident, similique sunt
                                        in culpa qui officia deserunt mollitia animi, id est laborum et dolorum
                                        fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero
                                        tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus
                                        id quod maxime placeat facere possimus,
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- section end-->

<%@include file="../inc/footer.jsp"%>

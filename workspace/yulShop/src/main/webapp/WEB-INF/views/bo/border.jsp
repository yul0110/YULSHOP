<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!--  header  -->
<%@ include file="/WEB-INF/views/bo/header.jsp"%>

<body class="menubar-enabled navbar-top-fixed">

<!--  topMenu  -->
<%@ include file="/WEB-INF/views/bo/topMenu.jsp"%>

    <div class="wrapper">

        <div class="container-fluid mt-15">

            <div class="row row-cols-1 row-cols-md-2 row-cols-lg-4">

                <div class="col">
                    <div class="card mb-15">
                        <div class="card-body">
                            <span class="badge bg-success float-right">month</span>
                            <h6 class="card-title text-muted">주문</h6>
                            <h3 class="mb-10">120,160,001</h3>
                            <p class="text-muted mb-0">Total: 1,5B
                                <span class="float-right"> <i class="fas fa-angle-up text-success"></i> 5.5%</span>
                            </p>
                        </div>
                    </div>
                </div>

                <div class="col">
                    <div class="card mb-15">
                        <div class="card-body">
                            <span class="badge bg-success float-right">month</span>
                            <h6 class="card-title text-muted">배송대기</h6>
                            <h3 class="mb-10">100,007</h3>
                            <p class="text-muted mb-0">Total: 150M
                                <span class="float-right"> <i class="fas fa-angle-up text-success"></i> 5.5%</span>
                            </p>
                        </div>
                    </div>
                </div>

                <div class="col">
                    <div class="card mb-15">
                        <div class="card-body">
                            <span class="badge bg-success float-right">month</span>
                            <h6 class="card-title text-muted">배송중</h6>
                            <h3 class="mb-10">1,234</h3>
                            <p class="text-muted mb-0">Total: 329,890
                                <span class="float-right"> <i class="fas fa-angle-up text-success"></i> 5.5%</span>
                            </p>

                        </div>
                    </div>
                </div>

                <div class="col">
                    <div class="card mb-15">
                        <div class="card-body">
                            <span class="badge bg-success float-right">month</span>
                            <h6 class="card-title text-muted">반품/취소</h6>
                            <h3 class="mb-10">$89,909</h3>
                            <p class="text-muted mb-0">Total: $890,789
                                <span class="float-right"> <i class="fas fa-angle-up text-success"></i> 5.5%</span>
                            </p>

                        </div>
                    </div>
                </div>
            </div>

<!-- 상단 카드 4개 --><!-- 상단 카드 4개 --><!-- 상단 카드 4개 --><!-- 상단 카드 4개 --><!-- 상단 카드 4개 --><!-- 상단 카드 4개 --><!-- 상단 카드 4개 --><!-- 상단 카드 4개 -->


            <div class="row">

                <div class="col-lg-12 col-md-12">

                    <div class="card mb-15">
                    	<!-- 카드헤더 
                        <div class="card-header bg-transparent py-15">Latest orders</div>
						-->
						<br>
		                <ul class="navbar-nav mr-auto hidden-sm-down ">
				            <li class="nav-item">
				                <form class="form-inline">
				                    <div class="input-group">
				                    	&nbsp;
				                    	<select>
				                    		<option value="">타입선택</option>
				                    		<option value="">주문번호</option>
				                    		<option value="">주문자</option>
				                    	</select>
				                    	&nbsp;
				                        <input class="form-control" type="search" placeholder="Search" aria-label="Search">
			                            <button class="btn btn-outline-primary" type="button">
			                                <i class="fas fa-search"></i>
			                            </button>
				                    </div>
				                </form>
				            </li>
				        </ul>
						<br>
						
                        <div class="table-responsive">
                            <table class="table">
								<colgroup>
									<col width="15%">
									<col width="40%">
									<col width="10%">
									<col width="10%">
									<col width="15%">
									<col width="10%">
								</colgroup>
                                <thead>
                                    <tr>
                                        <th>주문번호</th>
                                        <th>상품명</th>
                                        <th>주문자</th>
                                        <th class="text-center">연락처</th>
                                        <th class="text-center">상태</th>
                                        <th class="text-center">날짜</th>
                                    </tr>
                                </thead>
                                <tbody>
                                
                                	<!-- item Start -->
                                    <tr>
                                        <td>
                                           KJ2334234
                                        </td>
                                        <td>
                                            봄날리는 원피스
                                        </td>
                                        <td>
                                           이율
                                        </td>
                                        <td class="text-right">
                                           01024790000
                                        </td>
                                        <td class="text-center">
                                            <span class="badge bg-primary">주문</span>
                                        </td>
                                        <td class="text-center">
                                            2023.03.20
                                        </td>
                                    </tr>
									<!-- item END -->

									<!-- item Start -->
                                    <tr>
                                        <td>
                                           KJ2334234
                                        </td>
                                        <td>
                                            봄날리는 원피스
                                        </td>
                                        <td>
                                           이율
                                        </td>
                                        <td class="text-right">
                                           01024790000
                                        </td>
                                        <td class="text-center">
                                            <span class="badge bg-warning">배송준비</span>
                                        </td>
                                        <td class="text-center">
                                            2023.03.20
                                        </td>
                                    </tr>
									<!-- item END -->

                                	<!-- item Start -->
                                    <tr>
                                        <td>
                                           KJ2334234
                                        </td>
                                        <td>
                                            봄날리는 원피스
                                        </td>
                                        <td>
                                           이율
                                        </td>
                                        <td class="text-right">
                                           01024790000
                                        </td>
                                        <td class="text-center">
                                            <span class="badge bg-info">배송중</span>
                                        </td>
                                        <td class="text-center">
                                            2023.03.20
                                        </td>
                                    </tr>
									<!-- item END -->

                                	<!-- item Start -->
                                    <tr>
                                        <td>
                                           KJ2334234
                                        </td>
                                        <td>
                                            봄날리는 원피스
                                        </td>
                                        <td>
                                           이율
                                        </td>
                                        <td class="text-right">
                                           01024790000
                                        </td>
                                        <td class="text-center">
                                            <span class="badge bg-danger">반품/취소</span>
                                        </td>
                                        <td class="text-center">
                                            2023.03.20
                                        </td>
                                    </tr>
									<!-- item END -->

									<!-- item Start -->
                                    <tr>
                                        <td>
                                           KJ2334234
                                        </td>
                                        <td>
                                            봄날리는 원피스
                                        </td>
                                        <td>
                                           이율
                                        </td>
                                        <td class="text-right">
                                           01024790000
                                        </td>
                                        <td class="text-center">
                                            <span class="badge bg-success">배송완료</span>
                                        </td>
                                        <td class="text-center">
                                            2023.03.20
                                        </td>
                                    </tr>
									<!-- item END -->
										
                                </tbody>
                            </table>
                        </div>
						<!-- 페이징 --><!-- 페이징 --><!-- 페이징 --><!-- 페이징 --><!-- 페이징 --><!-- 페이징 --><!-- 페이징 --><!-- 페이징 -->
						<div class="form-group">
						    <div id='pagingList' class="btn-group mb-2">
				          	<!-- tmple zone -->
							<div id='pageNode' class="custom-pagination" style=''>
							    <button type="button" class="btn btn-light firstPage pagingCilck">&lt;&lt;</button>
						        <button type="button" class="btn btn-light prevPage pagingCilck">&lt;</button>
						        <button type="button" class="btn btn-light pagingPrevNum pagingCilck">1</button>
						        <button type="button" class="btn btn-primary pagingNum pagingCilck">2</button>
						        <button type="button" class="btn btn-light pagingNextNum pagingCilck">3</button>
						        <button type="button" class="btn btn-light nextPage pagingCilck">&gt;</button>
						        <button type="button" class="btn btn-light endPage pagingCilck">&gt;&gt;</button>
							</div>
							<!-- tmple zone -->
						   </div>
						</div>
						<!-- 페이징 --><!-- 페이징 --><!-- 페이징 --><!-- 페이징 --><!-- 페이징 --><!-- 페이징 --><!-- 페이징 --><!-- 페이징 -->
						<br>
                    </div>
                </div>
            </div>




        </div>

    </div>


    <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-alpha1/dist/js/bootstrap.min.js"></script>

    <script src="https://cdn.jsdelivr.net/npm/perfect-scrollbar@1.4.0/dist/perfect-scrollbar.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/highcharts@8.0.0/highcharts.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/jquery-knob@1.2.11/dist/jquery.knob.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/jquery-sparkline@2.4.0/jquery.sparkline.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/peity@3.3.0/jquery.peity.min.js"></script>

    <!-- Global site tag (gtag.js) - Google Analytics -->
    <script async src="https://www.googletagmanager.com/gtag/js?id=UA-50750921-19"></script>
    <script>
        window.dataLayer = window.dataLayer || [];
        function gtag() { dataLayer.push(arguments); }
        gtag('js', new Date());

        gtag('config', 'UA-50750921-19');
    </script>



    <script src="../../js/morioh.js"></script>

    <script>

        $(function () {

            $('#modal-download').modal('show');




            $(".bar").peity("bar");


            // knob

            $(".knob").knob();


            // sparkline bar
            $('.sparkline-bar').sparkline('html', {
                type: 'bar',
                barWidth: 10,
                height: 65,
                barColor: '#3b73da',
                chartRangeMax: 12
            });

            $('.sparkline-line').sparkline('html', {
                width: 120,
                height: 65,
                lineColor: '#3b73da',
                fillColor: false
            });

            /************** AREA CHARTS ********************/


            $('.sparkline-area').sparkline('html', {
                width: 120,
                height: 65,
                lineColor: '#3b73da',
                fillColor: 'rgba(59, 115, 218,0.2)'
            });


            $('.sparkline').sparkline('html', {
                width: '100%',
                height: 80,
                lineColor: '#3b73da',
                fillColor: 'rgba(59, 115, 218,0.2)'
            });



            Highcharts.chart('hl-pie-ref', {
                chart: {
                    plotBackgroundColor: null,
                    plotBorderWidth: null,
                    plotShadow: false,
                    type: 'pie'
                },
                title: {
                    text: ''
                },
                tooltip: {
                    pointFormat: '{series.name}: <b>{point.percentage:.1f}%</b>'
                },
                plotOptions: {
                    pie: {
                        allowPointSelect: true,
                        cursor: 'pointer',
                        dataLabels: {
                            enabled: false
                        },
                        showInLegend: false
                    }
                },
                series: [{
                    name: 'Referrals',
                    colorByPoint: true,
                    data: [{
                        name: 'Google',
                        y: 30.5,
                        sliced: true,
                        // selected: true
                    }, {
                        name: 'Twiter',
                        y: 25.5
                    }, {
                        name: 'Morioh',
                        y: 16
                    }, {
                        name: 'Facebook',
                        y: 8
                    }, {
                        name: 'Pinterest',
                        y: 4
                    }, {
                        name: 'Other',
                        y: 7.05
                    }]
                }]
            });



            Highcharts.chart('hl-line-main', {

                title: {
                    text: ''//'Stats of last 30 days'
                },

                // subtitle: {
                //     text: 'Source: thesolarfoundation.com'
                // },

                yAxis: {
                    title: {
                        text: 'Traffics of Month'
                    }
                },
                // legend: {
                //     // layout: 'vertical',
                //     // align: 'right',
                //     verticalAlign: 'middle'
                // },

                plotOptions: {
                    series: {
                        label: {
                            connectorAllowed: false
                        },
                        pointStart: 1
                    }
                },

                series: [
                    {
                        name: 'Views',
                        data: [8050, 8500, 8600, 8800, 8600, 9000, 9100, 9100, 9500, 9400, 9800, 9900, 10000, 9800, 9600, 9000, 8800, 9600, 9800, 10000, 11000, 11200, 11400, 11400]
                    },
                    {
                        name: 'Orders',
                        data: [1000, 1100, 1210, 1110, 1150, 1200, 1400, 1500, 1350, 1300, 1200, 1250, 1260, 1390, 1289, 1120, 1200, 1300, 1310, 1350, 1350, 1400, 1300, 1400]
                    }, {
                        name: 'Members',
                        data: [3000, 3200, 4000, 3000, 3500, 6000, 5000, 3450, 5460, 7000, 6000, 6500, 5500, 8000, 7000, 9000, 8000, 7000, 8000, 9000, 9100, 9200, 9300, 9400]
                    }, {
                        name: 'Income',
                        data: [1000, 2200, 2300, 3000, 2500, 2300, 3000, 3200, 2600, 2800, 2700, 2650, 2600, 2800, 2500, 2500, 3000, 3100, 3300, 3000, 3200, 3000, 3200, 3300]
                    }],

                responsive: {
                    rules: [{
                        // condition: {
                        //     maxWidth: 500
                        // },
                        chartOptions: {
                            legend: {
                                layout: 'horizontal',
                                align: 'center',
                                verticalAlign: 'bottom'
                            }
                        }
                    }]
                }

            });
        })

    </script>


</body>

</html>
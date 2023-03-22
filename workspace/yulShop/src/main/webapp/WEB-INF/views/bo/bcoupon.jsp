<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!--  header  -->
<%@ include file="/WEB-INF/views/bo/header.jsp"%>

<body class="menubar-enabled navbar-top-fixed">

<!--  topMenu  -->
<%@ include file="/WEB-INF/views/bo/topMenu.jsp"%>

<script src="/resources/js/bo/bcoupon.js"></script>

    <div class="wrapper">

        <div class="container-fluid mt-15">
            <div class="row">
                <div class="col-lg-8 col-12">
            </div>
            <div class="row">
                <div class="col-lg-8 col-md-12" style= "width:100%">
                    <div class="card mb-15">
                        <div class="card-header bg-transparent py-15">
                        	쿠폰 리스트
                        	<button type="button" class="btn btn-primary float-right eventReg" onclick ="location.href='/bcouponReg'">등록하기</button>
                        </div>
                       		<h1 class="heading" data-aos="fade-up">
								<input id='pageNum' type="hidden" value=1 />
							</h1>
                        <div class="table-responsive">
                            <table class="table">
                                <thead>
                                    <tr>
                                        <th>등록코드</th>
                                        <th>이름</th>
                                        <th>할인방식</th>
                                    </tr>
                   				</thead>
                   				
                                <tbody id='couponList'>
					          	<!-- tmple zone -->
								<!-- tmple zone -->
								<!-- tmple zone -->
								<!-- tmple zone -->
								<!-- tmple zone -->
                                </tbody>
                                
                            </table>
                        </div>
                         
                         
<!-- 페이징 --><!-- 페이징 --><!-- 페이징 --><!-- 페이징 --><!-- 페이징 --><!-- 페이징 --><!-- 페이징 --><!-- 페이징 -->
							<div class="form-group">
							    <div id='pagingList' class="btn-group mb-2">
					          	<!-- tmple zone -->
								<!-- tmple zone -->
								<!-- tmple zone -->
								<!-- tmple zone -->
								<!-- tmple zone -->
							   </div>
							</div>
<!-- 페이징 --><!-- 페이징 --><!-- 페이징 --><!-- 페이징 --><!-- 페이징 --><!-- 페이징 --><!-- 페이징 --><!-- 페이징 -->
							
							<br>
			            </div>
                    </div>
                </div>
                
	<!-- <div id="modal-download" tabindex="-1" role="dialog" aria-labelledby="BottomRightLabel" class="modal fade"
                aria-hidden="true">
                <div class="modal-dialog modal-bottom-left" role="document">
                    <div class="modal-content">
                        <div class="modal-body">
                            <div class="card border-0 mb-0">
                                <img class="card-img" src="https://i.imgur.com/gWYKl5Fm.png">
                                <div class="card-body">
                                    Need to download the source files?
                                </div>
                            </div>
                            <div class="mb-15">
                                <a target="_blank"
                                    href="https://github.com/Morioh-Lab/morioh"
                                    class="btn btn-primary btn-block">
                                    Download
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
            </div> -->
        </div>
    </div>
</div>

<!-- ======= Footer ======= -->

	<!-- templ  -->

	<table class="table"  Style='display:none;'>
		<thead>
			<tr>
			    <th></th>
			    <th></th>
			    <th></th>
			</tr>
		</thead>
		<tbody>
			<tr id='dataNode' class="">
			    <td class="couponCode">
			        
			    </td>
			
			    <td class="couponNm">
			        
			    </td>
			
			    <td class="couponType">
			        
			    </td>
			</tr>
	    </tbody>
	</table>

	<div id='pageNode' class="custom-pagination" style='display:none;'>
	    <button type="button" class="btn btn-light firstPage pagingCilck">&lt;&lt;</button>
        <button type="button" class="btn btn-light prevPage pagingCilck">&lt;</button>
        <button type="button" class="btn btn-light pagingPrevNum pagingCilck">1</button>
        <button type="button" class="btn btn-primary pagingNum pagingCilck">2</button>
        <button type="button" class="btn btn-light pagingNextNum pagingCilck">3</button>
        <button type="button" class="btn btn-light nextPage pagingCilck">&gt;</button>
        <button type="button" class="btn btn-light endPage pagingCilck">&gt;&gt;</button>
	</div>


<!-- templ  -->


    <!-- Page Js File -->
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
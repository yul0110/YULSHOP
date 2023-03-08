<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!--  header  -->
<%@ include file="/WEB-INF/views/bo/header.jsp"%>

<body class="menubar-enabled navbar-top-fixed">

<!--  topMenu  -->
<%@ include file="/WEB-INF/views/bo/topMenu.jsp"%>

    <div class="wrapper">
        <div class="container-fluid mt-15">
            <div class="card mb-15">
            
<!-- -------------------------------------- --><!-- -------------------------------------- --><!-- -------------------------------------- --><!-- -------------------------------------- --><!-- -------------------------------------- -->
            
            <div class="card mb-15">
                <div class="card-body">
                    <h4>상품등록</h4>
                    <p>
                        Set heights using classes like <code>.input-lg</code>, and set widths using grid column
                        classes like <code>.col-lg-*</code>.
                    </p>

                    <form role="form" class="form-horizontal">
                        <div class="mb-15 row">
                            <label class="col-sm-2 col-form-label" for="example-input-small">Small</label>
                            <div class="col-sm-10">
                                <input type="text" id="example-input-small" name="example-input-small"
                                    class="form-control form-control-sm" placeholder=".input-sm">
                            </div>
                        </div>

                        <div class="mb-15 row">
                            <label class="col-sm-2 col-form-label" for="example-input-normal">Normal</label>
                            <div class="col-sm-10">
                                <input type="text" id="example-input-normal" name="example-input-normal"
                                    class="form-control" placeholder="Normal">
                            </div>
                        </div>

                        <div class="mb-15 row">
                            <label class="col-sm-2 col-form-label" for="example-input-large">Large</label>
                            <div class="col-sm-10">
                                <input type="text" id="example-input-large" name="example-input-large"
                                    class="form-control form-control-lg" placeholder=".input-lg">
                            </div>
                        </div>

                        <div class="mb-15 row">
                            <label class="col-sm-2 col-form-label">Grid Sizes</label>
                            <div class="col-sm-4">
                                <input type="text" class="form-control" placeholder=".col-sm-4">
                            </div>
                        </div>

                        <div class="mb-15 row">
                            <label class="col-sm-2 col-form-label">Static</label>
                            <div class="col-sm-10">
                                <div class="input-group">
                                    <span class="input-group-text" id="basic-addon1">@</span>
                                    <input type="text" class="form-control" placeholder="Username" aria-label="Username"
                                        aria-describedby="basic-addon1">
                                </div>
                            </div>
                        </div>

                        <div class="mb-15 row">
                            <label class="col-sm-2 col-form-label">Dropdowns</label>
                            <div class="col-sm-10">
                                <div class="input-group mb-3">
                                   
                                        <button class="btn btn-primary  dropdown-toggle" type="button"
                                            data-toggle="dropdown" aria-haspopup="true"
                                            aria-expanded="false">Dropdown</button>
                                        <div class="dropdown-menu">
                                            <a class="dropdown-item" href="#">Action</a>
                                            <a class="dropdown-item" href="#">Another action</a>
                                            <a class="dropdown-item" href="#">Something else here</a>
                                            <div role="separator" class="dropdown-divider"></div>
                                            <a class="dropdown-item" href="#">Separated link</a>
                                        </div>
                                    <input type="text" class="form-control" placeholder="" aria-label=""
                                        aria-describedby="basic-addon1">
                                </div>
                            </div>
                        </div>

                        <div class="mb-15 row mb-0">
                            <label class="col-sm-2 col-form-label">Buttons</label>
                            <div class="col-sm-10">
                                <div class="input-group">
                                    <input type="text" class="form-control" placeholder="Recipient's username"
                                        aria-label="Recipient's username" aria-describedby="basic-addon2">
                                        <button class="btn btn-dark" type="button">Button</button>
                                </div>
                            </div>
                        </div>
						<button type="button" class="btn btn-block btn-primary">등록하기</button>
                    </form>
                </div>
            </div>
<!-- -------------------------------------- --><!-- -------------------------------------- --><!-- -------------------------------------- --><!-- -------------------------------------- --><!-- -------------------------------------- -->
        </div>
    </div>
</div>

	<!-- Page Js Files  -->
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-alpha1/dist/js/bootstrap.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/perfect-scrollbar@1.4.0/dist/perfect-scrollbar.min.js"></script>

    <!-- Global site tag (gtag.js) - Google Analytics -->
    <script async src="https://www.googletagmanager.com/gtag/js?id=UA-50750921-19"></script>
    <script>
        window.dataLayer = window.dataLayer || [];
        function gtag() { dataLayer.push(arguments); }
        gtag('js', new Date());
        gtag('config', 'UA-50750921-19');
    </script>
    <script src="../../js/morioh.js"></script>


</body>

</html>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/header.jsp" %>
<!-- Begin Page Content -->
<div class="container-fluid">

    <!-- Page Heading -->
    <div class="d-sm-flex align-items-center justify-content-between mb-4">
        <h1 class="h3 mb-0 text-gray-800">UsersCRUD</h1>
        <a href='<c:url value="/user/list" />' class="d-none d-sm-inline-block btn btn-sm btn-primary shadow-sm"><i
                class="fas fa-download fa-sm text-white-50"></i> Lista użytkowików</a>
    </div>

    <!-- DataTales -->
    <div class="card shadow mb-4">
        <div class="card-header py-3">
            <h6 class="m-0 font-weight-bold text-primary">Edycja użytkownika</h6>
        </div>
        <div class="card-body">
            <div class="table-responsive">
                <form method="post">
                    <div class="form-group">
                        <label for="userName">Nazwa</label>
                        <input value="${user.userName}" name="userName" type="text" class="form-control" id="userName" placeholder="Nazwa użytkownika">
                    </div>
                    <div class="form-group">
                        <label for="email">Email</label>
                        <input value="${user.email}" name="email" type="text" class="form-control" id="email" placeholder="Email użytkownika">
                    </div>
                    <div class="form-group">
                        <label for="password">Hasło</label>
                        <input name="password" type="text" class="form-control" id=password placeholder="Hasło użytkownika">
                    </div>
                    <div class="input-group-append">
                        <button class="btn btn-primary" type="submit">Edytuj</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>

<%@ include file="/footer.jsp" %>
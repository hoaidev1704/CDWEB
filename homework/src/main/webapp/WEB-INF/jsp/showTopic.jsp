<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page contentType="text/html; charset=UTF-8" %>
<html lang="en" xmlns:th="http://www.thymeleaf.org">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>Spring Security Example</title> <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
    <style>
        .center {
            margin: auto;
            width: 50%;
            padding: 10px;
        }
        .author {
            background-color: aquamarine;
        }

        .title {
            background-color: aqua;
        }

        .commentTime {
            background-color: grey;
            margin-bottom: 0 !important;
        }

        .borderTable {
            border: 1px black solid;
        }
    </style>
</head>
<body>
<div class="container">
    <div>
        <c:if test="${name != null}">
            <span style="float: right">Chào <b>${name} |</b><a href="/logout">Thoát</a></span>
        </c:if>
        <c:if test="${name == null}">
         <span style="float: right"><a href="/login">Đăng
        nhập</a></span>
        </c:if>
    </div>
    <h4>Chủ đề: ${topic.title}</h4>
    <span>Bài mới nhất gửi
    ${latestMessage.createdTimeForDisplay()} , do
    <b>${latestMessage.creator.username}</b>
    gửi.
    ${topic.replied()} hồi âm.</span>

    <div id="mainContent" class="borderTable">
        <p class="commentTime">${topic.createdTimeForDisplay()}</p>
        <div class="row" style="margin: auto">
            <div class="col-3 author">
                <div class="center">
                    <p class ="font-weight-bold">${topic.getCreator().username}</p>
                    <span>Tham gia ${topic.getCreator().joinDateForDisplay()}</span>
                </div>
            </div>
            <div class="col-9">
                <div class="row title">
                    <div class="col-10">
                        <p >${topic.getTitle()}</p>
                    </div>
                    <c:if test="${name != null}">
                        <div class="col-2">
                            <a href="/replyTopic?id=${topic.id}">Trả lời</a>
                        </div>
                    </c:if>

                </div>
                <div class="row">
                    <span>${topic.getContent()}</span>
                </div>
            </div>
        </div>
    </div>
    <c:forEach items="${topic.messages}" var="message">
        <br>
        <div id="repliesContent" class="borderTable" >
            <p class="commentTime"
               th:text="${message.createdTimeForDisplay()}"></p>
            <div class="row" style="margin: auto">
                <div class="col-3 author">
                    <div class="center ">
                        <p class="font-weight-bold">${message.getCreator().username}</p>
                        <span>Tham gia ${message.getCreator().joinDateForDisplay()}</span>
                    </div>
                </div>
                <div class="col-9">
                    <div class="row title">
                        <div class="col-10">
                            <p>${message.getTitle()}</p>
                        </div>
                        <c:if test="${name != null}">
                            <div class="col-2">
                                <a href="/replyTopic?id=${topic.id}">Trả lời</a>
                            </div>
                        </c:if>

                    </div>
                    <div class="row">
                        <span>${message.getContent()}</span>
                    </div>
                </div>
            </div>
        </div>
        </c:forEach>


    <div style="float: right">
        <a href="/listTopics">Danh sách chủ đề</a>
    </div>
</div>

</body>
</html>
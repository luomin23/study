<%@ page import="com.asiainfo.chapter1.hanjunwen.webDemo.blog.entity.Blog" %><%--
  Created by IntelliJ IDEA.
  User: h
  Date: 2017/8/21
  Time: 10:36
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="gb2312">
    <title>博客</title>
    <link href="css/index.css" rel="stylesheet">
    <!--[if lt IE 9]>
    <script src="js/modernizr.js"></script>
    <![endif]-->
</head>
<body>
<header>
    <%--<h1><a href="/">陌上花开淡香随</a></h1>--%>
    <h1><a href="/">欢迎，<%=request.getSession().getAttribute("username")%></a></h1>
    <%--<p>如果没有为陌上悄然伫立并为陌上风情所陶醉的人，那么花开也寂寞,风情也苍白...</p>--%>
</header>
<!--nav begin-->
<div class="navswf">
    <object id="customMenu" data="images/nav.swf" width="528" height="70" type="application/x-shockwave-flash"><param name="allowScriptAccess" value="always"><param name="allownetworking" value="all"><param name="allowFullScreen" value="true"><param name="wmode" value="transparent"><param name="menu" value="false"><param name="scale" value="noScale"><param name="salign" value="1">
    </object>
    <div id="nav">
        <ul>
            <li><a href="/toUserIndexWithPage?page=1" >首页</a></li>
            <%--<li><a href="/news/" target="_blank" title="慢生活">慢生活</a></li>--%>
            <li><a href="/toUpdateUserJsp.do" target="_blank" title="修改密码">修改密码</a></li>
            <li><a href="/toAddBlogJsp.do" target="_blank" title="碎言碎语">碎言碎语</a></li>
            <li><a href="/getAllBlogsByUsername.do" target="_blank" title="我的博客">我的博客</a></li>
            <li><a href="/getAllBlogsByUsernameWithPage.do?page=1" target="_blank" title="我的博客-分页">我的博客-分页</a></li>
            <li><a href="/toLoginDemo" target="_blank" title="更换用户">更换用户</a></li>
            <%--<li><a href="/news/jsex/" target="_blank" title="JS 实例代码演示">JS实例</a></li>--%>
            <%--<li><a href="/e/tool/gbook/?bid=1" target="_blank" title="留言版">留言版</a></li>--%>
        </ul>
    </div>
</div>
<!--nav end-->
<div class="blank"></div>
<article>
    <div class="blog">
        <!-- blog list begin-->
        <h2><a href="/">修改博客：</a></h2>
        <%Blog blog=(Blog) request.getAttribute("blog");
//        String id=String.valueOf(blog.getId());
//        String author=blog.getAuthor();
//        String title=blog.getTitle();
//        String article=blog.getArticle();
        %>
        <%--<%=request.getSession().getAttribute("username")%>:<br>--%>
        <form action="/updateBlogByUser.do" method="post">
            <input type="hidden" name="id" value=<%=blog.getId()%> />
            <input type="hidden" name="author" value=<%=blog.getAuthor()%>>
            作者：<input type="text" name="author1" value=<%=blog.getAuthor()%> disabled/><br>
            标题：<input type="text" name="title" value=<%=blog.getTitle()%> /><br>
            内容：<textarea name="article" style="height: 250px;width: 350px;resize: none;" required value=<%=blog.getArticle()%>><%=blog.getArticle()%></textarea><br>
            <input type="submit" name="updateBlogByUser" value="修改">
            <%--<a href="/getAllBlogsByUsernameWithPage.do?page=1">返回上一页</a>--%>
        </form>
        <%--<p class="datetime">2013-5-20</p>--%>
        <%--<ul class="topimg">--%>
        <%--<img src="images/2011714152744924.jpg">--%>
        <%--</ul>--%>
        <%--<ul class="content">--%>
        <%--<p>女孩子都有着浪漫的小情怀，对于求婚更是抱着满满的浪漫期待，也希望在求婚那一天对方可以给自己一个最浪漫的求婚词。</p>--%>
        <%--<p>you are the apple of my eyes.</p>--%>
        <%--<p>你是我这辈子最珍贵的人。请让我永远守护在你身边，我一定将你当成掌心的珍宝，一辈子悉心呵护。你，愿意嫁给我吗？</p>--%>
        <%--</ul>--%>
        <%--<p class="read"><a href="/">阅读>></a></p>--%>
        <!-- blog list end-->
        <!-- blog list begin-->
        <%--<h2><a href="/">也许下个路口就会遇见希望</a></h2>--%>
        <%--<p class="datetime">2013-5-20</p>--%>
        <%--<ul class="topimg">--%>
        <%--<img src="images/2011713203720633.jpg">--%>
        <%--</ul>--%>
        <%--<ul class="content">--%>
        <%--<p>不要忽视了自己，因为有你，有些人的世界会灿烂起来！</p>--%>
        <%--<p>爱和恨，从来就没有单独存在过，一直是一起存在的，只不过是某个阶段中，爱比恨多了一点儿，所以看见了爱，模糊了恨；或者恨比爱多了一点儿，所以看见了恨，模糊了爱，而我们，就都在这些被模糊了情感中，最终模糊了自己。</p>--%>
        <%--<p>如果世上不存在对等的爱，那就让我爱多一些吧。</p>--%>
        <%--<p>想你的时候，把你的名字写在手心，摊开是想念，握紧是幸福。幸福就是简简单单的依靠，就是手牵手的温柔。</p>--%>
        <%--</ul>--%>
        <%--<p class="read"><a href="/">阅读>></a></p>--%>
        <%--<!-- blog list end-->--%>
        <%--<!-- blog list begin-->--%>
        <%--<h2><a href="/">6月毕业季，祝福送给你</a></h2>--%>
        <%--<p class="datetime">2013-5-20</p>--%>
        <%--<ul class="topimg">--%>
        <%--<img src="images/2011713195450617.jpg">--%>
        <%--</ul>--%>
        <%--<ul class="content">--%>
        <%--<p>时光荏苒，依稀记得开学那天兴奋不已的心情，可如今我们就要毕业了，各奔东西。</p>--%>
        <%--<p>一天天的相聚如在眼前，一夜夜的奋斗有你陪伴，一次次的欢笑你我共享，一回回的困难你帮我解决。一千多个日夜，你我的情谊深厚弥坚。离别的汽笛已经鸣响，分别就在这迷人的六月。愿你别后宏图大展，梦想实现，我们将重逢在美好的明天！</p>--%>
        <%--<p>知识的浪潮依然在我们脑海涌动，昂扬的斗志依然在我们的世界驻扎，相知的情意依然在我们的心田飘荡，离别的号角却已在我们的耳边奏响...</p>--%>
        <%--</ul>--%>
        <%--<p class="read"><a href="/">阅读>></a></p>--%>
        <%--<!-- blog list end-->--%>
    </div>
    <aside>
        <h2>博客分类</h2>
        <ul>
            <li><a href="/">慢生活(3)</a></li>
            <li><a href="/">程序人生(25)</a></li>
            <li><a href="/">经典美文(39)</a></li>
        </ul>
        <h2>近期文章</h2>
        <ul>
            <li><a href="/">女孩都有浪漫的小情怀</a></li>
            <li><a href="/">也许下个路口就会遇见希望</a></li>
            <li><a href="/">6月毕业季，祝福送给你</a></li>
            <li><a href="/">生活常有缺席的-可搞笑从来不缺席</a></li>
            <li><a href="/">为了一个不存在的梦，执念了那么多年</a></li>
            <li><a href="/">妹妹，明天你就要嫁人啦</a></li>
        </ul>
        <h2>文章归档</h2>
        <ul>
            <li><a href="/">2008 年三月</a></li>
            <li><a href="/">2008 年四月</a></li>
            <li><a href="/">2008 年六月</a></li>
        </ul>
        <h2>友情链接</h2>
        <ul>
            <li><a href="http://www.yangqq.com">个人博客</a></li>
            <li><a href="/">百度</a></li>
            <li><a href="/">Google</a></li>
        </ul>
        <!-- Baidu Button BEGIN -->
        <div id="bdshare" class="bdshare_t bds_tools_32 get-codes-bdshare share">
            <a class="bds_tsina"></a>
            <a class="bds_qzone"></a>
            <a class="bds_tqq"></a>
            <a class="bds_renren"></a>
            <span class="bds_more"></span>
        </div>
        <script type="text/javascript" id="bdshare_js" data="type=tools&amp;uid=6574585" ></script>
        <script type="text/javascript" id="bdshell_js"></script>
        <script type="text/javascript">
            document.getElementById("bdshell_js").src = "http://bdimg.share.baidu.com/static/js/shell_v2.js?cdnversion=" + Math.ceil(new Date()/3600000)
        </script>
        <!-- Baidu Button END -->
    </aside>
</article>
<div class="blank"></div>
<div id="copright">Design by DanceSmile</div>
<script src="js/silder.js"></script>
</body>
</html>
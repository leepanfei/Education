# Education
在线视频教学平台

开发环境：tomcat6，jdk1.6

开发工具：myeclipse，SqlServer数据库

开发使用技术：MVC开发模式（Servlet+javabean+jsp），大量运用jstl标签

项目描述：项目整体分为：讲师，学生，管理员三个子系统

访问地址：主页（localhost:8080/education/web/index.jsp）

主要功能：

--学生子系统：
1.学生注册（操作Users表，新增，修改）
2.查找课程（操作Course表，section表，通过课程名称，讲师名称查找课程，点击课程详情，可以看到课程介绍及课程下的节，课程的评价，讲师信息，优惠券的信息，可以领取优惠券，可以播放视频，操作payRecord表检查学生是否购买了课程，如果没有购买弹出购买界面）
3.曾经看过的课程(用cookie保存看过的课程id,通过课程id,到课程表查询课程列表）
4.购买课程（与查找课程类似，付款功能，购买课程要修改user表中的余额）
5.查询购买记录（查看payRecord表查找课程id,关联course表，显示购买的课程列表）
6.在线视频学习（查看购买过的课程列表，通过payRecord表查找课程id,关联course表，显示购买的课程列表，可以进行课程评价(UserCourseEval)，控制每门课程只能评价一次）
7.我的账户(看自己资料与账户余额)
8.充值（操作moneyRecord，充值时增加一笔记录，同时修改users表中余额）
9.在线提问（操作forum表，新增，修改，删除，倒序显示）
10.查看通知公告（操作NewMsg表，查询列表）

--讲师子系统：
1申请讲师资格（操作Teacher表，新增，修改，只能查看自己的资料）
2.发布课程（操作course表，新增（上传课程封面），修改，删除，查询自己的课程）
3.上传章节视频（操作section表，新增，修改，删除，上传视频）
4.发布优惠券（操作ExchangeRecord，ExchangeCode表，新增，修改，删除）
5.教师答疑（操作forum表，新增，修改，删除功能）
6.我的收入（操作PayRecord表，查看所有购买记录）
7.申请提现（操作PayRecord表，查询所有未提现的收入，同时统计新增到CashRecord表，一个月申请一次）
8.查询提现（操作CashRecord表，查看提现记录）
9.查看通知公告（操作NewMsg表，查询列表）

--管理员子系统：
1.管理员管理(操作manager表，实现新增，修改，删除，分页查询，修改密码，初始化密码，启用禁用)
2.省份管理（操作province表，新增，修改， 删除，分页查询）
3.城市管理（操作City表，关联province表，新增，修改，删除，分页查询）
4.银行管理(操作Bank表，新增，修改， 删除，分页查询)
5.讲师等级设置(操作teacherGrade表，新增，修改，删除，分页查询，讲师提现时要用分成比例)
6.发布公告通知（操作NewMsg表，实现新增，修改，删除，查询，通过在线编辑器生成静态页面）
7.在线课程审核（操作Course表，查看所有讲师的所有课程，可以按课程名称，讲师名称及课程状态进行筛选，进行审核）
8.视频审核（操作Section，查看该课程下的所有视频，进行审核）
9.讲师提现审核（操作CashRecord表，查看所有提现记录，进行审核）
10.讲师收入付款（操作CashRecord表，查看所有提现记录，进行审核）
11.查询讲师收入（操作PayRecord表，查看所有购买记录）
12.讲师资料审核（操作Teacher表，查看所有讲师，可以按讲师名称，审核状态进行筛选，进行审核,修改用户表的用户类型）
13.禁用启用讲师（操作Teacher表，查看所有讲师，可以按讲师名称，审核状态进行筛选，进行禁用启用）
14.用户管理（操作users表，payRecord表，查询学生资料，可以查看到学生购买的所有课程）

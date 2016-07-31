<%--
  User: gschao
  Date: 2016/7/25
  Time: 20:24
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>导航栏</title>

    <script type="text/javascript" src="../js/dtree.js"></script>
    <link rel="StyleSheet" href="../css/dtree.css" type="text/css" />
    <link rel="StyleSheet" href="../css/leftStyle.css" type="text/css" />

</head>
<body>

<p> <a href="javascript:myTree.openAll();">打开全部</a> |  <a href="javascript:myTree.closeAll();">关闭全部</a></p>

<script type="text/javascript">

    /***
     DictionaryTypeDAO.findAll(load);
     function load(data){
        //alert(data[0].dataTypeName);
	        for(var i=0;i<data.length;i++){
	            alert(data[i].dataTypeId+","+data[i].dataTypeName);
	        }
        }

    var DictionaryTypeArr;
    DWREngine.setAsync(false);
    DictionaryTypeDAO.findAll(load);
    DWREngine.setAsync(true);
    function load(data){
        DictionaryTypeArr=data;
    }
     **/

    var myTree=new dTree('myTree');
    myTree.config.userCookies=false; //不使用cookies
    myTree.config.useStatusText=true;//状态栏显示文本
    myTree.config.closeSameLevel=true;//关闭同一层次的节点
    //root
    myTree.add(0,-1,"客户关系管理系统");

    myTree.add(1,0,"客户信息");
    myTree.add(11,1,"客户","form/loadingCostomerInfo.jsp","","main");
    myTree.add(12,1,"联系人","form/loadingContactPersonInfo.jsp","","main");

    myTree.add(2,0,"客户服务");
    myTree.add(21,2,"客户投诉","form/loadingComplainInfo.jsp","","main");
    myTree.add(22,2,"投诉报表","form/loadingCreateJFreeChart.jsp","","main");

    myTree.add(3,0,"日程/任务");
    myTree.add(31,3,"日程");
    myTree.add(32,3,"任务");

    myTree.add(4,0,"项目管理");
    myTree.add(41,4,"项目管理");
    myTree.add(42,4,"项目立项");
    myTree.add(43,4,"项目审批");
    myTree.add(44,4,"项目进程");
    myTree.add(45,4,"项目总结");
    myTree.add(46,4,"项目交易");

    myTree.add(5,0,"系统管理");
    myTree.add(51,5,"用户","form/loadingUserInfo.jsp","","main");
    myTree.add(52,5,"角色","form/loadingRoleInfo.jsp","","main");

    myTree.add(6,0,"数据字典");
    myTree.add(61,6,"企业类型-分类");
    myTree.add(62,6,"企业性质-分类");
    myTree.add(63,6,"开户银行-分类");
    myTree.add(64,6,"信息来源-分类");
    myTree.add(65,6,"客户满意度-分类");
    myTree.add(66,6,"客户级别-分类");


    myTree.add(7,0,"消息提醒");
    myTree.add(71,7,"短消息");

    /***


    d.add(61,6,"数据字典分类","dictionaryType.action","","main");
    var i;
    for(i=0;i<DictionaryTypeArr.length;i++){
        if(DictionaryTypeArr[i].dataTypeName!=null && DictionaryTypeArr[i].dataTypeName!="" && DictionaryTypeArr[i].dataEnable=="yes"  ){
            d.add(61+i,6,DictionaryTypeArr[i].dataTypeName,"dictionaryTypeInfo.action?dataTypeId="+DictionaryTypeArr[i].dataTypeId,"","main");
        }
    }
    d.add(62+i,6,"客户级别","customerLevel.action","","main");

     ****/
    document.write(myTree);



</script>
</body>
</html>

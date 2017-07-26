<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>


<html>
  <head>
    <base href="<%=basePath%>">  
    <title>商通购物网-用户注册！</title>
    <link href="./css/style.css" rel="stylesheet" type="text/css">
    <meta http-equiv="Content- Type" content="text/html; charset=GB2312"/>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<meta http-equiv="Content-Type" content="text/html; charset=gb2312"><style type="text/css">
<!--
body {
	margin-top: 0px;
}
.STYLE1 {color: #000000}
.STYLE2 {
	font-size: 24px;
	font-weight: bold;
}
-->
  </style></head>
  
  <body>

<s:form name="form" id="form" method="POST" action="addUser!save">
  <table width="1024" border="0" align="center">
    <tr>
      <td width="200" align="center"><div align="center"><a href="./index.jsp"><img src="./images/logo.jpg" border="0"></a></div></td>
      <td width="814"><div align="center"><span class="STYLE2">请详细填写您的注册资料！</span></div></td>
    </tr>   
    <tr>
      <td colspan="2"><table width="100%" align="center" background="images/regpagebg.jpg">
        <tr><td>&nbsp;</td>
    <td>&nbsp;</td></tr>
        <tr><td>
          <div align="right">
            <s:textfield  name="username" label="用户名" align="left"/>
          </div></td></tr>
        <tr><td>
          <div align="right">
            <s:password  value="20"  name="password" maxlength="20" label="密码"/>
          </div></td></tr>
        <tr><td>
          <div align="right">
            <s:radio  tooltip="请选择您的性别！"
             label="性别" 
             list="#{'1':'男性','0':'女性'}"   
           name="sex" 
           value="1"
           />
          </div></td></tr> 
             <tr><td>
          <div align="right">
            <s:textfield  name="birthday" label="出生日期" align="left"/>
          </div></td></tr>
           <tr><td height="18"> 
          <div align="right">
            <s:select 
  tooltip="请选择您的学历！"
  label="教育程度" 
  list="{'小学','初中','高中','大专','本科','硕士','博士'}"
  name="education"
  headerKey="请选择" 
  headerValue="请选择"/> 
          </div></td></tr>  
                 <tr><td height="18"> 
          <div align="right">
            <s:select 
  tooltip="请选择您的工作！"
  label="职业" 
  list="{'农民','工人','教师','校长','党政干部','公司/企业领导','经理','技术部经理','业务员','机械工程师','web程序员','软件工程师','美工','网络工程师','医生','护士','店长','自由职业'}"
  name="job"
    headerKey="请选择" 
  headerValue="请选择"/> 
          </div></td></tr>  
          <tr><td>
        <s:select  
  tooltip="请选择您的爱好"
  label="爱好" 
  list="#{'读书':'读书','看报':'看报','上网':'上网','体育运动':'体育运动','购物':'购物'}"   
  name="hobby" 
  emptyOption="None" 
  headerKey="请选择" 
  headerValue="请选择"/></td></tr>  
        <tr><td height="18"> 
          <div align="right">
            <s:checkboxlist 
  tooltip="请选择您的朋友！"
  label="朋友" 
  list="{'小明','大明','小强','大强','小张','大张','小丁','大丁','小紫','大紫','小青','大青','小红','大红'}"
  name="friends"/> 
          </div></td></tr>
        <tr><td colspan="2"> 
       <iframe name=upload src="./upload/upload.jsp" width="800" height="220" scrolling=no frameborder=0></iframe>   
    <s:textfield
label="头像" 
name="pic" 
size="100"/></td>           
    </tr>
        <tr><td valign="top">
          <s:textarea id="message" label="自我评价" name="message" cols="50" rows="10"></s:textarea>
          </td>
    </tr>
    <tr><td>
      <s:set name="area"
   value="#{'请选择省份！':{'请选择城市！'},
                    '北京':{'北京'},
                     '天津':{'天津'},
                     '河北':{'石家庄','唐山','秦皇岛','邯郸','邢台','保定','张家口','承德','沧州','廊坊','衡水'},
                     '山西':{'太原','大同','阳泉','长治','晋城','朔州','晋中','运城','忻州','临汾','吕梁'},
                     '内蒙古自制区':{'呼和浩特','包头','乌海','赤峰','通辽','鄂尔多斯','呼伦贝尔','巴彦淖尔','乌兰察布','兴安盟','锡林郭勒盟','阿拉善盟'},
                     '辽宁':{'沈阳','大连','鞍山','抚顺','本溪','丹东','锦州','营口','阜新','辽阳','盘锦','铁岭','朝阳','葫芦岛'},
                     '吉林':{'长春','吉林','四平','辽源','通化','白山','松原','白城','延边朝鲜族自治州'},
                     '黑龙江':{'哈尔滨','齐齐哈尔','鸡西','鹤岗','双鸭山','大庆','伊春','佳木斯','七台河','牡丹江','黑河','绥化','大兴安岭地区'},
                     '上海':{'上海'},
                     '江苏':{'南京','无锡','徐州','常州','苏州','南通','连云港','淮安','盐城','扬州','镇江','泰州','宿迁'},
                     '浙江':{'杭州','宁波','温州','嘉兴','湖州','绍兴','金华','衢州','舟山','台州','丽水'},
                     '安徽':{'合肥','芜湖','蚌埠','淮南','马鞍山','淮北','铜陵','安庆','黄山','滁州','阜阳','宿州','巢湖','六安','亳州','池州','宣城'},
                     '福建':{'福州','厦门','莆田','三明','泉州','漳州','南平','龙岩','宁德'},
                     '江西':{'南昌','景德镇','萍乡','九江','新余','鹰潭','赣州','吉安','宜春','抚州','上饶'},
                     '山东':{'济南','青岛','淄博','枣庄','东营','烟台','潍坊','济宁','泰安','威海','日照','莱芜','临沂','德州','聊城','滨州','菏泽'},
                     '河南':{'郑州','开封','洛阳','平顶山','安阳','鹤壁','新乡','焦作','濮阳','许昌','漯河','三门峡','南阳','商丘','信阳','周口','驻马店','济源'},
                     '湖北':{'武汉','黄石','十堰','宜昌','襄樊','鄂州','荆门','孝感','荆州','黄冈','咸宁','随州','恩施土家族苗族自治州','省直辖县级行政单位'},
                     '湖南':{'长沙','株洲','湘潭','衡阳','邵阳','岳阳','常德','张家界','益阳','郴州','永州','怀化','娄底','湘西土家族苗族自治州'},
                     '广东':{'广州','韶关','深圳','珠海','汕头','佛山','江门','湛江','茂名','肇庆','惠州','梅州','汕尾',' 河源','阳江','清远','东莞','中山','潮州','揭阳','云浮'},
                     '广西壮族自治区':{'南宁','柳州','桂林','梧州','北海','防城港','钦州','贵港','玉林','百色','贺州','河池','来宾','崇左'},
                     '海南':{'海口','三亚','省直辖县级行政单位'},
                     '重庆':{'重庆'},
                     '四川':{'成都','自贡','攀枝花','德阳','绵阳','广元','遂宁','内江','乐山','南充','眉山','宜宾','广安 ','达州','雅安','巴中','资阳','阿坝藏族羌族自治州','甘孜藏族自治州','凉山彝族自治州'},
                     '贵州':{'贵阳','六盘水','遵义','安顺','铜仁地区','黔西南布依族苗族自治州','毕节地区','黔东南苗族侗族自治州','黔南布依族苗族自治州'},
                     '云南':{'昆明','曲靖','玉溪','保山','昭通','丽江','普洱','临沧','楚雄彝族自治州','红河哈尼族彝族自治州','文山壮族苗族自治州','西双版纳傣族自治州','大理白族自治州','德宏傣族景颇族自治州','怒江傈僳族自治州','迪庆藏族自治州'},
                    '西藏自治区':{'拉萨市','昌都地区','山南地区','日喀则地区','那曲地区','阿里地区','林芝地区'},
                     '陕西':{'西安','铜川','宝鸡','咸阳','渭南','延安','汉中','榆林','安康','商洛'},
                     '甘肃':{'兰州','嘉峪关','金昌','白银','天水','武威','张掖','平凉','酒泉','庆阳','定西','陇南','临夏回族自治州','甘南藏族自治州'},
                     '青海':{'西宁市','海东地区','海北藏族自治州','黄南藏族自治州','海南藏族自治州','果洛藏族自治州','玉树藏族自治州','海西蒙古族藏族自治州'},
                     '宁夏回族自治区':{'银川','石嘴山','吴忠','固原','中卫'},
                     '新疆维吾尔自治区':{'乌鲁木齐','克拉玛依','吐鲁番地区','哈密地区','昌吉回族自治州','博尔塔拉蒙古自治州','巴音郭楞蒙古自治州','阿克苏地区','克孜勒苏柯尔克孜自治州','喀什地区','和田地区','伊犁哈萨克自治州','塔城地区','阿勒泰地区','自治区直辖县级行政区划'},
                     '台湾':{'台北','高雄','基隆','台中','台南','新竹','嘉义'},
                     '香港特别行政区':{'香港'},
                     '澳门特别行政区':{'澳门'}
                 }" />
                  <s:doubleselect label="省份/城市" list="#area.keySet()" name="province"
   doubleName="city" formName="form" doubleList="#area[top]" />
    </td></tr>
      <tr><td>
          <div align="right">
            <s:textfield  name="address" label="地址" align="left" size="100"/>
          </div></td></tr>
            <tr><td>
          <div align="right">
            <s:textfield  name="post" label="邮编" align="left"/>
          </div></td></tr>
            <tr><td>
          <div align="right">
            <s:textfield  name="telphone" label="电话" align="left"/>
          </div></td></tr>
            <tr><td>
          <div align="right">
            <s:textfield  name="mobilephone" label="手机" align="left"/>
          </div></td></tr>
             <tr><td>
          <div align="right">
            <s:textfield  name="email" label="邮箱" align="left"/>
          </div></td></tr>
        <tr><td>   
          <div align="right">
            <s:submit value="注册" align="center"/>
          </div></td></tr>          
          </table></td>
    </tr>
    <tr>
      <td colspan="2"><div align="center">Copyright&copy;2015商通购物网StShop版权所有</div></td>
    </tr>
  </table>
     
  </s:form>
  </body>  

</html>

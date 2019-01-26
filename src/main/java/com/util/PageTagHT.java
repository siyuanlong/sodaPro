package com.util;

import com.github.pagehelper.PageInfo;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.tagext.SimpleTagSupport;
import java.io.IOException;

public class PageTagHT extends SimpleTagSupport {

    private String url;
    private PageInfo pageInfo;

    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url;
    }

    public PageInfo getPageInfo() {
        return pageInfo;
    }

    public void setPageInfo(PageInfo pageInfo) {
        this.pageInfo = pageInfo;
    }

    @Override
    public void doTag() throws JspException, IOException {
        if(url.indexOf("?")!=-1){
            url+="&";
        }else{
            url+="?";
        }

        StringBuffer stringBuffer=new StringBuffer();

        /*将该部分置于页面最左边*/
        stringBuffer.append("<table width='100%' border='0' cellspacing='0' cellpadding='0' name='listTable5'><tr>");
        stringBuffer.append("<td width='20%' height='25'><table border='0' cellspacing='0' cellpadding='3'><tr>");
        stringBuffer.append("<a style='color:black;' href='"+url+"&size="+pageInfo.getPageSize()+"'>首页</a>&nbsp;&nbsp;");
        stringBuffer.append("<a style='color:black;' href='"+url+"index="+(pageInfo.getPageNum()==1?1:pageInfo.getPageNum()-1)+"&size="+pageInfo.getPageSize()+"'>上一页</a>&nbsp;&nbsp;");
        for (int i=1;i<=pageInfo.getPages();i++){
            stringBuffer.append("<a style='color:black;' href='"+url+"index="+i+"&size="+pageInfo.getPageSize()+"'>"+i+"</a>&nbsp;&nbsp;");
        }
        stringBuffer.append("<a style='color:black;' href='"+url+"index="+(pageInfo.getPageNum()==pageInfo.getPages()?pageInfo.getPages():pageInfo.getPageNum()+1)+"&size="+pageInfo.getPageSize()+"'>下一页</a>&nbsp;&nbsp;");
        stringBuffer.append("<a style='color:black;' href='"+url+"index="+pageInfo.getPages()+"&size="+pageInfo.getPageSize()+"'>尾页</a>&nbsp;&nbsp;");
        stringBuffer.append("</tr></table></td>");

        stringBuffer.append("<td width='20%' align='center'><table border='0' cellspacing='0' cellpadding='3' name='listTable6'><tr>");
        /*stringBuffer.append("<td><button href='"+url+"index=${pageValue}' style='color:black;' name='pageGo' >GO</a></td>");*/
        stringBuffer.append("<td><button style='border: 0;cursor:pointer; background-color: transparent;" +
                "outline: none;color:black;' id='btn01' name='pageGo' >GO</button></td>");
        stringBuffer.append("<td><input name='pageText' id='inp01' type='text' size='3' style='width:25;height:18'>/页</td>");
        stringBuffer.append("</tr>k");
        stringBuffer.append("</table></td>");
        stringBuffer.append("<td width='20%' align='right'>");
        /*将该部分置于页面最右边*/
        stringBuffer.append("共"+pageInfo.getTotal()+"条记录 显示到 "+pageInfo.getPageNum()+"/"+pageInfo.getPages());

        stringBuffer.append("</td>");
        stringBuffer.append("</tr></table>");

        this.getJspContext().getOut().write(stringBuffer.toString());
    }
}

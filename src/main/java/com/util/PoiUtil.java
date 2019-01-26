package com.util;

import org.apache.poi.hssf.usermodel.HSSFCell;
import org.apache.poi.hssf.usermodel.HSSFRow;
import org.apache.poi.hssf.usermodel.HSSFSheet;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;

import java.io.IOException;
import java.io.OutputStream;
import java.util.List;

public class PoiUtil {
    //1.创建Excel文件
    static HSSFWorkbook workbook=new HSSFWorkbook();
    //2.创建工作表-sheet1
    static HSSFSheet hssfSheet=null;
    //3.指定首行数据
    public static String[] heads=null;

    //4.创建第一行数据
    public static void createone(){
        hssfSheet = workbook.createSheet();
        HSSFRow row = hssfSheet.createRow(0);
        for(int i=0;i<heads.length;i++){
            HSSFCell cell = row.createCell(i);
            cell.setCellValue(heads[i]);
        }
    }

    //5.创建第二行以后的数据


    //6.设置导出的操作
    public  static void  export(OutputStream outputStream) {
        try {
            hssfSheet.setGridsPrinted(true);//以网格的方式输出
            workbook.write(outputStream);
        } catch (IOException e) {
            e.printStackTrace();
        }
    }



}

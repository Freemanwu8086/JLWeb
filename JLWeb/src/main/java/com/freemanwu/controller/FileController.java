package com.freemanwu.controller;

import org.apache.commons.io.FilenameUtils;
import org.apache.commons.io.IOUtils;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.net.URLEncoder;
import java.time.LocalDate;
import java.util.UUID;

/**
 * test file upload and download.
 */
@Controller
@RequestMapping("file")
public class FileController {

    //deal with file upload.
    @RequestMapping("upload")
    public String upload(MultipartFile img, HttpServletRequest request) throws IOException {
            System.out.println("file name " + img.getOriginalFilename());
            System.out.println("file size " + img.getSize());
            System.out.println("file type " + img.getContentType());
            // file upload
            //1.ues relative path to get upload realPath
//        String realPath = request.getRealPath("/uploads");
            String realPath = request.getSession().getServletContext().getRealPath("/uploads");

            //2: update originalFilename
            String extension = FilenameUtils.getExtension(img.getOriginalFilename());
            String newFilename = UUID.randomUUID().toString().replace("-", "") + "." + extension;

            //3:generate today's dir.
            LocalDate now = LocalDate.now();
            File dateDir = new File(realPath, now.toString());
            if (!dateDir.exists()) dateDir.mkdirs();


            //4.put file to uploads' Path.

            img.transferTo(new File(dateDir, newFilename));

            return "uploadSuccess";
    }


    /**
     * file download
     * response==> OutputStream
     */
    @RequestMapping("download")
    public void download(String openStyle,String fileName, HttpServletRequest request, HttpServletResponse response) throws IOException {

            openStyle = openStyle == null ? "inline" : "attachment";

            System.out.println("downLoad File Name: " + fileName);

            //1.ues relative path to get down realPath on server.
            String realPath = request.getSession().getServletContext().getRealPath("/down");

            //2.use file input Stream to read file.
            FileInputStream fileInputStream = new FileInputStream(new File(realPath, fileName));

            //3.get response outputStream
            response.setContentType("text/plain; charset=UTF-8");

            //4.attachment download.   OR default:   inline (Online open)
            response.setHeader("content-disposition", openStyle + ";fileName= " + URLEncoder.encode(fileName, "UTF-8"));
            ServletOutputStream outputStream = response.getOutputStream();

            //5.deal down Stream copy.
            //aa.txt 1033 bytes

//        int len;
//        byte[] b = new byte[1024];
//        while (true){
//            len = fileInputStream.read(b);
//            if(len==-1) break;
//            outputStream.write(b,0,len);
//        }
//        //release resource.
//        fileInputStream.close();
//        outputStream.close();

            IOUtils.copy(fileInputStream, outputStream);
            IOUtils.closeQuietly(fileInputStream);
            IOUtils.closeQuietly(outputStream);
        }
}

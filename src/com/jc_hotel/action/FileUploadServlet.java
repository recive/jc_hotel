/*
 *	History				Who				What
 *  2016年11月9日			Administrator			Created.
 */
package com.jc_hotel.action;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;

import javax.servlet.ServletException;
import javax.servlet.http.*;

public class FileUploadServlet extends HttpServlet {

    /**
     * 
     */
    private static final long serialVersionUID = 1L;

    protected void service(HttpServletRequest request,
            HttpServletResponse response) throws ServletException, IOException {

        InputStream in = request.getInputStream();

        /* 设置文件保存地址 */
        File saveFile = new File(
                this.getServletContext().getRealPath("/uploaded"), "hello.txt");
        System.out.println("[文件保存地址]:" + saveFile.getAbsolutePath());

        /* 保存 */
        FileOutputStream out = new FileOutputStream(saveFile);
        byte[] buf = new byte[4096];
        while ((in.read(buf)) != -1) {
            out.write(buf);
        }
        out.flush();
        out.close();
        in.close();
        response.getWriter().write(
                "<html><script>alert('Uploaded Succeed!')</script></html>");
    }

}

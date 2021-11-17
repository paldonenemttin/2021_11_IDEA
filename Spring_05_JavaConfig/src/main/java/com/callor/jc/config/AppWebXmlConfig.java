package com.callor.jc.config;

import org.springframework.web.servlet.support.AbstractAnnotationConfigDispatcherServletInitializer;

/**
 * web.xml을 대신할 config 클래스
 */
public class AppWebXmlConfig extends AbstractAnnotationConfigDispatcherServletInitializer {

    // context-param 에 설정한 root-context.xml을 초기화할 method
    @Override
    protected Class<?>[] getRootConfigClasses() {
        return new Class[]{
                RootConfig.class,
                MybatisConfig.class
        };
    }

    // servlet 에 설정한 servlet-context.xml 을 초기화할 method
    @Override
    protected Class<?>[] getServletConfigClasses() {
        return new Class[]{ServletConfig.class};
    }

    // resources mapping 에 설정한 url-pattern 을 초기화할 method
    @Override
    protected String[] getServletMappings() {

        String[] mapping = new String[]{"/"};
        return mapping;
    }
}

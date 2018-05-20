package cn.tmp.security;

import cn.tmp.po.Consumer;
import cn.tmp.service.ConsumerService;
import org.apache.shiro.authc.*;
import org.apache.shiro.authz.AuthorizationInfo;
import org.apache.shiro.realm.AuthorizingRealm;
import org.apache.shiro.subject.PrincipalCollection;
import org.springframework.beans.factory.annotation.Autowired;


public class DefineRealm extends AuthorizingRealm {

    @Autowired
    ConsumerService consumerService;

//    授权的验证
    @Override
    protected AuthorizationInfo doGetAuthorizationInfo(PrincipalCollection principalCollection) {
        return null;
    }

//    登录验证
    @Override
    protected AuthenticationInfo doGetAuthenticationInfo(AuthenticationToken authenticationToken) throws AuthenticationException {
        System.out.println("authenticationToken.getPrincipal()-" + authenticationToken.getPrincipal());
        String id = (String) authenticationToken.getPrincipal();
        Consumer consumer = consumerService.selectByPrimaryKey(Integer.parseInt(id));
        if(consumer == null) {
            throw new UnknownAccountException();//没找到帐号
        }
        AuthenticationInfo authenticationInfo = new SimpleAuthenticationInfo(
                consumer.getCid(),
                consumer.getPassword(),
                getName()
        );
        return authenticationInfo;
    }
}

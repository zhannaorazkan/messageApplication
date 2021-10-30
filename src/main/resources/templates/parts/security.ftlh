<#assign
known = Session.SPRING_SECURITY_CONTEXT??
>

<#if known>
    <#assign
    user = Session.SPRING_SECURITY_CONTEXT.authentication.principal
    name = user.getUsername()
        currentUserId=user.getId()
    >
<#else>
    <#assign
    name = "guest"
        currentUserId=-1
    >
</#if>
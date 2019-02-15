<#import "template.ftl" as layout>
<@layout.registrationLayout displayInfo=social.displayInfo displayWide=(realm.password && social.providers??); section>
  <#if section = "form">
    <div id="kc-form">
      <#if realm.password && social.providers??>
        <div id="kc-social-providers" class="${properties.kcFormSocialAccountContentClass!} ${properties.kcFormSocialAccountClass!}">
          <div class="${properties.kcFormSocialAccountListClass!} <#if social.providers?size gt 4>${properties.kcFormSocialAccountDoubleListClass!}</#if>">
            <#assign oidc_providers = [] />
            <#assign social_media_providers = [] />
            <#list social.providers as p>
              <#if p.providerId == "oidc">
                <#assign oidc_providers = oidc_providers + [p] />
              <#else>
                <#assign social_media_providers = social_media_providers + [p] />
              </#if>
            </#list>
            <#list oidc_providers as p>
              <div class="${p.providerId}">
                <a href="${p.loginUrl}" id="zocial-${p.alias}" class="${p.providerId}"> <span class="text">Login with</span> <span class="display-name">${p.displayName}</span></a>
              </div>
            </#list>
            <div class="social-links">
              <#if social_media_providers?size gt 0>
                <div class="social-links-header">Sign in with a social media account:</div>
              </#if>
              <#list social_media_providers as p>
                <div class="${properties.kcFormSocialAccountListLinkClass!}"><a href="${p.loginUrl}" id="zocial-${p.alias}" class="zocial ${p.providerId}"> <span>${p.displayName}</span></a></div>
              </#list>
            </div>
          </div>
        </div>
      </#if>
    </div>
  <#elseif section = "info">
    <#if realm.password && realm.registrationAllowed && !usernameEditDisabled??>
      <div id="kc-registration">
        <span>${msg("noAccount")} <a tabindex="6" href="${url.registrationUrl}">${msg("doRegister")}</a></span>
      </div>
    </#if>
  </#if>

</@layout.registrationLayout>

# Initial Installation

If you have completed the Parse Server  deployment on Cloud Platform, the following steps is for you to start use it quikly

## Preparation

1. Get the **Internet IP** on your Cloud Platform
2. Check you **[Inbound of Security Group Rule](https://support.websoft9.com/docs/faq/tech-instance.html)** of Cloud Console to ensure the TCP:80 is allowed
3. Complete the Domain name resolution for Parse Server and Parse Dashboard on your DNS Console  
e.g. *parseserver.yourdomain.com* and *parsedashboard.yourdomain.com*

## Domain binding

Since Parse cannot be visited by IP, so your should bind Domain name for it first  
Refer to [Domain binding](/solution-more.md#domain-binding) to complete it now

## Parse Server  Installation Wizard

1. Using local Chrome or Firefox to visit the URL *http://domain name*, go to login Parse Dashboard 
   ![Parse Dashboard login](https://libs.websoft9.com/Websoft9/DocsPicture/en/parseserver/ParseServer-loginpage-websoft9.png)

2. Input username and password([view credentials](/stack-accounts.md)) and go to the Console page
   ![Parse Dashboard console gui](https://libs.websoft9.com/Websoft9/DocsPicture/en/parseserver/parse-backend-websoft9.png)

3. Suggest you to [modify the Parse Dashboard's password](/solution-more.md#modify-parse-dashboard-credentials) now

> More useful Parse Server guide, please refer to [Parse Server Documentation](https://docs.parseplatform.org)

## Q&A

#### Visit http://Internet IP, get the message "error":"unauthorized" ?

Parse cannot be visited by IP, so your should [bind Domain name](/solution-more.md#domain-binding) for it first  

#### Which database does this Parse Server use?

MongoDB

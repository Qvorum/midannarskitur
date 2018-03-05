<!DOCTYPE html>
<html>
  <head>
     <link rel="stylesheet" type="text/css" href="/img/stylesheet.css">
    <meta charset="UTF-8">
  </head>
  <body>
      <img src="/img/ao.png" height="50px" width="50px" class="myndir">
      <img src="/img/costco.png" height="50px" width="50px" class="myndir">
      <img src="/img/daelan.png" height="50px" width="50px" class="myndir">
      <img src="/img/n1.png" height="50px" width="50px" class="myndir">
      <img src="/img/ob.png" height="50px" width="50px" class="myndir">
      <img src="/img/olis.png" height="50px" width="50px" class="myndir">
      <img src="/img/orkan.png" height="50px" width="50px" class="myndir">
      <img src="/img/orkanx.png" height="50px" width="50px" class="myndir">
      %for x in nofn:
      <div class="rammi">
      <a href="/company/{{x}}" class="texti">{{x}}</a>
      </div>
      %end
      <%
         minprice = 1000.0
         minCompany = ""
         for i in data['results']:
            if float(i['bensin95']) < minprice:
                minprice = i['bensin95']
                mincompany = i['company']
            end
        end
      %>
      <%
         minbrice = 1000.0
         minkompany = ""
         for i in data['results']:
            if float(i['diesel']) < minbrice:
                minbrice = i['diesel']
                minkompany = i['company']
            end
        end
      %>
<h3>Minnsta bensín verðið er {{minprice}} og er frá {{mincompany}}</h3>
<h3>Minnsta diesel verðið er {{minbrice}} og er frá {{minkompany}}</h3>
</body>
</html>
<!DOCTYPE html>
<html>
  <head>
    <link rel="stylesheet" type="text/css" href="/img/stylesheet.css">
    <meta charset="UTF-8">
  </head>
  <body>
      %for x in data['results']:
        %if id == x['company']:
      <div class="rammi">
      <h3 class="texti">{{x['name']}}</h3>
      <h3 class="texti">Bensín Verð: {{x['bensin95']}}</h3>
      <h3 class="texti">Diesel verð: {{x['diesel']}}</h3>
      </div>
      %end
</body>
</html>
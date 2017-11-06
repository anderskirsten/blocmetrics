An analytics service for applications to track user events.

Launch the blocmetrics application, sign up and register your application as instructed.

Add the following javascript code snippet to your application to track your selected user events:

```
var blocmetrics = {};

    blocmetrics.report = function(eventName){
        var event = {event: { name: eventName }};
        
        var request = new XMLHttpRequest();
            request.open("POST", "https://blocmetrics-anderskirsten.c9users.io/api/events", true);
            request.setRequestHeader('Content-Type', 'application/json');
            request.send(JSON.stringify(event));
    };
```

Once this code has been added - for example within the 'app/assets/javascripts/application.js' file for a Rails application, you can call the function to record the chosen event:

``` 
onclick="blocmetrics.report('user signed in')"
```

Open the blocmetrics application, sign back in, click on your chosen application and... Voila! You should see your user events recorded.

For more information, contact anders.kirsten@gmail.com
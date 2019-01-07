1. Install [Ruby](https://fullstackautomationwithruby.com/install)
2. Install [Chrome](https://www.google.com/chrome/browser/desktop/index.html) browser.
3. ```git clone git@github.com:richdownie/sample.git```
4. ```cd sample```
5. ```gem install bundler```
6. ```bundle install```
7. ```cucumber features/home.feature```  # Only run the home feature scenarios
8. ```cucumber features```               # Run all feature scenarios in Headless Chrome
9. ```cucumber BROWSER=chrome```         # Run all scenarios in Chrome
10. ```cucumber BROWSER=firefox```       # Run all scenarios in Firefox
11. ```cucumber BROWSER=safari```        # Run all scenarios in Safari
12. ```cucumber RESULTS=true```          # Send Results to [CukeHub.com](https://cukehub.com/) for analysis
13. ```rake build:all```                 $ Run all scenarios in all browser simultaneously 

### Resources
* [FSAR](http://fullstackautomationwithruby.com/) Online Training Sessions that teach you how to automation web applications with Ruby.

# SurvayApp
App is sample to list of survay using REST api call.


# Design Pattern

VIPER (View -> Interactor -> Presenter -> Entity -> Router)

# Tool used to create modules

generamba: -> To generate VIPER architecture (https://github.com/strongself/Generamba)

# Run project steps

To check this app, please move to project folder where podfile located, then install pods using 'pod install'

# Create New Module

1. Go to project directory
2. run 'generamba gen MODULE_NAME viper'

Above will create new Module with all required setup as per template defined in project.

3. Now run Scripts/link_module.sh MODULE_NAME

Above will make initialization entry for Module, And will sort project with folder naming


# Third party libraries used
1. Snapkit: Used for autolayout constraints
2. SDWebImage: Used for async image displayed
3. Swinject: Used for DI purpose 
4. Quick / Nimble: Used for unit testing 
5. MBProgressHud: Used for api loader



# Note
Unit test written for network layer and JSON parsing using mock JSON in app.

# To Improve
1. UI test case
2. Token expiry logic, not implemented since don't know no proper error code in api which define that token is expired.
3. Username / Password hardocded, Can have some UI to input


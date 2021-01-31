Description :
-------------

This project is done to show how to structure the framework for the Vivino app using Page Objects and Cucumber.
I have tried to demonstrate different ways of structure the feature files using background, outlines and yml files.

No hardcoded test data is used in the step files. All data is passed either from an yml file or from the feature as parameters.
The step files has been structured in a way so they are easy to read and not having the appium related commands added.
this is done using OOP and page object design strategi.

example :

startPage.GetStartedButton.click

is used and not

$driver.find_element(:id, "vivino.web.app.beta:id/getstarted_layout").click



Only the report for all the tests has been added to the folder.


How to run the tests :
----------------------

In the terminal you can enter different commands to run different tests and platforms ( ios is NOT implemented in the framework,
but a dummy file configuration has been created to see the structure ):

cucumber -p android_POM_TEST
cucumber -p android_WIP
cucumber -p android_TEST
cucumber -p android_sim
cucumber -p android_ALL

The report files are added to the project folder and named as :

report_android_POM_TEST.html
report_android_WIP.html
report_android_TEST.html
report_android_sim.html
report_android_ALL.html


Structure of the framework :
----------------------------

cucumber.yml file   -   This file holds the information used for the configuration and tags to run, this info is passed to
                        the env.rb file.

env                 -   Load the AccountInfo.yml file that is used later in the tests.
                        The right configuration file is then loaded based on the cucumber information

hooks               -   Start and quit driver used for the automation.

AccountInfo.yml     -   Test data file used in the tests
AccountInfo2.yml    -   Test data file used in the tests


The support folder contains the feature files, a Pages folder and a Controls folder.


The Pages folder contains the page objects for each page that is used in the tests.
The objects are defined in the Controls folders.

The Controls folder contains files for each of the control types.
This is done to keep the Page objects more cleaner and to move the platform dependency out from there.


Step_definitions folder contains all of the steps files used.
backgroundSteps     -   Used for collecting all of the background steps used in the feature files.
CombinedSteps       -   Used for collecting all of the combined steps used in the feature files.

The rest of the step files is related to that area they are testing and have matching feature file.


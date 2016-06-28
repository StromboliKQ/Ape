@file
Feature: File Upload
         As a user I would like to upload a massive grant file
         So that I am able to reserve lots of points for customers.

Background:

         Given I am on the PMS API RESERVATION FORM

         Scenario: User uploads blank file
             Given I send and accept JSON
             Then I set the field name to "test name"
             And I select the 'file_blank_file' file
             And I press the upload button
             Then I should see an "error" message

           @file2
           Scenario: User uploads file_copy2 file
             Given I send and accept JSON
               When I send a POST request to "http://localhost:8080/reservation" with the following:
                """
                {"tweet":"Hello World!","lat":"42.848282", "lng":"74.634933"}
                """



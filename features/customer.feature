Feature: Customer
As a customer
I want to have access to certain information 
So I can view, buy and sell cupcakes

Background:
       Given I created a customer and customer_cupcake

Scenario: Do not see the default rails page
	  Given I am in the home page
      Then I should not see "You'r riding Ruby on Rails"
      And I should not see "About your application's environment"
      And I should not see "Create you data base"

Scenario: View "About Us"
	  Given I am in the home page
	  When I follow the "About Us" link
	  Then I should see "Cupcakes About Us" in the "title"


Scenario: View "Contact Us"
	  Given I am in the home page
	  When I follow the "Contact Us" link
	  Then I should see "Cupcakes Contact Us" in the "title"


Scenario: View "Privacy Policy"
	  Given I am in the home page
	  When I follow the "Privacy Policy" link
	  Then I should see "Cupcakes Privacy Policy" in the "title"











	  
Scenario: View Home information in header
	Given I am in the home page
	Then I should see "Home" in the "header"

Scenario: View About Us information in footer
	Given I am in the home page
	Then I should see "About Us" in the "footer"

Scenario: View Contact Us information in footer
	Given I am in the home page
	Then I should see "Contact Us" in the "footer"	
	
Scenario: View Privacy Policy information in footer
	Given I am in the home page
	Then I should see "Privacy Policy" in the "footer"
	
	
	
	








Scenario: creating a customer
	Given I follow the new customer path
	When I enter "Asma" in 'Firstname' 
	And I enter "Al-kubaisi" in 'Lastname'
	And I enter "POOBox 12345" in 'Address'
	And I enter "aliya@aliya.com" in 'Email'
	And I enter "97444667532" in 'Phone'
	And I click on "Create Customer"
	Then I should be seeing "Asma Al-kubaisi was successfully created."
	
Scenario: creating a customer cupcake
	Given I follow the new customer cupcake path
	When I enter "batata" in 'Name' 
	And I select "Mini" in 'Size'
	And I select "Red Velvet" in 'Flavor'
	And I select "Cream Cheese" in 'Icing'
	And I enter "anything" in 'Additional topping'
	And I click on "Create Customer cupcake"
	Then I should be seeing "batata was successfully created."


# Essential Feed App - Image Feed Feature
[![Quality Gate Status](https://sonarcloud.io/api/project_badges/measure?project=fronder_EssentialFeed&metric=alert_status)](https://sonarcloud.io/summary/new_code?id=fronder_EssentialFeed)

BDD Specs

Story: Customer requests to see the feed

Narrative #1

As an online customer 
I want the app to automatically load my latest image feed
So I can always enjoy the newest images of my friends

Scenario (Acceptance criteria)

Given The customer has connectivity
When The customer request to see the feed
Then The app should display the latest feed from remote And replace the cache
	with the new feed

Narrative #2

As an offline customer
I want the app to show the latest saved version of my image feed
So I can always enjoy images of my friends

Scenario (Acceptance criteria)

Given The customer doesn’t have connectivity
When The customer requests to see the feed
Then The app should display the latest feed saved

Given The customer doesn’t have connectivity
And The cache is empty 
When The customer requests to see the feed
Then The app should display an error message



Use Cases

Load Feed

Data

Url

Primary course (happy path):

Execute “Load Feed Items” command with above data.
System downloads data from the URL.
System validates downloaded data.
System creates feed items from validated data.
System delivers feed items.

Invalid data - error course (sad path):

System delivers error.

No connectivity - error course (sad path):

System delivers error.


Load Feed Fallback (Cache)

Data

Max age

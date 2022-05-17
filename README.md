# Essential Feed App - Image Feed Feature
[![Quality Gate Status](https://sonarcloud.io/api/project_badges/measure?project=fronder_EssentialFeed&metric=alert_status)](https://sonarcloud.io/summary/new_code?id=fronder_EssentialFeed)

BDD Specs

Story: Customer requests to see the feed

Narrative #1

As an online customer 
I want the app to automatically load my latest image feed
So I can always enjoy the newest images of my friends

Scenario (Acceptance criteria)

Given the customer has connectivity
When the customer request to see the feed
Then the app should display the latest feed from remote 
And replace the cache with the new feed

Narrative #2

As an offline customer
I want the app to show the latest saved version of my image feed
So I can always enjoy images of my friends

Scenario (Acceptance criteria)

Given The customer doesn’t have connectivity
And there's a cached version of the feed
And the cache is less than seven days old
When the customer requests to see the feed
Then the app should display the latest feed saved

Given The customer doesn't have connectivity
And there's a chached version of the feed
And the cache is seven days old or more
When the customer requests to see the feed
Then the app should display an error message  

Given The customer doesn’t have connectivity
And the cache is empty 
When the customer requests to see the feed
Then the app should display an error message



Use Cases

### Load Feed From Cache Use Case

Data

Url

### Primary course (happy path):
1. Execute “Load Feed Items” command with above data.
2. System downloads data from the URL.
3. System validates downloaded data.
4. System creates image feed from valid data.
5. System delivers image feed.

Invalid data - error course (sad path):

System delivers invalid data error.

No connectivity - error course (sad path):

System delivers connectivity error.


Load Feed Fallback (Cache)

Data

Max age

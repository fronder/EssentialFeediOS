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

#### Primary course (happy path):
1. Execute “Load Feed Items” command with above data.
2. System retrieves feed data from cache.
3. System validates cache is less than seven days old.
4. System creates image feed from cached data.
5. System delivers image feed.

#### Retrieval error course (sad path):
1. System delivers error.

#### Expired cache course (sad path):
1. System delivers no feed images.

#### Empty cache course (sad path):
1. System delivers no feed images.


### Validate Feed Cache Use Case

#### Primary course (happy path):
1. Execute “Validate Cache” command with above data.
2. System retrieves feed data from cache.
3. System validates cache is less than seven days old.

#### Retrieval error course (sad path):
1. System deletes cache.

#### Expired cache course (sad path):
1. System deletes cache.



Caching

- Retrieve
    - Empty cache returns empty
    - Empty cache twice returns empty (no side-effects)
    - Non-empty cache returns data
    - Non-empty cache twice returns same data (no side-effects)
    - Error (if applicable, e.g. invalid data)
    - Error twice returns same error (if applicable, e.g. invalid data)
    
- Insert
    - To empty cache stores data
    - To non-empty cache overrides previous data with new data
    - Error (if applicable, e.g., no write permission)
    
- Delete
    - Empty cache does nothing (cache stays empty and does not fail)
    - Non-empty cache leaves cache empty
    - Error (if applicable, e.g., no delete permission)
    
- Side-effects must run serially to avoid race-conditions

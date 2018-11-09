## What is WolframAlphaKit?

WolframAlphaKit is an [iOS shortcut](https://support.apple.com/guide/shortcuts/welcome/ios) that acts as something akin to a library, allowing your own shortcuts to:

* perform a query against WolframAlpha;
* optionally parse the response using your own custom JSONPath so you can retrieve additional details (e.g. images);
* guide the user through the process of entering their existing WolframAlpha API key, or signing up for a new one.
	
> WolfraAlpha has a free tier that allows for up to 2,000 queries a month. As it's a paid service, each user needs to sign up for their own key.

## Installing WolframAlphaKit

The shortcut can be installed from the following link:

> [Install WolframAlphaKit](https://routinehub.co/shortcut/781)
	
## WolframAlphaKit behavior

When your Shortcut calls WolframAlphaKit, it first checks to see if you have an API Key.

#### User has a key

If you have an API key, it performs your query and returns you the result.


#### User does not have a key
If the user does not have a key, they are asked if they want to:

- Sign up for an API key
- Enter their existing API key

The Shortcut will then guide the end user through the process of signing up and / or entering their key.

Once added, the end user can make use of any shortcut that uses WolframAlphaKit to query the WolframAlpha service without having to re-enter their API key.

![Example Shortcut](https://i.imgur.com/kQAveaR.gif)

_An example of a user making using a WolframAlphaKit based shortcut for the first time_

## Query WolframAlphaKit from your shortcut

To query WolframAlphaKit, you need to create a Dictionary with the following keys and value:



Key 		| Value
-----		|------
action 		| query
input		| _Your WolframAlpha Query (e.g. `Population of New York` )_
jsonPath _(optional)_	| _The JSON path query used to return the result from the API response._

>  *For those familiar the API response:*
>
>  By default, WolframAlphaKit takes the `plaintext` subpods values from the `Result` pod.

You then run the WolframAlphaKit shortcut with the Dictionary as the input:

![Dictionary as input](https://i.imgur.com/oS844iH.png)

It returns a dictionary with `exitCode` and `result` values.


Key 		| Value
-----		|------
exitCode	| Returns `0` for a success response or `> 0` for an error.
result		| The result of your query


## Shortcut template

A shortcut template can be installed from the following link:

> [Install WolframAlphaKit Template](https://routinehub.co/shortcut/800)

## Special mention

A shoutout goes to [Mike Beasley](https://twitter.com/MikeBeas) whose work on the [UpdateKit](http://www.mikebeas.com/updatekit/) shortcut inspired me to work on this project.

#!/usr/bin/python3
import requests
""" a script that has a method that returns the 
    number of subscribers
"""
def number_of_subscribers(subreddit):
    """ a methos that returns the number of a subscribers """
    headers = {"User-Agent": "chrome 5.8"}
    url = "https://www.reddit.com/r/{}/about.json".format(subreddit)
    response = requests.get(url,headers=headers, allow_redirects=False)
    if response.status_code == 200:
        return (response.json().get('data').get('subscribers'))
    else:
        return (0)

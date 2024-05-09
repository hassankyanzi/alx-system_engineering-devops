#!/usr/bin/python3
"""
Module to query the Reddit API recursively and return a list containing the titles of all hot articles for a given subreddit.
"""

import requests

def recurse(subreddit, hot_list=[], after=None):
    """
    Recursively query the Reddit API and return a list containing the titles of all hot articles for a given subreddit.

    Args:
        subreddit (str): The name of the subreddit.
        hot_list (list): A list to store the titles of hot articles. Default is an empty list.
        after (str): The 'after' token to fetch the next page of results. Default is None.

    Returns:
        list or None: A list containing the titles of all hot articles for the given subreddit. 
                      Returns None if no results are found for the subreddit.
    """
    url = f"https://www.reddit.com/r/{subreddit}/hot.json"
    headers = {'User-Agent': 'Custom User Agent'}
    params = {'limit': 100, 'after': after}  # Number of posts per request and the 'after' token
    response = requests.get(url, headers=headers, params=params, allow_redirects=False)
    
    if response.status_code == 200:
        data = response.json()
        for post in data['data']['children']:
            hot_list.append(post['data']['title'])
        
        if data['data']['after'] is not None:
            # Recursive call to fetch next page
            return recurse(subreddit, hot_list=hot_list, after=data['data']['after'])
        else:
            return hot_list
    else:
        return None

if __name__ == "__main__":
    subreddit = input("Enter subreddit name: ")
    hot_articles = recurse(subreddit)
    if hot_articles is not None:
        print("Titles of hot articles:")
        for title in hot_articles:
            print(title)
    else:
        print(None)

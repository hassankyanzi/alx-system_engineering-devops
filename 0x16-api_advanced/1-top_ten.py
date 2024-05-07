#!/usr/bin/python3

"""
Module to retrieve the titles of the first 10 hot posts for a given subreddit using the Reddit API.
"""

import requests

def top_ten(subreddit):
    """
    Retrieve the titles of the first 10 hot posts for a given subreddit.
    
    Args:
        subreddit (str): The name of the subreddit to search.

    Returns:
        None: If the subreddit is invalid.
        List[str]: Titles of the first 10 hot posts for the given subreddit.
    """
    url = f"https://www.reddit.com/r/{subreddit}/hot.json?limit=10"
    headers = {"User-Agent": "Mozilla/5.0"}
    
    try:
        response = requests.get(url, headers=headers)
        response.raise_for_status()  # Raise exception for non-200 status codes
        data = response.json()
        for post in data['data']['children']:
            print(post['data']['title'])
    except requests.RequestException as e:
        print(None)

if __name__ == "__main__":
    import sys
    if len(sys.argv) < 2:
        print("Please pass an argument for the subreddit to search.")
    else:
        top_ten(sys.argv[1])


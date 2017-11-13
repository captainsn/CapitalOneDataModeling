
# coding: utf-8

# In[138]:

#Author: Sandip Nirmel
import matplotlib.pyplot as plt
import csv
import geoplotlib
from geoplotlib.utils import read_csv
import numpy as np
import pandas as pd
import re


# In[189]:

listings = pd.read_csv('listings.csv')
listings2 = pd.read_csv('listings2.csv')
for item in price_col:
    item = item.strip('$')

# Formatting the price column so that the prices are floats
# This will allow me to perform the linear interpolation later on
prices =  []
for item in listings2['price']:
    prices.append(float(re.sub('[,$]','',item)))
prices

# Extracts the latitude and longitude columns from the listings array
# Concatenates these columns, along with the column containing prices 
extracted_cols = np.array([listings2['lat'],listings2['lon'],prices])
transpose = np.transpose(extracted_cols)
# Write the latitude and longitude columns to a csv
with open('lat_lon_prices.csv', 'wb') as f:
    writer = csv.writer(f)
    writer.writerows(transpose)
with open('lat_lon_prices2.csv', 'wb') as f:
    writer = csv.writer(f)
    writer.writerows(extracted_cols)


# In[190]:

#Visualization 1: A map that depicts geographical distribution of listings 
from geoplotlib.colors import ColorMap
from geoplotlib.colors import colorbrewer
from geoplotlib.utils import epoch_to_str, BoundingBox, read_csv
geoplotlib.dot(listings2,color='blue')
geoplotlib.show()


# In[180]:

# Second Visualization: Distribution of Prices
plt.hist(prices, bins = 1000, range = (0, 1000))
plt.title("Distribution of sub-$1000 Airbnb Listings by Price in San Francisco")
plt.xlabel("Price (USD)")
plt.ylabel("Number of Listings")
plt.show()


# In[182]:

# Third Visualization: Distribution of Customer Ratings
plt.hist(listings2['review_scores_rating'], bins = 100, range = (50, 100))
plt.title("Distribution of Listings by Customer Rating")
plt.xlabel("Customer Rating")
plt.ylabel("Number of Listings")
plt.show()


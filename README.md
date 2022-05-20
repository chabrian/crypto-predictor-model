# Crypto-Predictor-Model

Google Slides Presentation:

https://docs.google.com/presentation/d/1osnXG7ekbSfd0CvpOe8LRtvBTFQdVWlRWibVyDO1Dwg/edit#slide=id.g129b6a2aaa7_0_107

Link to Tableau Public: https://public.tableau.com/app/profile/teddy.accardi/viz/CryptoPredictionModel

### Selected Topic: Cryptocurrency Predictor Model
We have selected our topic to be within the cryptocurrency space. We wanted to explore this area and decided to build a supervised learning model to take in historical pricing data and predict what the price of a given cryptocurrency will be at various points in the future. Multiple of our team members are interested in crypto and we decided to take our interests and take on a project that will be both fun and challenging as we look forward into the job hunt and life after the bootcamp. 

### Source Material
We procured our daily historical pricing from a crypto tracking site (coincodex.com) in a csv file for Cardano (ADA), Ethereum (ETH) and Ripple (XRP). We gathered daily pricing data for the day's open, close, high, low, trading volume and market cap as our features for the machine learning model. We have data going back several years to provide enough info for as highly predictive of a model as we can.

### Open Questions
Some questions we hope to answer are:
- What will our model predict that the price of Cardano will be at various points in the future?
- Is supervised learning the best option to tell us this?
- Can we apply the same model to other cryptocurrencies?
- Will other categories of crypto behave similarly? 

We created GitHub branches for each part of our project: the presentation/project overview, machine learning model, the database and the dashboard. Each member will be owning a particular piece of it to ensure it is up to date through each segment of the final project, but we will all be contributing to each part.  

### Analysis Phase
After sourcing the historical pricing data for each of the three cryptocurrencies, we decided to use a linear regression supervised learning model to train our historical data on our features and predict what the daily closing price of each cryptocurrency will be for the next 30 and 60 days. We then connected this data to store in a Postgres database via AWS RDS and extracted it from Postgres to visualize in Tableau. Within these visualizations we allow the user to filter between our 30 and 60 day predictive models, as well as choose which cryptocurrency they would like displayed amongst the three for both the predictions, as well as the historical models, adding an interactive element to our charts.

### Historical Data

![Candlestick](Images/Candlestick_Chart.png)

Note: From the figures above, we see that these three cryptos have herd mentality and closely follow each other in spikes and troughs. Interstingly, cryptos picked up during the pandemic years and if one looks beyond the covers it was when disposable income in the form of stimulus checks were handed out.

![Historical Pricing with Volume_2](Images/Historical_Dual_Chart_with_Volume.png)

Note: Volume increase is accompanied almost instantaneously by a price spike, higher or lower. Volume is an important input feature because of its immediate handshake with price.

### Prediction Models 

![Prediction Model_2](Images/Prediction_Model.png)

![ARIMA vs Linear Regression](Images/ARIMA_vs_Linear_Regression.png)

Note:

### Summary

Data Teams analysis and inference:
Linear regression outputs were different from the ARIMA model. From a structure standpoint the ARIMA model used two features (original date and the close price). Whereas the linear regression mode used open, high, close, volume and marketcap.
We recommend using the linear regression because the number of inputs. 

Extending the model:
Provide an input scheme to include cryptos as required via a file uplaod. Currently it is restricted to 3 cryptos
Include latest novel techniques and features such as market sentiment and other statitical attributes used by the stok market analysts.
Lastly, we encourage developer input to further hone this model. Perhaps bring in additional features such as market sentiment, or even factors like calamities and wars the impact they have on the crypto market and individual prices.

NB: Every model has its pros and cons and any users of this model should understand its risks and youroguhly investigate the logic prios=r to investing.






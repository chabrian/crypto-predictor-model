# Crypto-Predictor-Model 


[Link To Google Slides](https://docs.google.com/presentation/d/1osnXG7ekbSfd0CvpOe8LRtvBTFQdVWlRWibVyDO1Dwg/edit#slide=id.g129b6a2aaa7_0_107)

[Link to Tableau Public](https://public.tableau.com/app/profile/teddy.accardi/viz/CryptoPredictionModel/Story?publish=yes)

### Selected Topic: Cryptocurrency Predictor Model 
We have selected our topic to be within the cryptocurrency space. We wanted to explore this area and decided to build a supervised learning model to take in historical pricing data and predict what the price of a given cryptocurrency will be at various points in the future. Multiple of our team members are interested in crypto and we decided to take our interests and take on a project that will be both fun and challenging as we look forward into the job hunt and life after the bootcamp. 

### Source Material 
We procured our daily historical pricing from a crypto tracking site (coincodex.com) in a csv file for Cardano (ADA), Ethereum (ETH) and Ripple (XRP). We gathered daily pricing data for the day's open, close, high, low, trading volume and market cap as our features for the machine learning model. We have data going back several years to provide enough info for as highly predictive of a model as we can.

### Open Questions 
Some questions we hope to answer are:
- What will our model predict that the price of Cardano, Ethereum and Ripple will be at various points in the future? Is supervised learning the best option to tell us this?
- Can we apply the same model to other cryptocurrencies? We have provided a subset of Ethereum, Cardano and Ripple
- Will different cryptos with their different price volumes and differing real world utility behave similarly?

We created GitHub branches for each part of our project: the presentation/project overview, machine learning model, the database and the dashboard. Each member will be owning a particular piece of it to ensure it is up to date through each segment of the final project, but we will all be contributing to each part.  

### Analysis Phase
After sourcing the historical pricing data for each of the three cryptocurrencies, we decided to use a linear regression supervised learning model to train our historical data on our features and predict what the daily closing price of each cryptocurrency will be for the next 30 and 60 days. We then connected this data to store in a Postgres database via AWS RDS and extracted it from Postgres to visualize in Tableau. Within these visualizations we allow the user to filter between our 30 and 60 day predictive models, as well as choose which cryptocurrency they would like displayed amongst the three for both the predictions, as well as the historical models, adding an interactive element to our charts. See more details on the machine learning model in the next section.

**Requirements:**
- We selected our three cryptos to model for 30 and 60 day predicted closing prices (ETH, XRP, ADA)
- Historical data for the above three cryptos were obtained from www.coincodex.com 
- We decided to manage the data through a PostgreSQL database, hosted on Amazon's AWS RDS, which provided data storage capabilities and protected data storage abilities
- We selected the linear regression model from the sklearn to train, test and predict closing prices based on a feature list of high, low, open, close, volume and market cap. Noticeable in this feature list is the absence of time.
- Additionally, we wanted to include a model that included time as an input feature so we created a secondary model: ARIMA.

#### Machine Learning Model

- Linear Regression Model

The linear regression model uses six input features to train the model with the target variable being the close price 30 or 60 days forward from the feature data. The six features include open, high, low, close, volume, and market cap data over a period of approximately four years. Each features plays a role in predicting the future price in that together they describe the spread, activity, and volatility each day. 

- Training, Testing, and Accuracy for the LRM

The model was tested using recent historical data and comparing it to the trained model predicted output. We split the data into training and testing datasets by separating the most up-to-date information. The model accuracy is calculated using the root mean squared error (RMSE) and the mean absolute percentage error (MAPE). The mean absolute percentage error for the linear regression model was calculated at 0.515, implying that the model is 48.5% accurate in predicting the next 30 days. Once we achieved a comfortable level of accuracy, we used the trained model to forecast the 30-day and 60-day closing price.

- Autoregressive Integrated Moving Average Model (ARIMA)

We used the ARIMA model from the statsmodel Python library using the date and closing price as the two training features. By nature of the ARIMA model, it only trains on historical (autoregressive) information and therefore, there is no target data. The ARIMA model has three input parameters in addition to the dataset: predictors, differencing, and error. Predictors are used to describe the MA (moving average) term. Differencing is used to make the data stationary by taking the difference between subsquent data points. The error parameter helps to quanitify the 'white noise' hidden in the data influenced by external market factors like market sentiment. The optimal ARIMA model was discovered to use first order differencing, second order predictors and second order error (2,2,1).

- Training, Testing, and Accuracy for the ARIMA model

The model was trained using the historical clsoing price data available over the past four years. We validated the model by comparing it to the most recent closing price data as shown in the Tablaeu visualizations. The accuracy of the model was calculated using the actual closing price data and forecasted predicted closing price using the root mean squared error (RMSE) and the mean absolute percentage error (MAPE).  The mean absolute percentage error for the linear regression model was calculated at ___, implying that the model is ___ accurate in predicting the next 30 days. The three tuning parameters were adjusted accordingly to achieve the greatest accuracy.

- Model Comparison

The linear regression model including more input features that help to describe the anticipated closing price without overfitting the data. The linear model also outputs daily interval results opposed to the ARIMA model which only has the ability to forecast linearly. Despite these positive features, the linear regression model fails to consider the time component that is critical for timeseries forecasting. This is where the ARIMA model has an advantage, particularly in its ability to consider the 'white noise' error and velocity of the changing parameters.

The ideal model would be a combination of the linear regression model and ARIMA model that uses multiple features as well as the ARIMA tuning parameters. Both models are designed using functions and generalized inputs making it easy to build on. We encourage other developers to use our models as a foundation for a more complex and comprehensive cryptocurrency price predictor model.

### Historical Data

![Candlestick](Images/Candlestick_Chart.png)

Note: The variety in sizing of the daily candlesticks illustrated in this chart show how the prices of cryptocurrencies not only day to day, but throughout the course of the day as well. The length of each candlestick, and their accompanying grey tracking line behind, correspond to the spreads between open and close, as well as high and low. These are the extra features that we feed into the linear regression models, but not the ARIMA models, which only take the closing price, and give us increased confidence in the linear regression model as a result.

![Historical Pricing with Volume_2](Images/Historical_Dual_Chart_with_Volume.png)

Note: From the figures above, we see that these three cryptos have a herd mentality and closely follow each other in spikes and troughs. Interstingly, cryptos picked up during the pandemic years and if one looks beyond the covers it was when disposable income in the form of stimulus checks were handed out at a time when individuals were stuck at home and not having the same avenues to spend that disposable income elsewhere like they had in the past. Volume increase is accompanied almost instantaneously by a price spike, higher or lower. Volume is an important input feature because of its immediate handshake with price.

### Prediction Models 

![Prediction Model_2](Images/Prediction_Model.png)

Note: We see a slight shift in the chart from the actual price to the 30 and 60 day linear regression models. This is due to the data being trained to forecast 30 and 60 days into the future and since time isn't a feature of this linear regression model, it doesn't inherently know it is using current data to predict out 30 and 60 days. This causes a slight shift in the historical data since each new day is being used to predict 30 and 60 days into the future as it is fed into the model.

![ARIMA vs Linear Regression](Images/ARIMA_vs_Linear_Regression.png)

Note: Since the ARIMA method is forecasting out to a certain point, it takes a linear path to get to the desired 30 and 60 day price. Interestingly, despite the very different paths the linear regression and ARIMA models take to the 30 and 60 predicted prices, they both predict similar prices 30 and 60 days into the future (ending points of the above chart). 

### Summary

- Data Teams analysis and inference:

Linear regression outputs were different from the ARIMA model. From a structure standpoint the ARIMA model used two features (original date and the close price). Whereas the linear regression mode used open, high, close, volume and marketcap.
We recommend using the linear regression because the number of inputs. 

- Extending the model:

Provide an input scheme to include cryptos as required via a file uplaod. Currently it is restricted to 3 cryptos
Include latest novel techniques and features such as market sentiment and other statitical attributes used by the stok market analysts.
Lastly, we encourage developer input to further hone this model. Perhaps bring in additional features such as market sentiment, or even factors like calamities and wars the impact they have on the crypto market and individual prices.

NB: Every model has its pros and cons and any users of this model should understand its risks and thoroughly investigate the logic prior to investing.

Answering our initial questions:

- What will our model predict that the price of Cardano, Ethereum and Ripple will be at various points in the future? Is supervised learning the best option to tell us this?

Findings: 

**30 Day Linear Regression:** ADA: $0.82  ETH: $2,815.23  XRP: $0.64

**30 Day ARIMA:** ADA: $0.84  ETH: $2,969.46  XRP: $0.64 

**60 Day Linear Regression:** ADA: $0.81  ETH: $2,838.94  XRP: $0.64

**60 Day ARIMA:** ADA: $0.85  ETH: $3,016.93  XRP: $0.65 

- Can we apply the same model to other cryptocurrencies? We have provided a subset of Ethereum, Cardano and Ripple

Findings: Yes. Because the features of our model are metrics that are universally available for any cryptocurrency, it is easily replicable for any crypto, as we showed by performing the analysis on three separate ones.`

- Will different cryptos with their different price volumes and differing real world utility behave similarly? 

Findings: Yes. Ethereum and Cardano have far different volumes and market caps, but both behave similarly when plotted on a chart, pointing to a "herd mentality" across the crypto space, or at least amongst those we modeled. 

## Description of feature engineering and the feature selection, including their decision making process

Data is loaded from the historical data from the CSV- See Database.md in the Database/ directory. The file contained the following data:

| type_crypto | date_orig | daystarttoend | open_ | high_ | low_ | close_ | volume_ | marketcap_ |
| ----------: | --------: | ------------: | ----: | ----: | ---: | -----: | ------: | ---------: |
|             |           |               |       |       |      |        |         |            |

**daystarttoend** was eliminated since it did not contain relevant information for the model. It was the number of days from the firs day that the data is available for a crypto. It was used more to determine the accuracy of the historical data and to make sure there was more than 1000 rows of data.

- Then the date field date_orig was transformed to a datetime format using:

```
crypto_df['date_orig'] = pd.to_datetime(crypto_df["date_orig"])
```

- Data was then rationalized to remove empty rows

  ```
  df_pre_final = df_clean.dropna()
  ```

- relevant features were dropped after selecting the close_pred as the target variable

  ```
  df_final = df_pre_final[['open_','high_','low_','close_','volume_','marketcap_','close__pred']]
  ```

  ```
  X = df_final.drop('close__pred', axis=1)
  ```

- Then data stores for each of the three models were created.

```
#initial output tables
clean_df_60_day = pd.DataFrame()
predict_df_60_day = pd.DataFrame()
clean_df_30_day = pd.DataFrame()
predict_df_30_day = pd.DataFrame()
```



## Description of how data was split into training and testing sets

For the training sets of features:

X was selected as X = df_final.drop('close__pred', axis=1)


y was selected as:  y = df_final['close__pred']

## Explanation of model choice, including limitations and benefits

The LinearRegression model was chsen.

```
 model = LinearRegression()
```

We chose Linear regression to (1) forecasting the event (namely the future prices of the three cryptos), and (2) trend forecasting.  In our investigation, we also concluded there were other features that we could use for example fear and greed or the Stock index and it would still fit well into the model.

While there are easy benefits as described above, there are limitations when there are non-linear relationships in the data. For example in the article"
VL  - 15, DO  - 10.1108/IJMF-06-2017-0107, JO  - International Journal of Managerial Finance
ER  -  the authors (P.k. Sahoo, D Sethi, D Acharya) state that:

:...[t]hat investors cannot simply base their decisions on the linear dynamics of the bitcoin market. This is because new information in terms of the TV is neither linearly related to the price nor it is a one-to-one kind of relationship as most investors commonly understand it to be. Rather, investors’ decisions should be based on non-linear models, ..."

Explanation of changes in model choice (if changes occurred between the Segment 2 and Segment 3 deliverables)

So far we have also ventured to choose another model to analyze the outputs between the LinearProgression model and the timeseries prediction model - Auto Regression Integration Moving Average Model (ARIMA). The ARIMA model describes how each successive observation in a series is related to previous observations. It is a special case of a linear progression model.

A multiple regression linear model (the one that we have used) on the other hand relates an independent variable to a dependent variable.



## Description of how they have trained the model thus far, and any additional training that will take place 

The data has been split to cater to the unique data sets present in the historical data csv input - array(['ada', 'eth', 'xrp'], dtype=object)

The linear regression model has been trained as: model.fit(X,y) where X is the target value i.e., close_pred and y re the multiple feature inputs.



## Description of current accuracy score Additionally, the model obviously addresses the question or problem the team is solving








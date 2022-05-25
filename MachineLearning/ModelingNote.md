# Modeling Acknowledgement

The ARIMAModelCombined and SupervisedModelCombined are the models we chose to implement and illustrate. 

The other modeling files provide steping stones and alternate methods of modeling that can be later explored for further development.

## Modeling Results

The models output data frames that are sent to Postgres as a packaged product with the date, actual close price, and predicted close price. 
See database and dashboard notes for more information.

The models had varying calculated accuracy scores. The accuracy may be improved with further training and additional feature inputs, however, a model with greater accuracy is likely to be overfit as we saw in the ARIMA model.
Results may be enhanced by considering market breadth and market sentiment which play a vital role in market prediction indicators. These parameters were not included in this analysis due to the limited availability of free and accessible market sentiment data detailed enough for the machine learning models.

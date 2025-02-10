# GrandSlamsClassification
This project explores classification models to analyze match data from Grand Slam tennis tournaments, specifically focusing on player performance metrics such as first serve percentage, aces, winners, break points, and net points attempted.

## Classification ##
In this repository, five different classification methods were analyzed: (1) Logistic Regression, (2) K-Nearest Neighbor (KNN), (3) Support Vector Machine (SVM) - linear method, (4) SVM - Non Linear (rbf) method and (5) Naive Bayes. The classifier was trained using the Australian Open men's (2013) dataset from UC Irvine Machine Learning Repository (https://archive.ics.uci.edu/dataset/300/tennis+major+tournament+match+statistics). 

## A Little bit of Tennis Background ##
In tennis, the four most important tournaments (at least for me) are called Grand Slams (GS). There are four GS, and the order of them happening yearly is: (1) Australian Open (AO), (2) French Open (FO), (3) Wimbledon (W), (4) US Open (UsO). Because AO is the first GS of the year, AO's dataset was used as the training model.

## Things Considered When Looking at the Dataset ##
- The datasets have a total of 42 features. Where each player has 20 features (2 players = 40) and the other two features are "Round" and "Result".
- Features used for data training: (1) Input: First Serve Percentage, (2) Second Serve Percentage, (3) Winners, (4) Break Points Caused, (5) Net Points Attempted

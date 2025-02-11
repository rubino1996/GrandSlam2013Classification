# GrandSlamsClassification
This project explores classification models to analyze match data from Grand Slam tennis tournaments, specifically focusing on player performance metrics such as first serve percentage, aces, winners, break points, and net points attempted.

## Classification ##
In this repository, five different classification methods were analyzed: (1) Logistic Regression, (2) K-Nearest Neighbor (KNN), (3) Support Vector Machine (SVM) - linear method, (4) SVM - Non Linear (rbf) method and (5) Naive Bayes. The classifier was trained using the Australian Open men's (2013) dataset from UC Irvine Machine Learning Repository (https://archive.ics.uci.edu/dataset/300/tennis+major+tournament+match+statistics). 

## A Little bit of Tennis Background ##
In tennis, the four most important tournaments (at least for me) are called Grand Slams (GS). There are four GS, and the order of them happening yearly is: (1) Australian Open (AO), (2) French Open (FO), (3) Wimbledon (W) and (4) US Open (UsO). Because AO is the first GS of the year, AO's dataset was used as the training model.

## Things Considered When Looking at the Dataset ##
- The datasets have a total of 42 features. Where each player has 20 features (2 players = 40) and the other two features are "Round" and "Result".
- Features used for data training: (1) Input: First Serve Percentage, Second Serve Percentage, ACE, Winners, Break Points Caused and Net Points Attempted. (2) Output/Target: Result.

## Best Accuracy Classifier ##
The best accuracy obtained from the five different classifier methods used was Logistic Regression (LR). LR gave an accuracy of around 84.4%, so LR was used to predict the "Result" against the actual Result (given the same features) for the other unobserved datasets (FO, W and UsO).

## Results using LR as our classifier ##
- LR was chosen because it gave the highest accuracy against all other classifier methods for this case scenario
- Predicting French Open had an accuracy of around 84%
- Predicting Wimbledon had an accuracy of around 70.2%
- Predicting Us Open had an accuracy of around 80.2%

## Data Visualization using R ##
Visualization of some important features (considered to me) in Tennis are done using the file "visualization.R". Visualization here is done using the AO dataset considering only the two players who reached the final (Rafael Nadal and Stanislas Wawrinka).  

## Figure 1: Winners vs First Serve Percentage ##
![Winner-FirstServePercentage](W-FSP.png)

- Nadal maintained a high first serve percentage throughout the tournament, except in the first round and the semifinal.
- Wawrinka had a consistently low first serve percentage but managed to hit over 50 winners per match, except in the first round.
- Both players recorded their lowest numbers in terms of winners and first serve percentage during the first round.

## Figure 2: Unforced Errors vs Second Serve Percentage ##
![UnforcedError-SecondServePercentage](UE-SSP.png)

- Wawrinka maintained a high second serve percentage but also averaged a high number of unforced errors.
- Nadal, on the other hand, had a lower second serve percentage and, on average, fewer unforced errors than Wawrinka.
- Nadal recorded his highest second serve percentage and fewest unforced errors in the first round.
- Wawrinka had his lowest unforced error count in the first round, but it also marked his lowest second serve percentage.

## Figure 3: Net Points Attempted vs First Serve Won ##
![NetPointAttempted-FirstServePointWon](NPA-FSW.png)

- Wawrinka showed more consistency in approaching the net throughout the tournament and, on average, won more points on his first serve than Nadal.
- Nadal had an unusually high number of net attempts in the fifth round or quarterfinal, possibly indicating a strategic shift to overcome his opponent.
- Both players recorded a notably low number of points won on their first serve during the first round.
- Nadal had his lowest net attempt and first-serve points won in the first round, which might explain why his unforced errors were also minimal in that match.

## Things to Consider ##
Feel free to modify the R code to visualize additional key features that you find most relevant, and extend the analysis to other tournaments (French Open, Wimbledon, and US Open). Currently, the R visualization focuses on the two finalists from the Men's draw of the Australian Open (2013). Additionally, you can experiment with different classification methods, such as Decision Trees or Random Forest, to compare their accuracy against Logistic Regression. Beyond classification, this dataset can also be explored using other analytical approaches, including Clustering and Regression.

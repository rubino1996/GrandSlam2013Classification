# Player 1              Name of Player 1
# Player 2              Name of Player 2
# Result                Result of the match (0/1) - Referenced on Player 1 is Result = 1 if Player 1 wins (FNL.1>FNL.2)
# FSP.1                 First Serve Percentage for player 1 (Real Number)
# FSW.1                 First Serve Won by player 1 (Real Number)
# SSP.1                 Second Serve Percentage for player 1 (Real Number)
# SSW.1                 Second Serve Won by player 1 (Real Number)
# ACE.1                 Aces won by player 1 (Numeric-Integer)
# DBF.1                 Double Faults committed by player 1 (Numeric-Integer)
# WNR.1                 Winners earned by player 1 (Numeric)
# UFE.1                 Unforced Errors committed by player 1 (Numeric)
# BPC.1                 Break Points Created by player 1   (Numeric)  
# BPW.1                 Break Points Won by player 1    (Numeric) 
# NPA.1                 Net Points Attempted by player 1 (Numeric)
# NPW.1                 Net Points Won by player 1  (Numeric)      
# TPW.1                 Total Points Won by player 1 (Numeric)
# ST1.1                 Set 1 result for Player 1 (Numeric-Integer)
# ST2.1                 Set 2 Result for Player 1 (Numeric-Integer)
# ST3.1                 Set 3 Result for Player 1 (Numeric-Integer)
# ST4.1                 Set 4 Result for Player 1 (Numeric-Integer)
# ST5.1                 Set 5 Result for Player 1 (Numeric-Integer) 
# FNL.1                 Final Number of Games Won by Player 1 (Numeric-Integer)
# FSP.2                 First Serve Percentage for player 2 (Real Number)
# FSW.2                 First Serve Won by player 2 (Real Number)
# SSP.2                 Second Serve Percentage for player 2 (Real Number)
# SSW.2                 Second Serve Won by player 2 (Real Number)
# ACE.2                 Aces won by player 2 (Numeric-Integer)
# DBF.2                 Double Faults committed by player 2 (Numeric-Integer)
# WNR.2                 Winners earned by player 2 (Numeric)
# UFE.2                 Unforced Errors committed by player 2 (Numeric)
# BPC.2                 Break Points Created by player 2   (Numeric)  
# BPW.2                 Break Points Won by player 2    (Numeric) 
# NPA.2                 Net Points Attempted by player 2 (Numeric)
# NPW.2                 Net Points Won by player 2  (Numeric)      
# TPW.2                 Total Points Won by player 2 (Numeric)
# ST1.2                 Set 1 result for Player 2 (Numeric-Integer)
# ST2.2                 Set 2 Result for Player 2 (Numeric-Integer)
# ST3.2                 Set 3 Result for Player 2 (Numeric-Integer)
# ST4.2                 Set 4 Result for Player 2 (Numeric-Integer)
# ST5.2                 Set 5 Result for Player 2 (Numeric-Integer) 
# FNL.2                 Final Number of Games Won by Player 2 (Numeric-Integer)
# Round                 Round of the tournament at which game is played (Numeric-Integer)



df <- read.csv("AusOpen-men-2013.csv")

head(df)
tail(df)

#Rafael Nadal
#-------------------------------------------------
rn_filtered <- df[df$Player1=="Rafael Nadal", ]

rn_filtered <- rn_filtered[, c("Player1", "Round", "FSP.1", "WNR.1", "SSP.1", "UFE.1", "FSW.1", "NPA.1")]

#Changing the name to a more readable format
names(rn_filtered)[names(rn_filtered) == "Player1"] <- "Player"
names(rn_filtered)[names(rn_filtered) == "FSP.1"] <- "First.Serve.Percentage"
names(rn_filtered)[names(rn_filtered) == "WNR.1"] <- "Winners"
names(rn_filtered)[names(rn_filtered) == "SSP.1"] <- "Second.Serve.Percentage"
names(rn_filtered)[names(rn_filtered) == "UFE.1"] <- "Unforced.Error"
names(rn_filtered)[names(rn_filtered) == "FSW.1"] <- "First.Serve.Won"
names(rn_filtered)[names(rn_filtered) == "NPA.1"] <- "Net.Points.Attempted"

#Removing round 3 from Rafael Nadal to match Wawrinka's dataset
#Wawrinka did not play round 3 (Player was injured?)
rn_filtered <- rn_filtered[rn_filtered$Round != 3, ]
#-------------------------------------------------

#Stanislas Wawrinka
#-------------------------------------------------
sw_filter_1 <- df[df$Player1=="Stanislas Wawrinka", ]
sw_filter_1 <- sw_filter_1[, c("Player1", "Round", "FSP.1", "WNR.1", "SSP.1", "UFE.1", "FSW.1", "NPA.1")]
#Changing the name to a more readable format
names(sw_filter_1)[names(sw_filter_1) == "Player1"] <- "Player"
names(sw_filter_1)[names(sw_filter_1) == "FSP.1"] <- "First.Serve.Percentage"
names(sw_filter_1)[names(sw_filter_1) == "WNR.1"] <- "Winners"
names(sw_filter_1)[names(sw_filter_1) == "SSP.1"] <- "Second.Serve.Percentage"
names(sw_filter_1)[names(sw_filter_1) == "UFE.1"] <- "Unforced.Error"
names(sw_filter_1)[names(sw_filter_1) == "FSW.1"] <- "First.Serve.Won"
names(sw_filter_1)[names(sw_filter_1) == "NPA.1"] <- "Net.Points.Attempted"


sw_filter_2 <- df[df$Player2=="Stanislas Wawrinka", ]
sw_filter_2 <- sw_filter_2[, c("Player2", "Round", "FSP.2", "WNR.2", "SSP.2", "UFE.2", "FSW.2", "NPA.2")]
#Changing the name to a more readable format
names(sw_filter_2)[names(sw_filter_2) == "Player2"] <- "Player"
names(sw_filter_2)[names(sw_filter_2) == "FSP.2"] <- "First.Serve.Percentage"
names(sw_filter_2)[names(sw_filter_2) == "WNR.2"] <- "Winners"
names(sw_filter_2)[names(sw_filter_2) == "SSP.2"] <- "Second.Serve.Percentage"
names(sw_filter_2)[names(sw_filter_2) == "UFE.2"] <- "Unforced.Error"
names(sw_filter_2)[names(sw_filter_2) == "FSW.2"] <- "First.Serve.Won"
names(sw_filter_2)[names(sw_filter_2) == "NPA.2"] <- "Net.Points.Attempted"

#Combining the two filter
sw_filtered <- rbind(sw_filter_1, sw_filter_2)



#----------------------------------------------------------------------------
#Merging the two finalists
merged_data <- rbind(rn_filtered,sw_filtered)


#----------------------------------------------------------------------------
#Plot

#qplot(data=merged_data, x=First.Serve.Percentage, y=First.Serve.Won, color=Player, 
      #size=Round, shape=I(20), main= "Rafael Nadal and Stanislas Wawrinka Run for AU OPEN (2013)")
#qplot(data=merged_data, x=Unforced.Error, y=First.Serve.Percentage, color=Player, 
      #size=Round, shape=I(20), main= "Rafael Nadal and Stanislas Wawrinka Run for AU OPEN (2013)")
#qplot(data=merged_data, x=Winners, y=First.Serve.Percentage, color=Player, 
      #size=Round, shape=I(20), main= "Rafael Nadal and Stanislas Wawrinka Run for AU OPEN (2013) Title")


library(ggplot2)
# Plot 1
plot_1 <- ggplot(data=merged_data, aes(x=First.Serve.Percentage, y=Winners)) +
  geom_point(aes(size=Round, colour=Player)) +
  xlab("First Serve Percentage") +
  ylab("Winners") +
  ggtitle("Rafael Nadal and Stanislas Wawrinka Run for AU OPEN (2013) Title") + 
  theme(axis.title.x = element_text(colour="Blue", size = 30),
        axis.title.y = element_text(colour = "Blue", size = 30),
        axis.text.x = element_text(size = 20),
        axis.text.y = element_text(size = 20),
        legend.title = element_text(size = 20),
        legend.text = element_text(size = 20),
        plot.title = element_text(colour = "Black", size = 40, hjust = 0.5),
        text = element_text(family="Comic Sans MS"))

# Plot 2
plot_2 <- ggplot(data=merged_data, aes(x=Second.Serve.Percentage, y=Unforced.Error)) +
  geom_point(aes(size=Round, colour=Player)) +
  xlab("Second Serve Percentage") +
  ylab("Unforced Errors") +
  ggtitle("Rafael Nadal and Stanislas Wawrinka Run for AU OPEN (2013) Title") + 
  theme(axis.title.x = element_text(colour="Blue", size = 30),
        axis.title.y = element_text(colour = "Blue", size = 30),
        axis.text.x = element_text(size = 20),
        axis.text.y = element_text(size = 20),
        legend.title = element_text(size = 20),
        legend.text = element_text(size = 20),
        plot.title = element_text(colour = "Black", size = 40, hjust = 0.5),
        text = element_text(family="Comic Sans MS"))

# Plot 3
plot_3 <- ggplot(data=merged_data, aes(x=First.Serve.Won, y=Net.Points.Attempted)) +
  geom_point(aes(size=Round, colour=Player)) +
  xlab("First Serve Won") +
  ylab("Net Points Attempted") +
  ggtitle("Rafael Nadal and Stanislas Wawrinka Run for AU OPEN (2013) Title") + 
  theme(axis.title.x = element_text(colour="Blue", size = 30),
        axis.title.y = element_text(colour = "Blue", size = 30),
        axis.text.x = element_text(size = 20),
        axis.text.y = element_text(size = 20),
        legend.title = element_text(size = 20),
        legend.text = element_text(size = 20),
        plot.title = element_text(colour = "Black", size = 40, hjust = 0.5),
        text = element_text(family="Comic Sans MS"))

# Print the plots
plot_1
plot_2
plot_3








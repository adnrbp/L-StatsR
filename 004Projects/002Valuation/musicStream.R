MONTHS <- c(1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60)
ACTIVITY_RATE <- c(1.0000, 0.9500, 0.9025, 0.8574, 0.8145, 0.7738, 0.7351, 0.6983, 0.6634, 0.6302, 0.5987, 0.5688, 0.5404, 0.5133, 0.4877, 0.4633, 0.4401, 0.4181, 0.3972, 0.3774, 0.3585, 0.3406, 0.3235, 0.3074, 0.2920, 0.2774, 0.2635, 0.2503, 0.2378, 0.2259, 0.2146, 0.2039, 0.1937, 0.1840, 0.1748, 0.1661, 0.1578, 0.1499, 0.1424, 0.1353, 0.1285, 0.1221, 0.1160, 0.1102, 0.1047, 0.0994, 0.0945, 0.0897, 0.0853, 0.0810, 0.0769, 0.0731, 0.0694, 0.0660, 0.0627, 0.0595, 0.0566, 0.0537, 0.0510, 0.0485)
HOURS_PER_MONTH <- c(394.152, 400.928, 407.528, 413.952, 420.200, 426.272, 432.168, 437.888, 443.432, 448.800, 453.992, 459.008, 463.848, 468.512, 473.000, 477.312, 481.448, 485.408, 489.192, 492.800, 496.232, 499.488, 502.568, 505.472, 508.200, 510.752, 513.128, 515.328, 517.352, 519.200, 520.872, 522.368, 523.688, 524.832, 525.800, 526.592, 527.208, 527.648, 527.912, 528.000, 527.912, 527.648, 527.208, 526.592, 525.800, 524.832, 523.688, 522.368, 520.872, 519.200, 517.352, 515.328, 513.128, 510.752, 508.200, 505.472, 502.568, 499.488, 496.232, 492.800)
COST_PER_SONG <- c(0.01, 0.01, 0.01, 0.01, 0.01, 0.01, 0.01, 0.01, 0.01, 0.01, 0.01, 0.01, 0.01, 0.01, 0.01, 0.01, 0.01, 0.01, 0.01, 0.01, 0.01, 0.01, 0.01, 0.01, 0.01, 0.01, 0.01, 0.01, 0.01, 0.01, 0.01, 0.01, 0.01, 0.01, 0.01, 0.01, 0.01, 0.01, 0.01, 0.01, 0.01, 0.01, 0.01, 0.01, 0.01, 0.01, 0.01, 0.01, 0.01, 0.01, 0.01, 0.01, 0.01, 0.01, 0.01, 0.01, 0.01, 0.01, 0.01, 0.01)
SONG_LENGTH <- c(3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3)
REV_PER_SUBSCRIBER <- c(10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10)

premium <- data.frame(MONTHS=MONTHS,ACTIVITY_RATE=ACTIVITY_RATE,HOURS_PER_MONTH=HOURS_PER_MONTH,
						COST_PER_SONG=COST_PER_SONG,SONG_LENGTH=SONG_LENGTH,REV_PER_SUBSCRIBER=REV_PER_SUBSCRIBER)

# explore dataset
names(premium)
#"MONTH"
#"ACTIVITY_RATE" #percent active (listening music)
#"HOURS_PER_MONTH" #hours used in a month   

#"COST_PER_SONG"
#"SONG_LENGTH"
#"REV_PER_SUBSCRIBER"






head(premium)

# premium business models
premium_model <- premium
#number...Songs Played: (Percent Active) x (Hours Listened / Month) / (Avg. Song Length)
#listening time(=activity rate * hours per month ) by song length
premium_model$SONGS_PLAYED <- premium$ACTIVITY_RATE * premium$HOURS_PER_MONTH / premium$SONG_LENGTH

#Subscription Revenue: (Percent Active) x (Revenue / Subscription)
#per time active
premium_model$REV_SUBSCRIPTION <- premium$ACTIVITY_RATE * premium$REV_PER_SUBSCRIBER
#Song Royalty Expense: (# Songs Played) x (Cost / Song)
premium_model$COST_SONG_PLAYED <- premium_model$SONGS_PLAYED * premium$COST_PER_SONG

# inspect results
head(premium_model)






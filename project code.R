library(tidyverse)
install.packages(tidyverse)
install
install.packages()
library(tidyverse)
socialmedia <- read.csv("Students_Social_Media_Addiction.csv")
socialmedia <- read.csv("Students_Social_Media_Addiction.csv")
socialmedia <- read.csv ("Students_Social_Media_Addiction.csv")
socialmedia <- read.csv ("Socialmedia_data.csv")


#what is the relationship between Social media usage 
#and sleep per night with different academic leves 
#in females and male students?

#negative slop regardless of academic level. Less sleep = higher average time of usage regardless of gender
ggplot(socialmedia, aes(x = Avg_Daily_Usage_Hours, 
                        y = Sleep_Hours_Per_Night,
                        color = Gender, shape = Gender)) +
                        geom_point() + geom_smooth(method = "lm") +
  facet_wrap(~Academic_Level) + labs(
    x = "Average of Daily Usage in Hours",
    y = "Sleep Hours per Night",
    title = "Relationship Between 
Sleep and Media Usage"
  )
 

# How Academic performance affected by sleep hours per night with the usage of
#specific media platforms?


#box plot (worked) there is a relationship between hours 
#of sleep and perceived academic performance!
ggplot(socialmedia, aes ( x = as.factor( Affects_Academic_Performance), 
                          y = Sleep_Hours_Per_Night )) + geom_boxplot() +
  facet_wrap(~Most_Used_Platform) + 
  labs(
    x = "Academic Performance",
    y = "Hours of Sleep",
    title = "Does Social Media Affect Sleep? 
A comparison by Platform and Academic Impact ")

#all students that were "not affected" slept at least 6 hrs per night 
#regardless of the media platform they were using.

#Bar- Social media's impact on academics by platform..
ggplot(socialmedia, aes ( x =( Affects_Academic_Performance), fill = Academic_Level 
)) + geom_bar() +
  facet_wrap(~Most_Used_Platform)  + 
  labs(
    x = "Media Usage Affects Academic Performance",
    y = "Count",
    title = "Social Media's impact on Academics by Platform")
  

#Addiction score by Gender
ggplot(socialmedia, aes(y = Addicted_Score, fill = Gender)) +
  geom_bar() + facet_wrap(~Most_Used_Platform) + 
labs(
  x = "count",
  y = "Addiction Score",
  title = "Addiction Scores Across Social Media
Platforms by Gender")

#Depending on the platform, gender is important to consider. Media usage between genders 
#is inconsistent across all platforms, but most students had a higher addiction scores in facebook,
#instagram, tiktok, whatsapp, linkedIn and Snapchat. 


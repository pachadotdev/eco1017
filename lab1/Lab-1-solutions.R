# Task 1

# Uploding the data
me_df <- read.csv("Lab_1_ME.csv", header = TRUE)
me_df # Take a look at the table

# Plotting stem&leaf plot
stem(me_df$Milit_Exp)


# Task 2

# Uploading the data
iq_df <- read.csv("Lab_1_IQ.csv", header = TRUE)
iq_df # Take a look at the table

# Making a histogram

# We need to create a list of numbers that defines the bins
# By hand
brk_points_v <- c(75, 85, 95, 105, 115, 125, 135, 145, 155)
# Automatically
brk_points <- seq(min(75), max(155), length.out = 9)

# Plotting histogram
hist(iq_df$IQ_score, main = "Distribution by IQ",    # Change the title
     xlab = "bins", ylab = "number of observations", # Change the axis labels
     labels = TRUE,                                  # Show numbers over the bins
     ylim = c(0,20),                                 # Change the range of the y axis
     breaks = brk_points,                            # Define the bins specifically
     xaxt = "n",                                     # Do not show default ticks on x axis
     col = "darkmagenta",                            # Change colour of the bins
     border = "darkmagenta"                          # Change colour of the borders of the bins
     )
axis(side = 1, at = brk_points)                      # Changing ticks on the x axis

# END
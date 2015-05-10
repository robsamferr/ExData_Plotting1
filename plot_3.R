source("load_hpc.R")

plot_3 <- function(plot3_df=NULL) {
    # Loading data from filtered subset
    if(is.null(plot3_df)) plot3_df <- load_hpc()

    # Invoke png graphic device to create image
    png("plot_3.png", width=480, height=480)

    # Create Sub metering basic plot (Sub_metering_1)
    plot(plot3_df$Time, plot3_df$Sub_metering_1, type="l", col="black",
         xlab="", ylab="Energy sub metering")

    # Adding Sub metering 2 and 3 to plot
    lines(plot3_df$Time, plot3_df$Sub_metering_2, col="red")
    lines(plot3_df$Time, plot3_df$Sub_metering_3, col="blue")

    # Adding legend at the graphics' top right
    legend("topright", col=c("black", "red", "blue"),
           c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
           lty=1)
    
    # Close graphics device
    dev.off()
}

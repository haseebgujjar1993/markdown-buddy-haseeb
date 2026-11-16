# coffee_sales_summary.R
# Markdown Buddy project | BDA400 Assignment 1 | Haseeb
#
# Purpose: summarise a synthetic coffee shop sales file. We compute total
# revenue per product, revenue per day and the overall average order value,
# then save the product summary to output/product_summary.csv.
#
# The dataset is synthetic (generated with a fixed seed), no real customer
# data is involved.

# ---- Load the data -------------------------------------------------------
sales <- read.csv("data/coffee_sales.csv", stringsAsFactors = FALSE)
sales$date <- as.Date(sales$date)
sales$revenue <- sales$quantity * sales$unit_price  # line total per order

cat("Orders loaded:", nrow(sales), "\n")
cat("Date range:", format(min(sales$date)), "to", format(max(sales$date)), "\n\n")

# ---- Revenue per product -------------------------------------------------
# we aggregate the line totals by product and sort from best to worst seller
product_summary <- aggregate(revenue ~ product, data = sales, FUN = sum)
product_summary$orders <- as.integer(table(sales$product)[product_summary$product])
product_summary <- product_summary[order(-product_summary$revenue), ]
product_summary$revenue <- round(product_summary$revenue, 2)

cat("==== Revenue per product ====\n")
print(product_summary, row.names = FALSE)

# ---- Revenue per day -----------------------------------------------------
daily <- aggregate(revenue ~ date, data = sales, FUN = sum)
cat("\n==== Daily revenue ====\n")
cat("Best day:", format(daily$date[which.max(daily$revenue)]),
    "with", round(max(daily$revenue), 2), "\n")
cat("Average per day:", round(mean(daily$revenue), 2), "\n")

# ---- Average order value -------------------------------------------------
cat("\nAverage order value:", round(mean(sales$revenue), 2), "\n")

# ---- Save the product summary --------------------------------------------
if (!dir.exists("output")) dir.create("output")
write.csv(product_summary, "output/product_summary.csv", row.names = FALSE)
cat("\nSaved: output/product_summary.csv\n")

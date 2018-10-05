weights_lookup =
  list(
    daily = 24/7,
    weekly = 24/2,
    hourly = 1
  )

norm_coefficient = function(true_mean_consumption, weight) {
  weight / true_mean_consumption
}

NMAE = function(predicted, actual, true_mean_consumption, pred_type) {
  sum(abs(predicted - actual)) * norm_coefficient(true_mean_consumption, weights_lookup[pred_type])
}

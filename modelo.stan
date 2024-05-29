data {
  int<lower=0> N;
  vector[N] t;
  vector[N] temp_obs;
  vector[N] y;
}

parameters {
  real beta0;
  real beta1;
  real<lower=0> sigma;
}

model {
  beta0 ~ normal(2.525, 0.38);
  beta1 ~ normal(-0.175, 0.042);
  sigma ~ normal(, 6.5)
  y ~ normal(beta0 + beta1 * t, sigma);
}


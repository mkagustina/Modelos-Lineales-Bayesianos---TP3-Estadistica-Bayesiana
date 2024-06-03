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
  beta0 ~ normal(2.571, 0.0578);
  beta1 ~ normal(-0.15, 0.017);
  sigma ~ normal(0,0.91);
  y ~ normal(beta0 + beta1 * t, sigma);
}


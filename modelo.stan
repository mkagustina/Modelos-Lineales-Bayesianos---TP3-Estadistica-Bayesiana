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
  beta0 ~ normal(2.333, 0.064);
  beta1 ~ normal(-0.225, 0.025);
  sigma ~ normal(0,0.89);
  y ~ normal(beta0 + beta1 * t, sigma);
}

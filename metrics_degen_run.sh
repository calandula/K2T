#!/bin/bash

# Change path (-file=) to the file for which you want to calculate the metrics

python metrics_degen2.py -file='./results/guide_context/tests/Results_Model_gpt2-large_nBeams_4_guideContext_True_.txt' -n_sample=30
python metrics_degen2.py -file='./results/guide_context/tests2/Results_Model_gpt2_nBeams_4_guideContext_True_.txt' -n_sample=30
python metrics_degen2.py -file='./results/guide_context/tests3/Results_Model_gpt2-large_nBeams_4_guideContext_False_.txt' -n_sample=30
python metrics_degen2.py -file='./results/guide_context/tests4/Results_Model_gpt2-large_nBeams_4_guideContext_False_.txt' -n_sample=30

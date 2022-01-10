#!/bin/bash

###### Default Values

# python main2.py -mode='next' -file_name='/data/guide_context/30KWFOOTBALL.txt' -results_subfolder=tests -weight='5.0' -top_p='0.9' -n_generated_sentences=20 -n_beams=4 -do_guarantee=True -guide_context=True
# python main2.py -mode='next' -file_name='/data/guide_context/30KWFOOTBALL.txt' -results_subfolder=tests2 -weight='5.0' -top_p='0.9' -n_generated_sentences=20 -n_beams=4 -do_guarantee=True -guide_context=True -model=gpt2
# python main2.py -mode='next' -file_name='/data/guide_context/30KWFOOTBALL.txt' -results_subfolder=tests3 -weight='5.0' -top_p='0.9' -n_generated_sentences=20 -n_beams=4 -do_guarantee=True
# python main2.py -mode='next' -file_name='/data/guide_context/30KWOFOOTBALL.txt' -results_subfolder=tests4 -weight='5.0' -top_p='0.9' -n_generated_sentences=20 -n_beams=4 -do_guarantee=True
# python main2.py -mode='next' -file_name='/data/guide_context/30KWFOOTBALL.txt' -results_subfolder=tests5 -weight='5.0' -top_p='0.9' -n_generated_sentences=20 -n_beams=4 -do_guarantee=True -guide_context=True -context_weight=2.
# python main2.py -mode='next' -file_name='/data/guide_context/30KWFOOTBALL.txt' -results_subfolder=tests5 -weight='5.0' -top_p='0.9' -n_generated_sentences=20 -n_beams=4 -do_guarantee=True -guide_context=True -context_weight=3.
# python main2.py -mode='next' -file_name='/data/guide_context/30KWFOOTBALL.txt' -results_subfolder=tests5 -weight='5.0' -top_p='0.9' -n_generated_sentences=20 -n_beams=4 -do_guarantee=True -guide_context=True -context_weight=4.
# python main2.py -mode='next' -file_name='/data/guide_context/30KWFOOTBALL.txt' -results_subfolder=tests5 -weight='5.0' -top_p='0.9' -n_generated_sentences=20 -n_beams=4 -do_guarantee=True -guide_context=True -context_weight=5.
  python main2.py -mode='next' -file_name='/data/guide_context/30KWFOOTBALL.txt' -results_subfolder=tests5 -weight='5.0' -top_p='0.9' -n_generated_sentences=20 -n_beams=4 -do_guarantee=True -guide_context=True -context_weight=6.
  python main2.py -mode='next' -file_name='/data/guide_context/30KWFOOTBALL.txt' -results_subfolder=tests5 -weight='5.0' -top_p='0.9' -n_generated_sentences=20 -n_beams=4 -do_guarantee=True -guide_context=True -context_weight=7.


###### END

### no control vs guide words only vs glove guidance
# python main.py -mode='next' -file_name='/data/50_keywordsets_eval/word_sets.txt' -results_subfolder=guide_vs_no_guide_beams -top_p='0.9' -n_generated_sentences=90 -guide=
# python main.py -mode='next' -file_name='/data/50_keywordsets_eval/word_sets.txt' -results_subfolder=guide_vs_no_guide_beams -weight='5.0' -top_p='0.9' -n_generated_sentences=90 -only_max=True
# python main.py -mode='next' -file_name='/data/50_keywordsets_eval/word_sets.txt' -results_subfolder=guide_vs_no_guide_beams -weight='10.0' -top_p='0.9' -n_generated_sentences=90 -only_max=True
# python main.py -mode='next' -file_name='/data/50_keywordsets_eval/word_sets.txt' -results_subfolder=guide_vs_no_guide_beams -weight='20.0' -top_p='0.9' -n_generated_sentences=90 -only_max=True
# python main.py -mode='next' -file_name='/data/50_keywordsets_eval/word_sets.txt' -results_subfolder=guide_vs_no_guide_beams -weight='5.0' -top_p='0.9' -n_generated_sentences=90
# python main.py -mode='next' -file_name='/data/50_keywordsets_eval/word_sets.txt' -results_subfolder=guide_vs_no_guide_beams -weight='10.0' -top_p='0.9' -n_generated_sentences=90
# python main.py -mode='next' -file_name='/data/50_keywordsets_eval/word_sets.txt' -results_subfolder=guide_vs_no_guide_beams -weight='20.0' -top_p='0.9' -n_generated_sentences=90

### evaluating shift strength
# python main.py -mode='next' -file_name='/data/50_keywordsets_eval/word_sets.txt' -results_subfolder=guide_vs_no_guide_beams -weight='5.0' -top_p='0.9' -n_generated_sentences=90 -do_guarantee=True
# python main.py -mode='next' -file_name='/data/50_keywordsets_eval/word_sets.txt' -results_subfolder=guide_vs_no_guide_beams -weight='10.0' -top_p='0.9' -n_generated_sentences=90 -do_guarantee=True
# python main.py -mode='next' -file_name='/data/50_keywordsets_eval/word_sets.txt' -results_subfolder=guide_vs_no_guide_beams -weight='15.0' -top_p='0.9' -n_generated_sentences=90 -do_guarantee=True
# python main.py -mode='next' -file_name='/data/50_keywordsets_eval/word_sets.txt' -results_subfolder=guide_vs_no_guide_beams -weight='20.0' -top_p='0.9' -n_generated_sentences=90 -do_guarantee=True
# python main.py -mode='next' -file_name='/data/50_keywordsets_eval/word_sets.txt' -results_subfolder=guide_vs_no_guide_beams -weight='25.0' -top_p='0.9' -n_generated_sentences=90 -do_guarantee=True
# python main.py -mode='next' -file_name='/data/50_keywordsets_eval/word_sets.txt' -results_subfolder=guide_vs_no_guide_beams -weight='30.0' -top_p='0.9' -n_generated_sentences=90 -do_guarantee=True

### comparing different unordered modes
# python main.py -mode='next' -file_name='/data/50_keywordsets_eval/word_sets.txt' -results_subfolder=comparing_modes -weight='5.0' -top_p='0.9' -n_generated_sentences=90 -do_guarantee=True
# python main.py -mode='max' -file_name='/data/50_keywordsets_eval/word_sets.txt' -results_subfolder=comparing_modes -weight='5.0' -top_p='0.9' -n_generated_sentences=90 -do_guarantee=True
# python main.py -mode='random' -file_name='/data/50_keywordsets_eval/word_sets.txt' -results_subfolder=comparing_modes -weight='5.0' -top_p='0.9' -n_generated_sentences=90 -do_guarantee=True
# python main.py -mode='all' -file_name='/data/50_keywordsets_eval/word_sets.txt' -results_subfolder=comparing_modes -weight='5.0' -top_p='0.9' -n_generated_sentences=90 -do_guarantee=True

### comparing different decoding methods
#python main.py -mode='next' -file_name='/data/50_keywordsets_eval/word_sets.txt' -results_subfolder=decoding_methods -weight='5.0' -top_p='0.9' -n_generated_sentences=90 -do_guarantee=True
#python main.py -mode='next' -file_name='/data/50_keywordsets_eval/word_sets.txt' -results_subfolder=decoding_methods -weight='5.0' -top_p='0.0' -n_generated_sentences=90 -do_guarantee=True

### ROC
#python main.py -mode='max' -file_name='/data/ROC/ROCStories_20_storylines_500_0.txt' -results_subfolder=final4_ -weight='5.0' -top_p='0.9' -n_generated_sentences=-7 -n_beams=4 -do_guarantee=True

### Keyword to Article
#python main.py -mode='max' -file_name='/data/keyword_to_articles' -results_subfolder=tmp -key2article=True -weight='5.0' -top_p='0.9' -n_generated_sentences=-15 -n_beams=4 -do_guarantee=True


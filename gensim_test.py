import gensim.downloader as api
import pickle

word_embedding = ["fasttext-wiki-news-subwords-300", "word2vec-google-news-300", "glove-wiki-gigaword-300", "conceptnet-numberbatch-17-06-300"]

for we in word_embedding:
    encoder = api.load(we)

    word1 = encoder["word"]
    with open(f'./gensim-data/{we}.pkl', 'wb') as f:
        pickle.dump(encoder, f, pickle.HIGHEST_PROTOCOL)

    with open(f'./gensim-data/{we}.pkl', 'rb') as f:
        enc_dict = pickle.load(f)
        word2 = enc_dict["word"]

    print(word1[0] == word2[0])


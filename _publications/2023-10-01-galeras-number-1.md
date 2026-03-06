<!-- ---
title: "Benchmarking Causal Study to Interpret Large Language Models for Source Code"
collection: publications
permalink: /publication/2023-10-01-galeras-number-1
excerpt: 'One of the most common solutions adopted by software researchers to address code generation is by training Large Language Models (LLMs) on massive amounts of source code. Although a number of studies have shown that LLMs have been effectively evaluated on popular accuracy metrics (e.g., BLEU, CodeBleu), previous research has largely overlooked the role of Causal Inference as a fundamental component of the interpretability of LLMs'' performance. Existing benchmarks and datasets are meant to highlight the difference between the expected and the generated outcome, but do not take into account confounding variables (e.g., lines of code, prompt size) that equally influence the accuracy metrics. The fact remains that, when dealing with generative software tasks by LLMs, no benchmark is available to tell researchers how to quantify neither the causal effect of SE-based treatments nor the correlation of confounders to the model''s performance. In an effort to bring statistical rigor to the evaluation of LLMs, this paper introduces a benchmarking strategy named Galeras comprised of curated testbeds for three SE tasks (i.e., code completion, code summarization, and commit generation) to help aid the interpretation of LLMs'' performance. We illustrate the insights of our benchmarking strategy by conducting a case study on the performance of ChatGPT under distinct prompt engineering methods. The results of the case study demonstrate the positive causal influence of prompt semantics on ChatGPT''s generative performance by an average treatment effect of ≈3%. Moreover, it was found that confounders such as prompt size are highly correlated with accuracy metrics (≈0.412%). The end result of our case study is to showcase causal inference evaluations, in practice, to reduce confounding bias. By reducing the bias, we offer an interpretable solution for the accuracy metric under analysis.'
date: 2023-10-01
venue: 'ICSME 2023'
paperurl: 'https://ieeexplore.ieee.org/abstract/document/10336302'
arxiv: 'https://arxiv.org/abs/2308.12415'
#citation: 'Your Name, You. (2009). &quot;Paper Title Number 1.&quot; <i>Journal 1</i>. 1(1).' -->
---
This paper introduces a benchmarking strategy named Galeras for evaluating the performance of Large Language Models (LLMs) in software engineering tasks. The strategy includes curated testbeds for code completion, code summarization, and commit generation. The paper presents a case study on the performance of ChatGPT, demonstrating the positive causal influence of prompt semantics on generative performance. It also highlights the correlation of confounders such as prompt size with accuracy metrics. The benchmarking strategy aims to reduce confounding bias and provide an interpretable solution for analyzing accuracy metrics in LLMs.

**Links:**
- [Published Version (IEEE)](https://ieeexplore.ieee.org/abstract/document/10336302)
- [arXiv Preprint](https://arxiv.org/abs/2308.12415)


Recommended citation: @misc{rodriguezcardenas2023benchmarkingcausalstudyinterpret,
      title={Benchmarking Causal Study to Interpret Large Language Models for Source Code}, 
      author={Daniel Rodriguez-Cardenas and David N. Palacio and Suwash Silwal and Henry Burke and Denys Poshyvanyk},
      year={2023},
      eprint={2308.12415},
      archivePrefix={arXiv},
      primaryClass={cs.SE},
      url={https://arxiv.org/abs/2308.12415}, 
}
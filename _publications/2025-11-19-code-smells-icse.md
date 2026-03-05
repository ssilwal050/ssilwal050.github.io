---
title: "A Causal Perspective on Measuring, Explaining and Mitigating Smells in LLM-Generated Code"
collection: publications
permalink: /publication/2025-11-19-code-smells-icse
excerpt: 'Recent advances in large language models (LLMs) have accelerated their adoption in software engineering contexts. However, concerns persist about the structural quality of the code they produce. In particular, LLMs often replicate poor coding practices, introducing code smells (i.e., patterns that hinder readability, maintainability, or design integrity). Although prior research has examined the detection or repair of smells, we still lack a clear understanding of how and when these issues emerge in generated code. This paper addresses this gap by systematically measuring, explaining and mitigating smell propensity in LLM-generated code. We build on the Propensity Smelly Score (PSC), a probabilistic metric that estimates the likelihood of generating particular smell types, and establish its robustness as a signal of structural quality. Using PSC as an instrument for causal analysis, we identify how generation strategy, model size, model architecture and prompt formulation shape the structural properties of generated code. Our findings show that prompt design and architectural choices play a decisive role in smell propensity and motivate practical mitigation strategies that reduce its occurrence. A user study further demonstrates that PSC helps developers interpret model behavior and assess code quality, providing evidence that smell propensity signals can support human judgement. Taken together, our work lays the groundwork for integrating quality-aware assessments into the evaluation and deployment of LLMs for code.'
date: 2025-11-19
venue: 'ICSE 2026'
paperurl: 'https://arxiv.org/abs/2511.15817'
---
This paper addresses the critical gap in understanding code smells in LLM-generated code by introducing a systematic approach to measure, explain, and mitigate smell propensity. We develop the Propensity Smelly Score (PSC), a probabilistic metric that estimates the likelihood of generating particular smell types, and establish its robustness as a signal of structural quality. Through causal analysis, we identify how generation strategy, model size, model architecture, and prompt formulation shape the structural properties of generated code. Our findings demonstrate that prompt design and architectural choices play a decisive role in smell propensity, and we propose practical mitigation strategies. A user study shows that PSC helps developers interpret model behavior and assess code quality, providing evidence that smell propensity signals can support human judgement.

**Links:**
- [arXiv Preprint](https://arxiv.org/abs/2511.15817)

Recommended citation: @article{velasco2025causal,
      title={A Causal Perspective on Measuring, Explaining and Mitigating Smells in LLM-Generated Code}, 
      author={Alejandro Velasco and Daniel Rodriguez-Cardenas and Dipin Khati and David N. Palacio and Luftar Rahman Alif and Denys Poshyvanyk},
      journal={Proceedings of the International Conference on Software Engineering (ICSE)},
      year={2026},
      url={https://arxiv.org/abs/2511.15817}
}


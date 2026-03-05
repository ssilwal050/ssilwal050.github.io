---
title: "Towards More Trustworthy and Interpretable LLMs for Code through Syntax-Grounded Explanations"
collection: publications
permalink: /publication/2024-07-14-syntax-grounded-explanations
excerpt: "Trustworthiness and interpretability are inextricably linked concepts for LLMs. The more interpretable an LLM is, the more trustworthy it becomes. However, current techniques for interpreting LLMs when applied to code-related tasks largely focus on accuracy measurements, measures of how models react to change, or individual task performance instead of the fine-grained explanations needed at prediction time for greater interpretability, and hence trust. To improve upon this status quo, this paper introduces ASTrust, an interpretability method for LLMs of code that generates explanations grounded in the relationship between model confidence and syntactic structures of programming languages. ASTrust explains generated code in the context of syntax categories based on Abstract Syntax Trees and aids practitioners in understanding model predictions at both local (individual code snippets) and global (larger datasets of code) levels. By distributing and assigning model confidence scores to well-known syntactic structures that exist within ASTs, our approach moves beyond prior techniques that perform token-level confidence mapping by offering a view of model confidence that directly aligns with programming language concepts with which developers are familiar. To put ASTrust into practice, we developed an automated visualization that illustrates the aggregated model confidence scores superimposed on sequence, heat-map, and graph-based visuals of syntactic structures from ASTs. We examine both the practical benefit that ASTrust can provide through a data science study on 12 popular LLMs on a curated set of GitHub repos and the usefulness of ASTrust through a human study. Our findings illustrate that there is a causal connection between learning error and an LLM's ability to predict different syntax categories according to ASTrust – illustrating that our approach can be used to interpret model effectiveness in the context of its syntactic categories. Finally, users generally found ASTrust's visualizations useful in understanding the trustworthiness of model predictions."
date: 2024-07-14
venue: "Major Revision"
paperurl: "https://arxiv.org/abs/2407.08983"
---
The paper introduces ASTrust, an innovative interpretability method for large language models (LLMs) focused on coding tasks, highlighting the crucial link between interpretability and trustworthiness. Current interpretation techniques often emphasize accuracy or performance metrics rather than providing detailed, fine-grained explanations needed for understanding model predictions. ASTrust addresses this gap by generating explanations grounded in the relationship between model confidence and the syntactic structures of programming languages, specifically using Abstract Syntax Trees (ASTs). It assigns confidence scores to well-known syntactic structures, facilitating comprehension at both local and global levels. The method includes automated visualizations that enhance user understanding of model predictions. Evaluations demonstrate a causal link between learning errors and the model's ability to predict syntax categories, with users finding ASTrust's visualizations beneficial for assessing the trustworthiness of model outputs.

**Status:** Major Revision

**Links:**
- [arXiv Preprint](https://arxiv.org/abs/2407.08983)

Recommended citation: @misc{palacio2024trustworthyinterpretablellmscode,
      title={Towards More Trustworthy and Interpretable LLMs for Code through Syntax-Grounded Explanations}, 
      author={David N. Palacio and Daniel Rodriguez-Cardenas and Alejandro Velasco and Dipin Khati and Kevin Moran and Denys Poshyvanyk},
      year={2024},
      eprint={2407.08983},
      archivePrefix={arXiv},
      primaryClass={cs.SE},
      url={https://arxiv.org/abs/2407.08983}, 
}
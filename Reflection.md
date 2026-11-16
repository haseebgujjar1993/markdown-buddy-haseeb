# Reflection Questions

## 1. What are the strengths and weaknesses of an AI-assisted documentation workflow?

The biggest strength for me was speed and structure. ChatGPT produced a
sensible README skeleton in seconds, and comparing it with real tidyverse
READMEs showed the sections it suggested were the standard ones. The
weakness is that the draft was confidently wrong in places: it promised
plots my script does not produce, listed an `R/` folder that does not
exist, and invented example output. AI is great at the shape of
documentation and unreliable about the facts, so every claim still has to
be checked against the actual project.

## 2. How did you apply ethical practices when using AI tools?

I disclosed the tool, the prompts and my edits in an AI Assistance
Disclosure section at the bottom of the README, and I added a declaration
to the R Markdown file as well. I only sent ChatGPT a summary of my
project, never data, and the dataset itself is synthetic anyway. Most
importantly, I treated the AI output as a draft to verify, not an answer:
everything factual (file names, outputs, example numbers) was replaced
with what my own run actually produced.

## 3. What did you learn about iterative prompting?

My first prompt gave a generic README that could have belonged to any
project. The quality jumped when I pasted a concrete summary of my script
and then asked for specific revisions (add Installation, Example Code and
License; keep the tone concise). The critique prompt was the most useful
step, it caught a heading level inconsistency I had missed. The lesson is
that one prompt is a starting point, and the refinement and validation
passes are where the real quality comes from.

  
<!--
  currently, just using perplexity seems better
-->
<workflow>
- On each session, automatically:
  1. Fetch about 10 news or useful articles.
  2. They should be based on our industry keywords, tech stack, or general product management. Please gather information from the fields of UI/UX, business, and technology so that you are not biased toward any one area.
  3.Could you directly access to the medium, dev.to, b.hatena.ne.jp and google search engine instead of executing some script. Instead of specifying the KEYWORD directly, we would like you to guess and retrieve news that we might be interested in. Outdated / expired link should not be included in the results. Please ensure that article is not almost empty one and still contains actual content that is worth reading. Following things like below should be excluded from the results.
    e.g. The page you're finding not found.
    e.g. The page you accessed to were deleted or url was changed.
  4. Format the output as:
     ```
     YYYY‑MM‑DD HH:MM:SS | Title: <article title>
     URL: <article URL>
     ```
  5. Print results to standard output (stdout) and the file. URL should be clickable.
  file name (file path) should be tmp/<YYYY-MM-DD_HH_MM_SS>_news.md.
</workflow>

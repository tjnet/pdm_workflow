<workflow>
- On each session, AI must automatically generate and save the output file using the current date and time (e.g., tmp/YYYY-MM-DD_HH_MM_SS_news.md), without waiting for user instructions.
- Collect 10 news items or useful articles.
  - By using `@web` feature, I'm assuming that you can fetch the news. 
  - Select keywords for news gathering based on the rules defined in .cursorrules, ensuring coverage of relevant domains.
  - Exclude outdated, broken-link, advertisement, job posting, or low-content articles.
  - For each candidate URL, check:
    - The link returns HTTP 200 (OK) status.
    - The page is not a 404, expired, or deleted page.
    - The article has sufficient content (not just a title or a few words).
  - Prefer official media, reputable tech blogs, and well-maintained platforms (e.g., Zenn, Dev.to, EdTechZine, official releases).
- Output each article in the following format:
  YYYY‑MM‑DD HH:MM:SS | Title: <article title>
  URL: <article URL>
- Print the results to standard output and save them to a file (using the naming rule above).
- Use the system time to generate the file name (e.g., date '+%Y-%m-%d_%H_%M_%S').
</workflow>

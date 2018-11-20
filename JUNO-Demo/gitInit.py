import sys
from github import Github
import configparser


#reading the GitHub API token
config = configparser.RawConfigParser()
config.read('../config.cfg')
githubToken=config.get('Auth', 'Token')

g = Github(githubToken)

if sys.argv[1]=='create':
    repo = g.get_user().create_repo(
        name=sys.argv[2],
        description="A repository made from JUNO",
        private=False,
        has_issues=True,
        has_wiki=True,
        has_downloads=True,
        has_projects=True,
        auto_init=False,
        allow_squash_merge=True,
        allow_merge_commit=True,
        allow_rebase_merge=True
    )
    print(repo.clone_url)
    sys.exit(0)



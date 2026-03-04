This project has been abandoned on 2025 December 11.

In addition, the canonical repository path is:

*   https://git.rapidcow.org/pub/school/wisc/sdc/fa-25/team/
*   https://github.com/eyzmeng/code-wisc-sdc-fa25-team
*   https://gitee.com/rapidcow/wisc-sdc-fa25-team

(with the latter two serving as backups, in case I get
overwhelmed by bots) and the **home page** is:

*   https://rapidcow.github.io/site-wisc-sdc-fa25-team/

The GitHub organization is confusing because it has
been renamed from SDC-Fall-2025 to SDC-Spring-2026, but
the precense of this repository is in no way an indication
of my participation in the new term.


# Club Radar

This is a Svelte web site over Python WSGI, specifically
[Flask](https://flask.palletsprojects.com/en/stable/),
with CSS written in [Tailwind CSS v4](https://tailwindcss.com/blog/tailwindcss-v4),
and database connectivity managed by [SQLAlchemy](https://www.sqlalchemy.org/).
The database is a static read-only SQLite file, and the
SQL clauses used to create it can be found at [api/var](https://github.com/eyzmeng/code-wisc-sdc-fa25-team/tree/master/api/var).

*   Web site: <https://clubradar.endfindme.com/> or
    <https://src-wisc-sdc-fa25-team.vercel.app/>.
    [**TO BE REMOVED**]
*   Web docs: [[frontend](https://github.com/eyzmeng/code-wisc-sdc-fa25-team/blob/master/web/README.md)] [[backend](https://github.com/eyzmeng/code-wisc-sdc-fa25-team/blob/master/api/README.md)]


I use Vercel to deploy the web site.


## Blurb

Club radar is [a dumb idea](https://rapidcow.github.io/site-wisc-sdc-fa25-team/ideas/club-radar)
I didn't really come up with.  I only gave it the name --- as
a *joke*.  If you think it is a horrible name, that's because
**it is**.  But no one else stepped up, so this is what it is.
Eh.  Good enough to me anyways.

The idea is we would have a search engine for clubs at UW--Madison
(and potentially other universities), and a crawler for extracting
club metadata either on-demand (when user searches for something)
or regularly.  Unfortunately the only thing we --- I'm sorry, *I*
have implemented is the search bar, and all it searches for is a
verbatim club name match.  That is, you must type the *exact* query:

*  `Actuarial Club`
*  `Software Development Club`
*  `Math Club`
*  `Web Development Club`
*  `WebLabs`

At one point the search bar didn't even submit the query when
you hit Enter.  (Sorry Team 13.  This app really is that dumb.)


## Authorship

I have been the sole contributor on this repository, despite
my best effort to make it as clear and welcoming as possible
to contribute.  The others weren't so helpful, not to mention
two team members have quit without an effortful explanation
or a proper apology.  While they are entitled to do what they
want, I am still rather disappointed.  If any one of them
dares to refer to this project, I would be more than happy if
you contacted me so I can un-recommend them as hard as I can.


## License

[MIT](https://github.com/eyzmeng/code-wisc-sdc-fa25-team/blob/master/LICENSE) since [#2](https://github.com/eyzmeng/code-wisc-sdc-fa25-team/issues/2) and [0934abc](https://github.com/eyzmeng/code-wisc-sdc-fa25-team/commit/0934abcf13d14c008b72c15b3218940f5f802d50).


## Contributing

Read [HACKING](../HACKING).

## Integrity

All commits I have authored are signed by this key:
[[Web Key Directory](https://openpgpkey.endfind.me/.well-known/openpgpkey/endfind.me/hu/ho5hkx8deahfsna6y1xe99two3x3mxi7?l=uwisc)]
[[Ubuntu](https://keyserver.ubuntu.com/pks/lookup?search=0x7586e1e327646750684efbe475c8144888bff08a&op=get)]
[[OpenPGP](https://keys.openpgp.org/vks/v1/by-fingerprint/7586E1E327646750684EFBE475C8144888BFF08A)]

```
pub   ed25519/75C8144888BFF08A 2024-08-09 [C] [expires: 2026-07-09]
      7586E1E327646750684EFBE475C8144888BFF08A
uid                            Ethan Meng <ethan.meng@wisc.edu>
uid                            Yizheng Meng <meng69@wisc.edu>
uid                            Ethan Meng <uwisc@endfind.me>
uid                            Yizheng Meng <yizheng.meng@wisc.edu>
uid                            Ethan Meng <meng69@wisc.edu>
sub   ed25519/7EF2A9304CD033CA 2024-08-09 [S] [expires: 2026-07-09]
```

Note that keys may be renewed in the future.

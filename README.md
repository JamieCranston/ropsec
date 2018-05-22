
ropsec
======

Personal Workstation Safety Checks and Utilities

Description
-----------

What's Inside The Tin
---------------------

The following functions are implemented:

-   `full_on_audit()`
-   `sign_commits_with_key()`
-   `gh_store_key()`
-   `summarize_system_checks()`

Installation
------------

``` r
devtools::install_github("ropenscilabs/ropsec")
```

Usage
-----

``` r
library(ropsec)

# current verison
packageVersion("ropsec")
```

    ## [1] '0.1.0'

### Audit

E.g. what ports are used.

``` r
full_audit_results <- full_on_audit()
```

### Sign commits

``` r
key <- sign_commits_with_key("John Doe", "john.doe@gmail.com", "password")
gh_store_key(key)
```

<img src="man/figures/signed_commit.png" align="center"/>

### Lightweight system checks

``` r
ropsec::summarize_system_checks()
```

    ✔ | OK F W S | Context
    ✔ |  1       | SSH Configuration - existence
    ✔ |  2       | SSH Configuration - keys
    ✔ |  1       | SSH Configuration - key size
    ✔ |  1       | GPG Existence
    ✔ |  1       | macOS requires password after sleep or screen saver kicks in [0.1 s]
    ✖ |  0 1     | Firewall is enabled
    # ...

Collaborators
-------------

-   Bob Rudis @hrbrmstr
-   Kara Woo @karawoo
-   Karthik Ram @karthik
-   Ildi Czeller @czeildi

library(gpg)
library(crayon)

gpg::gpg_list_keys()

gpg::gpg_restart(home = "C:/Users/cransj/.gnupg/",
                 path = "C:/My_RStudio/R-4.0.2/library/gpg/bin",
                 silent = F
)
str(gpg_info())
gpg::gpg_version()
(mykey <- gpg_keygen(name = "James Cranston", email = "james.cranston@ext.ons.gov.uk"))
gpg::gpg_list_keys()


gpg_list_signatures("41C2E9C73267B6CB")

get_key_candidates(user_name = "James Cranston",user_email = "james.cranston@ext.ons.gov.uk")
sign_commits_with_key("James Cranston",
                      email = "james.cranston@ext.ons.gov.uk",
                      key ="41C2E9C73267B6CB")
store_public_key(key= "41C2E9C73267B6CB",service = "gh",.token = "")
get_key_candidates()


# # Test case 1
# ## All numeric data
# df <- data.frame(replicate(6, rnorm(1000,mean = 10,sd = 2)))
# names(df) <- letters[1:6]
#
# target_var = "f"
# max_levels_cat_var = 10
# plot_theme = "ggthemes::theme_fivethirtyeight()"
# group_names = NULL
# output_file_name = "./test_results/res1.pptx"
# n_plots_per_slide = 22
#
# res <- generate_exploratory_analysis_ppt(df,target_var, output_file_name,
#                                   n_plots_per_slide = 2,
#                                   plot_theme = "ggthemes::theme_fivethirtyeight()",
#                                   group_names = group_names,
#                                   top_k_features = NULL,
#                                   max_levels_cat_var = 10)
#

# ## Test case 2
# ## All but one numeric..
# df <- data.frame(replicate(6, rnorm(1000,mean = 10,sd = 2)))
# names(df) <- letters[1:6]
# df$cat_var <- sample(c("a","b"),size = 1000, replace = T)
# target_var = "f"
# max_levels_cat_var = 10
# plot_theme = "ggthemes::theme_fivethirtyeight()"
# group_names = NULL
# n_plots_per_slide = 2
# output_file_name = "./test_results/res2.pptx"
#
# res <- generate_exploratory_analysis_ppt(df,target_var, output_file_name,
#                                          n_plots_per_slide = 2,
#                                          plot_theme = "ggthemes::theme_fivethirtyeight()",
#                                          group_names = group_names,
#                                          top_k_features = NULL,
#                                          max_levels_cat_var = 10)


# ## Test case 3
# ## All but one numeric..Categorical variable as the grouping variable
# df <- data.frame(replicate(6, rnorm(1000,mean = 10,sd = 2)))
# names(df) <- letters[1:6]
# df$cat_var <- sample(c("a","b"),size = 1000, replace = T)
# target_var = "f"
# max_levels_cat_var = 10
# plot_theme = "ggthemes::theme_fivethirtyeight()"
# group_names = "cat_var"
# n_plots_per_slide = 2
# output_file_name = "./test_results/res3.pptx"
#
# res <- generate_exploratory_analysis_ppt(df,target_var, output_file_name,
#                                          n_plots_per_slide = 2,
#                                          plot_theme = "ggthemes::theme_fivethirtyeight()",
#                                          group_names = group_names,
#                                          top_k_features = NULL,
#                                          max_levels_cat_var = 10)

#
# ## Test case 4
# ## All Categorical
# df <- data.frame(replicate(6, sample(c(letters[1:8]),size = 1000, replace = T)))
# names(df) <- letters[1:6]
# target_var = "f"
# max_levels_cat_var = 10
# plot_theme = "ggthemes::theme_fivethirtyeight()"
# group_names = NULL
# n_plots_per_slide = 2
# output_file_name = "./test_results/res4.pptx"
#
# res <- generate_exploratory_analysis_ppt(df,target_var, output_file_name,
#                                          n_plots_per_slide = 2,
#                                          plot_theme = "ggthemes::theme_fivethirtyeight()",
#                                          group_names = group_names,
#                                          top_k_features = NULL,
#                                          max_levels_cat_var = 10)
#
#
## Test case 5
## All Categorical with one numeric
# df <- data.frame(replicate(6, sample(c(letters[1:8]),size = 1000, replace = T)))
# names(df) <- letters[1:6]
# df$num_var <- rnorm(1000,10,2)
# target_var = "f"
# max_levels_cat_var = 10
# plot_theme = "ggthemes::theme_fivethirtyeight()"
# group_names = c("a","b")
# n_plots_per_slide = 2
# output_file_name = "./test_results/res5.pptx"
#
# res <- generate_exploratory_analysis_ppt(df,target_var, output_file_name,
#                                          n_plots_per_slide = 2,
#                                          plot_theme = "ggthemes::theme_fivethirtyeight()",
#                                          group_names = group_names,
#                                          top_k_features = NULL,
#                                          max_levels_cat_var = 10)

# ## Test case 6
# ## All Categorical with more then max no of levels
# df <- data.frame(replicate(6, sample(c(letters[1:20]),size = 1000, replace = T)))
# names(df) <- letters[1:6]
# target_var = "f"
# max_levels_cat_var = 10
# plot_theme = "ggthemes::theme_fivethirtyeight()"
# group_names = NULL
# n_plots_per_slide = 2
# output_file_name = "res5.pptx"
#
# res <- generate_exploratory_analysis_ppt(df,target_var, output_file_name,
#                                          n_plots_per_slide = 2,
#                                          plot_theme = "ggthemes::theme_fivethirtyeight()",
#                                          group_names = group_names,
#                                          top_k_features = NULL,
#                                          max_levels_cat_var = 10)
#
#
#

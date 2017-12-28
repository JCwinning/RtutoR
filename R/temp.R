# # # lapply(categorical_features, function(var_name) barplot_func(
# # #   data = df,target_var = target_var, var_name = var_name, plot_theme = plot_theme, dim_name = dim_name))
# # #
# # # barplot_func(
# # #   data = df,target_var = "Survived", var_name = "Sex", plot_theme = plot_theme, dim_name = "Sex")
# #
# #
# df = read.csv("train.csv")
# df$Survived = as.factor(df$Survived)
# target_var = "Survived"
# max_levels_cat_var = 10
# plot_theme = "ggthemes::theme_fivethirtyeight()"
# group_names = c("Sex")
# output_file_name = "res.pptx"
# n_plots_per_slide = 2
# top_k_features = 4
# # #
# df = mtcars
# df$cyl = as.factor(df$cyl)
# target_var = "mpg"
# max_levels_cat_var = 10
# plot_theme = "ggthemes::theme_fivethirtyeight()"
# group_names = "cyl"
# output_file_name = "res.pptx"
# n_plots_per_slide = 2
# #
# res <- generate_exploratory_analysis_ppt(df,target_var, output_file_name,
#                                   n_plots_per_slide = 2,
#                                   plot_theme = "ggthemes::theme_fivethirtyeight()",
#                                   group_names = group_names,
#                                   top_k_features = top_k_features,
#                                   max_levels_cat_var = 10)

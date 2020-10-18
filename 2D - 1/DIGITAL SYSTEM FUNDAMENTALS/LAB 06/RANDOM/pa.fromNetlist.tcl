
# PlanAhead Launch Script for Post-Synthesis floorplanning, created by Project Navigator

create_project -name RANDOM -dir "C:/Users/HCARACH/Documents/2D/Digital/RANDOM/planAhead_run_4" -part xc6slx25lcsg324-1L
set_property design_mode GateLvl [get_property srcset [current_run -impl]]
set_property edif_top_file "C:/Users/HCARACH/Documents/2D/Digital/RANDOM/RANDOM.ngc" [ get_property srcset [ current_run ] ]
add_files -norecurse { {C:/Users/HCARACH/Documents/2D/Digital/RANDOM} }
set_property target_constrs_file "RANDOM.ucf" [current_fileset -constrset]
add_files [list {RANDOM.ucf}] -fileset [get_property constrset [current_run]]
link_design

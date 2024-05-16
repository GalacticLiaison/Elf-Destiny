### RANDOM
Bro! you can open the planner from an event like so!
		open_view_data = {
			view = activity_list_detail_host_window
			data = activity_type:activity_pilgrimage
			player = root 
		}

ANOTHER BIG BRAIN BACKDOOR!
- Adviser starts the activity, then invites you!

Hurdles To Overcome:
    - appears that adviser must be at least landed baron
        - could use Aeluran Matriarch as backup...
        - so we need to make it so aeluran adviser is vassal
            - programtically steal adviser a barony
                - even make an event about it
            - have periodic pop-up demanding that adviser be given land
                - could make it so her land is special and always given back to lord on death


- Could have a hidden event trigger an "open_view_data" with the new activity
- this window is a copy of the "activity_list_detail_host" window but detached from the selection list
- this window pretends to be an event, big button to start matchmaking activity
- possible issue: may still take us to the planning activity/province selction screen

I think investigating even widgets still may be the best approach


#### ACTIVITY LIST
window = {
	name = "activity_list"
	parentanchor = top|right
	layer = windows_layer
	movable = no

	datacontext = "[GetPlayer]"
	datacontext = "[GetVariableSystem]"

	using = Window_Size_MainTab

	state = {
		name = _show
		using = Animation_FadeIn_Quick
		using = Sound_WindowShow_Standard
		using = Window_Position_MainTab

		on_start = "[GetVariableSystem.Set( 'activity_list_tab', 'host' )]"
		on_start = "[GetVariableSystem.Set( 'activity_list_view', 'activities' )]"
	}


#### Generate Activity Selection Buttons
    vbox = {
        layoutpolicy_horizontal = expanding
        spacing = 4

        datamodel = "[ActivityListWindow.GetHostableActivities]"

        item = {
            activity_host_item_button = {
                layoutpolicy_horizontal = expanding

                blockoverride "size_illustration"
                {
                    parentanchor = right|vcenter
                    position = { -2 0 }
                    size = { 250 48 }


                }
            }
        }
    }


#### BUTTON TO PLAN THE ACTIVITY
    button_primary = {
        name = "confirm"
        size = { 380 50 }

        enabled = "[ActivityListDetailHostView.CanConfirm]"
        tooltip = "[ActivityListDetailHostView.GetConfirmTooltip]"
        onclick = "[ActivityListDetailHostView.Confirm]"

        text = "ACTIVITY_LIST_DETAIL_HOST_CONFIRM"

        default_clicksound = "event:/SFX/UI/Generic/sfx_ui_generic_confirm"
        clicksound = "[ActivityListDetailHostView.GetConfirmClickSound]"
    }


#### CONFIRM WINDOW
window = {
	name = "activity_list_detail_host"

#### BUTTON TO LAUNCH THE ACTIVITY
    button_primary = {
        name = "progress_planning"
        size = { 260 60 }

        onclick = "[ActivityPlanner.ProgressPlanningStage]"
        enabled = "[ActivityPlanner.CanProgressPlanningStage]"

        text = "ACTIVITY_PLANNER_START"

        tooltip = "[ActivityPlanner.GetCanProgressPlanningStageTooltip]"
    }

